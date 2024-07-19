#!/bin/sh

# Utilities for managing the SolarNode server

SOLARNODE_HOME="${SOLARNODE_HOME:-/var/lib/solarnode}"
SOLARNODE_SHARE="${SOLARNODE_SHARE:-/usr/share/solarnode}"
SOLARNODE_RAM_DIR="${SOLARNODE_RAM_DIR:-/run/solarnode}"
SOLARNODE_CONF_DIR="${SOLARNODE_CONF_DIR:-/etc/solarnode}"

SOLARNODE_VAR_DIR="${SOLARNODE_VAR_DIR:-${SOLARNODE_HOME}/var}"

SOLARNODE_TMP_DIR="${SOLARNODE_TMP_DIR:-${SOLARNODE_RAM_DIR}/tmp}"
SOLARNODE_LOG_DIR="${SOLARNODE_LOG_DIR:-${SOLARNODE_RAM_DIR}/log}"
SOLARNODE_DB_DIR="${SOLARNODE_DB_DIR:-${SOLARNODE_RAM_DIR}/db}"
SOLARNODE_LOCK_DIR="${SOLARNODE_LOCK_DIR:-/var/lock}"

WEBAPPS_DIR="${SOLARNODE_VAR_DIR}/webapps"
WORK_DIR="${SOLARNODE_VAR_DIR}/work"
DB_BAK_DIR="${SOLARNODE_VAR_DIR}/db-bak"
EQUINOX_CONF="${SOLARNODE_RAM_DIR}"
SED_ESCAPE='s#[]\#$*.^[]#\\&#g'

##############################################################################
# equinox_reset_config
#
# Clear the Equinox runtime config.ini
#
equinox_reset_config () {
	if [ -e ${EQUINOX_CONF}/config.ini ]; then
		rm ${EQUINOX_CONF}/config.ini
	fi
}

##############################################################################
# equinox_config_add_bundles conf add
#
# Add bundle start information to the `osgi.bundles` property in the Equinox
# config.ini file. Pass the path to the file as the first argument, and the
# literal text to add as the second argument. The text will only be added
# if it does not already exist.
#
equinox_config_add_bundles () {
	local conf_ini="$1"
	local ini_add="$2"
	local sed_esc=""
	if [ -e "$conf_ini" ]; then
		if ! grep -qF "$ini_add" "$conf_ini" >/dev/null 2>&1; then
			sed_esc=$(echo "$ini_add" |sed -e "$SED_ESCAPE")
			echo "Adding $ini_add to osgi.bundles in $conf_ini"
			sed -i -e '/osgi.bundles=/ s#$#'"$sed_esc"'#' "$conf_ini"
		fi
	fi
}

##############################################################################
# equinox_config_remove_bundles conf remove
#
# Remove bundle start information to the `osgi.bundles` property in the
# Equinox config.ini file. Pass the path to the file as the first argument,
# and the literal text to remove as the second argument. No change will be
# made if the text is not found in the configuration file.
#
equinox_config_remove_bundles () {
	local conf_ini="$1"
	local ini_rm="$2"
	local sed_esc=""
	if grep -qF "$ini_rm" "$conf_ini" >/dev/null 2>&1; then
		sed_esc=$(echo "$ini_rm" |sed -e "$SED_ESCAPE")
		echo "Removing $ini_rm from osgi.bundles in $conf_ini"
		sed -i -e "s#$sed_esc##g" "$conf_ini"
	fi
}

# function to create directory if doesn't already exist
setup_dir () {
	if [ ! -e $1 ]; then
		if [ -z "${RUNAS}" ]; then
			mkdir -p $1
		else
			su - $RUNAS -c "mkdir -p $1"
		fi
	fi
}

#function to copy the conf/config.ini into EQUINOX_CONF
setup_ini () {
	if [ ! -e "${EQUINOX_CONF}/config.ini" -a -e "${SOLARNODE_HOME}/conf/config.ini" ]; then
		if [ -z "${RUNAS}" ]; then
			cp ${SOLARNODE_HOME}/conf/config.ini ${EQUINOX_CONF}
		else
			su - $RUNAS -c "cp ${SOLARNODE_HOME}/conf/config.ini ${EQUINOX_CONF}"
		fi
		if [ -d ${SOLARNODE_SHARE}/conf/config.ini.d ]; then
			for f in ${SOLARNODE_SHARE}/conf/config.ini.d/*.bundles; do
				# double-check in case there were NO .bundles files
				if [ -e "$f" ]; then
					b=$(cat "$f")
					equinox_config_add_bundles "${EQUINOX_CONF}/config.ini" "$b"
				fi
			done
		fi
	fi
}

restore_h2_backup () {
	local src="$1"
	local dest="$2"
	local classpath="$(ls /var/lib/solarnode/app/core/h2-*.jar)"
	if [ -n "$classpath" ]; then
		echo -n "restoring database $src... "
		java -cp "$classpath" org.h2.tools.Restore -quiet -file "${DB_BAK_DIR}/$src" -dir "$dest"
		echo "restored."
	fi
}

setup_restore_db () {
	if [ ! -e ${SOLARNODE_DB_DIR} -a -e ${DB_BAK_DIR} ]; then
		setup_dir ${SOLARNODE_DB_DIR}
		for f in $(ls "${DB_BAK_DIR}"); do
			case "$f" in
				*.zip) restore_h2_backup "$f" "${SOLARNODE_DB_DIR}" ;;
				*)
					if [ -d "${DB_BAK_DIR}/$f" ]; then
						echo -n "restoring database $f... "
						cp -a "${DB_BAK_DIR}/$f" "${SOLARNODE_DB_DIR}"
						echo "restored."
					fi
					;;
			esac
		done
	fi
}

clean_dir () {
	find "$1" -type f -writable -delete
}

do_setup () {
	# Verify ram dir exists; create if necessary
	setup_dir "${SOLARNODE_RAM_DIR}"

	# Verify tmp dir exists; create if necessary
	setup_dir "${SOLARNODE_TMP_DIR}"

	# Verify log dir exists; create if necessary
	setup_dir "${SOLARNODE_LOG_DIR}"

	# Verify var dir exists; create if necessary
	setup_dir "${SOLARNODE_VAR_DIR}"

	# Verify webapps dir exists; create if necessary
	setup_dir "${WEBAPPS_DIR}"

	# Clean out lock dir
	clean_dir "${SOLARNODE_LOCK_DIR}"

	# Copy config.ini into Equinox configuration dir
	setup_ini

	# Check to restore backup database
	setup_restore_db
}

sync_h2 () {
	local src="$1"
	local dest="$2"
	local classpath="$(ls /var/lib/solarnode/app/core/h2-*.jar)"
	if [ -n "$classpath" ]; then
		setup_dir "${WORK_DIR}"
		echo -n "syncing database to $dest.zip... "
		if java -cp "$classpath" org.h2.tools.Backup -quiet -dir "$src" -db "$dest" -file "${WORK_DIR}/$dest.zip"; then
			if [ -s "${WORK_DIR}/$dest.zip" ]; then
				mv -f "${WORK_DIR}/$dest.zip" "${DB_BAK_DIR}/$dest.zip"
			fi
			echo "done."
		else
			echo "ERROR!"
		fi
	fi
}

do_sync () {
	# Backup DB to persistent storage if daemon stopped
	if [ -e ${SOLARNODE_DB_DIR} ]; then
		setup_dir ${DB_BAK_DIR}
		local h2=""
		for f in $(ls "${SOLARNODE_DB_DIR}"); do
			if [ -d "${SOLARNODE_DB_DIR}/$f" ]; then
				echo -n "syncing database to backup dir... "
				rsync -am --delete "${SOLARNODE_DB_DIR}/$f" "${DB_BAK_DIR}" 1>/dev/null 2>&1
				echo "done."
			else
				case "$f" in
					*.trace.db) ;;
					*.db)
						sync_h2 "${SOLARNODE_DB_DIR}" "${f%%.*}"
						;;
				esac
			fi
		done
		echo "done."
	fi
}

# add/update the auto-settings.csv database from another CSV file
auto_settings_add () {
	local csv="$1"
	local auto="${SOLARNODE_CONF_DIR}/auto-settings.csv"
	if [ -e "$csv" ];then
		if [ ! -e "$auto" ]; then
			# file doesn't exist, so just copy this settings file directly
			echo "Copying auto settings $auto -> $csv"
			cp "$csv" "$auto"
		else
			# file exists, so either append or replace lines
			while IFS= read -r line; do
				local key="${line%,*,*,*}"
				if [ -n "$key" -a "$key" != 'key,type' ]; then
					if grep -q "^$key," "$auto"; then
						local currline="$(grep "^$key," "$auto")"
						if [ "$currline" != "$line" ]; then
							echo "Updating auto setting $key in $auto"
							sed -i -e "/^$key,/c $line" "$auto"
						fi
					else
						echo "Adding auto setting $key to $auto"
						echo "$line" >> "$auto"
					fi
				fi
			done < "$csv"
		fi
	fi
}

# remove settings from the auto-settings.csv database found in another CSV file
auto_settings_remove () {
	local csv="$1"
	local auto="${SOLARNODE_CONF_DIR}/auto-settings.csv"
	if [ -e "$csv" -a -e "$auto" ];then
		while IFS= read -r line; do
			local key="${line%,*,*,*}"
			if [ "$key" != 'key,type' ]; then
				if grep -q "^$key," "$auto"; then
					echo "Removing auto setting $key from $auto"
					sed -i -e "/^$key,/d" "$auto"
				fi
			fi
		done < "$csv"
	fi
}

# Parse command line parameters.
case $1 in
	auto-settings-add)
		auto_settings_add "$2"
		;;

	auto-settings-remove)
		auto_settings_remove "$2"
		;;

	equinox-bundles-add)
		if [ -z "$2" ]; then
			echo "Must provide bundle start configuration to add." 1>&2
		else
			equinox_config_add_bundles "${SOLARNODE_HOME}/conf/config.ini" "$2"
		fi
		;;

	equinox-bundles-remove)
		if [ -z "$2" ]; then
			echo "Must provide bundle start configuration to remove." 1>&2
		else
			equinox_config_remove_bundles "${SOLARNODE_HOME}/conf/config.ini" "$2"
		fi
		;;

	noop) ;;

	reset)
		equinox_reset_config
		;;

	setup)
		do_setup
		;;

	start)
		do_setup
		;;

	stop)
		exit_status=`systemctl show solarnode.service --no-pager |grep ExecMainStatus |cut -d= -f2`
		if [ $exit_status -eq 0 -o $exit_status -eq 143 ]; then
			do_sync
		else
			echo "Database NOT synced to backup dir after error exit status ($exit_status)."
		fi
		;;



	*)
		# Print help
		echo "Usage: $0 {auto-settings-add|auto-settings-remove|equinox-bundles-add|equinox-bundles-remove|noop|reset|setup|start|stop}" 1>&2
		exit 1
		;;
esac

exit 0
