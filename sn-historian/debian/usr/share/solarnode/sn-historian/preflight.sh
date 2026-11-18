# shellcheck shell=sh
#
# The preflight command.

# pkg_installed PKG: true if PKG is fully installed
pkg_installed () {
	# shellcheck disable=SC2016
	dpkg-query -W -f='${Status}' "$1" 2>/dev/null | grep -q 'install ok installed'
}

# Warn about each missing prerequisite. Warnings only: always exits 0.
preflight () {
	n=0
	if pkg_installed solarnode-app-db-h2 || pkg_installed solarnode-app-db-h2-nonvolatile; then
		warn "SolarNode uses the H2 database. Make a Backup in SolarNode, install solarnode-app-db-postgres, then Restore the Backup."
		n=$((n + 1))
	elif ! pkg_installed solarnode-app-db-postgres; then
		warn "solarnode-app-db-postgres is not installed."
		n=$((n + 1))
	fi
	if ! grep -Eqrs 'apt\.postgresql\.org' /etc/apt/sources.list /etc/apt/sources.list.d/; then
		warn "The PGDG apt repository is not set up. Install sn-pgdg-repo and run apt update."
		n=$((n + 1))
	fi
	if pg_ready; then
		if ! has_icu; then
			warn "Postgres has no ICU support, which the historian SQL needs."
			n=$((n + 1))
		fi
	# Postgres is not running: check its binary instead
	elif [ -x /usr/lib/postgresql/17/bin/postgres ]; then
		if ! ldd /usr/lib/postgresql/17/bin/postgres 2>/dev/null | grep -q libicu; then
			warn "Postgres 17 is not linked with ICU, which the historian SQL needs."
			n=$((n + 1))
		fi
	else
		warn "Postgres 17 is not installed."
		n=$((n + 1))
	fi
	log "preflight: $n warning(s)"
}
