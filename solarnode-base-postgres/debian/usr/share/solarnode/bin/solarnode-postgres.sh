#!/bin/sh -e

SOLARNODE_HOME="${SOLARNODE_HOME:-/var/lib/solarnode}"
SOLARNODE_SHARE="${SOLARNODE_SHARE:-/usr/share/solarnode}"
SOLARNODE_RAM_DIR="${SOLARNODE_RAM_DIR:-/run/solarnode}"

SOLARNODE_VAR_DIR="${SOLARNODE_VAR_DIR:-${SOLARNODE_HOME}/var}"
SOLARNODE_DB_DIR="${SOLARNODE_DB_DIR:-${SOLARNODE_RAM_DIR}/db}"

JAR_DIR="${JAR_DIR:-${SOLARNODE_SHARE}/app/core}"

SOLARNODE_OWNER="${SOLARNODE_OWNER:-solar}"

DB_USER="${DB_USER:-sa}"
DB_BAK_DIR="${DB_BAK_DIR:-${SOLARNODE_VAR_DIR}/db-bak}"

WORK_DIR="${WORK_DIR:-/var/tmp}"
WORK_DUMP_DIR="${WORK_RESTORE_DIR:-${WORK_DIR}/h2-dump}"
WORK_RESTORE_DIR="${WORK_RESTORE_DIR:-${WORK_DIR}/h2-restore}"

JAR_PATH="$(ls ${JAR_DIR}/h2-*.jar |head -1)"

h2Version () {
	local name="$(basename "${JAR_PATH%.*}")"
	echo "${name#h2-}"
}

H2_VERSION="$(h2Version)"

if ! command -v java 2>&1 >/dev/null; then
	echo "Java not available, cannot manage H2 database."
	exit 0
fi

# dump a single H2 backup .zip to a script archive
dump_backup () {
	local dir="$1"
	local backup_file_name="$2"
	local db_name="${backup_file_name%.zip}"

	# find runtime database for this backup, if not found extract it
	local db_file="$(find "${SOLARNODE_DB_DIR}" -type f -name "${db_name}*.db" -a ! -name '*trace*' 2>&1 |head -1)"

	if [ ! -f "$db_file" ]; then
		echo "Restoring H2 database backup ${dir}/${backup_file_name} to ${WORK_RESTORE_DIR}..."
		if [ ! -d "${WORK_RESTORE_DIR}" ]; then
			mkdir -p "${WORK_RESTORE_DIR}"
		fi
		if java -cp "${JAR_PATH}" org.h2.tools.Restore -quiet -file "${dir}/$backup_file_name" -dir "${WORK_RESTORE_DIR}"; then
			echo "Restored H2 database ${db_name} to ${WORK_RESTORE_DIR}."
		else
			echo "Error restoring H2 database backup ${dir}/${backup_file_name} to ${WORK_RESTORE_DIR}." 1>&2
			exit 1
		fi
		db_file="$(find "${WORK_RESTORE_DIR}" -type f -name "${db_name}*.db" -a ! -name '*trace*' 2>&1 |head -1)"
	fi

	local db_url="jdbc:h2:${db_file%%.*}"
	local dump_dest="${WORK_DUMP_DIR}/${db_name}.zip"

	echo "Dumping H2 version ${H2_VERSION} database ${db_url} to ${dump_dest}..."
	if [ -e "${dump_dest}" ]; then
		rm -f "${dump_dest}"
	elif [ ! -d "${WORK_DUMP_DIR}" ]; then
		mkdir -p "${WORK_DUMP_DIR}"
	fi
	if java -cp "${JAR_PATH}" org.h2.tools.Script -url "${db_url}" -user "${DB_USER}" -script "${dump_dest}" -options compression zip; then
		echo "Dumped H2 database ${db_name} to ${dump_dest}."
	else
		echo "Error dumping H2 database ${db_name} to ${dump_dest}." 1>&2
		exit 1
	fi

	# clean up temp restore db
	if [ -d "${WORK_RESTORE_DIR}" ]; then
		find "${WORK_RESTORE_DIR}" -type f -name "${db_name}.*.db" -delete 2>&1
	fi
}

dump () {
	if [ ! -d "${DB_BAK_DIR}" ]; then
		echo "Database backup directory not available, nothing to dump."
		exit 0
	fi

	# list backup archives (*.zip files)
	for f in $(ls "${DB_BAK_DIR}"); do
		case "$f" in
			*.zip) dump_backup "${DB_BAK_DIR}" "$f"
		esac
	done
}

restore_dump () {
	local dir="$1"
	local dump_name="$2"
	local dump_file="${dir}/${dump_name}"
	local db_name="${dump_name%.zip}"
	local db_url="jdbc:h2:${SOLARNODE_DB_DIR}/${db_name}"

	echo "Restoring H2 database dump ${dump_name} to H2 version ${H2_VERSION} ${db_url}..."

	find "${SOLARNODE_DB_DIR}" -name "${db_name}.*.db" -delete 2>/dev/null

	if java -cp "${JAR_PATH}" org.h2.tools.RunScript -url "${db_url}" -user "${DB_USER}" -script "${dump_file}" -options compression zip; then
		rm -f "${dump_file}"
		if id -u "${SOLARNODE_OWNER}" >/dev/null 2>/dev/null; then
			chown -R "${SOLARNODE_OWNER}:${SOLARNODE_OWNER}" "${SOLARNODE_DB_DIR}" 2>/dev/null || true
		fi
		echo "Restored H2 database ${db_url} from ${dump_file}."
	else
		echo "Error restoring H2 database ${db_url} from ${dump_file}." 1>&2
		exit 1
	fi
}

restore () {
	# support legacy dump archive location
	if [ -f '/tmp/solarnode.zip' ]; then
		restore_dump '/tmp' 'solarnode.zip'
	fi

	if [ -d "${WORK_DUMP_DIR}" ]; then
		# list dump archives (*.zip files)
		for f in $(ls "${WORK_DUMP_DIR}"); do
			case "$f" in
				*.zip) restore_dump "${WORK_DUMP_DIR}" "$f"
			esac
		done
	fi
}

# Parse command line parameters.
case $1 in
	dump) dump ;;
	restore) restore ;;
	*)
		# Print help
		echo "Usage: $0 {dump|restore}" 1>&2
		exit 1
		;;
esac

exit 0
