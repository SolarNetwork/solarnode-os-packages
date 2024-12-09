#!/bin/sh

SOLARNODE_HOME="${SOLARNODE_HOME:-/var/lib/solarnode}"
SOLARNODE_SHARE="${SOLARNODE_SHARE:-/usr/share/solarnode}"
SOLARNODE_RAM_DIR="${SOLARNODE_RAM_DIR:-/run/solarnode}"

SOLARNODE_VAR_DIR="${SOLARNODE_VAR_DIR:-${SOLARNODE_HOME}/var}"
SOLARNODE_DB_DIR="${SOLARNODE_DB_DIR:-${SOLARNODE_RAM_DIR}/db}"

SOLARNODE_OWNER="${SOLARNODE_OWNER:-solar}"

DB_URL="${DB_URL:-jdbc:h2:${SOLARNODE_DB_DIR}/solarnode}"
DB_USER="${DB_USER:-sa}"
DB_BAK_DIR="${DB_BAK_DIR:-${SOLARNODE_VAR_DIR}/db-bak}"

WORK_DIR="${WORK_DIR:-/tmp}"

CLASSPATH="$(ls ${SOLARNODE_SHARE}/app/core/h2-*.jar)"
DUMP_DEST="${WORK_DIR}/solarnode.zip"

dump () {
	if [ ! -e "${DUMP_DEST}" ]; then
		# if runtime database does not exist, try to restore backup
		local runtime_db="$(ls -1 ${SOLARNODE_DB_DIR}/*.db >/dev/null 2>&1 |head -1)"
		local backup_db="${DB_BAK_DIR}/solarnode.zip"
		if [ -z "$runtime_db" -a -e "$backup_db" ]; then
			# restore backup database so we can dump it
			echo "Restoring backup H2 database ${SOLARNODE_DB_DIR} from $backup_db..."
			if java -cp "${CLASSPATH}" org.h2.tools.Restore -quiet -file "$backup_db" -dir "${SOLARNODE_DB_DIR}"; then
				echo "Restored backup H2 database ${SOLARNODE_DB_DIR} from $backup_db."
			else
				echo "Error restoring backup H2 database ${SOLARNODE_DB_DIR} from ${backup_db}." 1>&2
				exit 1
			fi
		fi

		echo "Dumping H2 database ${DB_URL} to ${DUMP_DEST}..."
		if [ -e "${DUMP_DEST}" ]; then
			rm -f "${DUMP_DEST}"
		fi
		if java -cp "${CLASSPATH}" org.h2.tools.Script -url "${DB_URL}" -user "${DB_USER}" -script "${DUMP_DEST}" -options compression zip; then
			echo "Dumped H2 database ${DB_URL} to ${DUMP_DEST}."
		else
			echo "Error dumping H2 database ${DB_URL} to ${DUMP_DEST}." 1>&2
			exit 1
		fi
	fi
}

restore () {
	if [ ! -e "${DUMP_DEST}" ]; then
		echo "H2 database dump not available at ${DUMP_DEST}"
	else
		if [ -d "${SOLARNODE_DB_DIR}" ]; then
			echo "Deleting runtime database ${SOLARNODE_DB_DIR}."
			rm -rf "${SOLARNODE_DB_DIR}"
		fi
		mkdir -p "${SOLARNODE_DB_DIR}"
		echo "Restoring H2 database ${DB_URL} from ${DUMP_DEST}..."
		if java -cp "${CLASSPATH}" org.h2.tools.RunScript -url "${DB_URL}" -user "${DB_USER}" -script "${DUMP_DEST}" -options compression zip; then
			rm -f "${DUMP_DEST}"
			if id -u "${SOLARNODE_OWNER}" >/dev/null 2>/dev/null; then
				chown -R "${SOLARNODE_OWNER}:${SOLARNODE_OWNER}" "${SOLARNODE_DB_DIR}"
			fi
			echo "Restored H2 database ${DB_URL} from ${DUMP_DEST}."
		else
			echo "Error restoring H2 database ${DB_URL} from ${DUMP_DEST}." 1>&2
			exit 1
		fi
	fi
}

if ! command -v java 2>&1 >/dev/null; then
	echo "Java not available, cannot manage H2 database."
	exit 0
fi

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
