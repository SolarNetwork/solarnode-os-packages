#!/bin/sh
#
# Set the SolarNode security token that Grafana's SolarNode data sources use, and check that it
# works. Run as root, usually as sn-historian-grafana-token.
#
# The secret is read from STDIN: it is prompted for (without echo) when STDIN is a terminal, so
# the following prompts for it:
#
#     sn-historian-grafana-token set TOKEN_ID
#
# and the following does not:
#
#     printf %s "$SECRET" | sn-historian-grafana-token set TOKEN_ID

DIR=/etc/sn-historian-grafana
VENDOR_CONF=/etc/default/sn-historian-grafana
DS_UID=solarnode-filtered

do_help () {
	cat 1>&2 <<EOF
Usage: sn-historian-grafana-token <action> [args]

Actions:

  set <token id>  Save the token for Grafana, restart Grafana and check the token. The secret is
                  read from STDIN, with a prompt if it is a terminal.
  check           Check that Grafana can read the SolarNode history with the token.
  status          Show the token ID and whether Grafana is running, then check the token.
  clear           Remove the token from Grafana (for example after deleting it in SolarNode).

Create the token in SolarNode, under Settings > Security Tokens.
EOF
}

die () {
	echo "$*" 1>&2
	exit 1
}

# valid_token VALUE: true if VALUE is a non-empty string of SolarNode token characters
valid_token () {
	case "$1" in
		''|*[!0-9A-Za-z._-]*) return 1 ;;
	esac
}

# put FILE VALUE: write VALUE (no newline) to FILE, root:grafana 640, in one step
put () {
	install -o root -g grafana -m 640 /dev/null "$1.tmp" || exit 1
	printf %s "$2" >"$1.tmp" || exit 1
	mv -f "$1.tmp" "$1" || exit 1
}

restart_grafana () {
	echo 'Restarting Grafana.'
	# a fresh start, even after several quick restarts hit the start limit
	systemctl reset-failed grafana-server.service 2>/dev/null || true
	systemctl restart grafana-server.service \
		|| die 'Grafana failed to start; see: journalctl -u grafana-server'
}

# conf_get NAME DEFAULT: a GF_ setting from the vendor configuration, or DEFAULT
conf_get () {
	v="$(sed -n "s/^$1=//p" "$VENDOR_CONF" 2>/dev/null | tail -n 1 | tr -d "\"'")"
	echo "${v:-$2}"
}

do_check () {
	[ -s "$DIR/token" ] || die 'No token is set: run sn-historian-grafana-token set TOKEN_ID'
	[ -r "$DIR/admin-password" ] || die "$DIR/admin-password not found; is Grafana set up?"
	addr="$(conf_get GF_SERVER_HTTP_ADDR 127.0.0.1)"
	case "$addr" in
		0.0.0.0|::|'') addr=127.0.0.1 ;;
	esac
	url="http://$addr:$(conf_get GF_SERVER_HTTP_PORT 3000)"

	# wait for Grafana, which takes a while to start
	i=0
	until [ "$(curl -s -o /dev/null -w '%{http_code}' "$url/api/health")" = 200 ]; do
		i=$((i + 1))
		[ $i -lt 60 ] || die "Grafana is not answering at $url; see: journalctl -u grafana-server"
		sleep 1
	done

	# Grafana signs this request with the token and sends it to the node's SolarQuery API; the
	# admin password goes to curl on STDIN, not the command line
	out="$(printf 'user = "admin:%s"\n' "$(cat "$DIR/admin-password")" \
		| curl -s -K - -w '\n%{http_code}' "$url/api/datasources/uid/$DS_UID/resources/nodes")"
	code="$(echo "$out" | tail -n 1)"
	body="$(echo "$out" | sed '$d')"
	case "$code" in
		200)
			case "$body" in
				\[[0-9]*)
					echo "OK: Grafana can read the SolarNode history (node $(echo "$body" | tr -d '[]'))."
					return 0
					;;
			esac
			;;
		401)
			die "Could not check: Grafana did not accept the password in $DIR/admin-password."
			;;
	esac
	echo "FAILED: Grafana could not read the SolarNode history with the token (HTTP $code):" 1>&2
	echo "$body" 1>&2
	echo 'Check the token ID and secret in SolarNode (Settings > Security Tokens).' 1>&2
	exit 1
}

do_set () {
	id="$1"
	valid_token "$id" || die "Invalid token ID '$id'."
	if [ -t 0 ]; then
		printf 'Secret: ' 1>&2
		trap 'stty echo; exit 1' INT TERM
		stty -echo
		read -r secret
		stty echo
		printf '\n' 1>&2
	else
		read -r secret
	fi
	valid_token "$secret" || die 'Invalid token secret.'
	[ -d "$DIR" ] || die "$DIR not found; is Grafana set up?"
	put "$DIR/token" "$id"
	put "$DIR/secret" "$secret"
	echo "Token $id saved."
	restart_grafana
	do_check
}

do_status () {
	if [ -s "$DIR/token" ]; then
		echo "Token: $(cat "$DIR/token")"
	else
		echo 'Token: not set'
	fi
	echo "Grafana: $(systemctl is-active grafana-server.service)"
	if [ -s "$DIR/token" ]; then
		do_check
	fi
}

do_clear () {
	[ -d "$DIR" ] || exit 0
	put "$DIR/token" ''
	put "$DIR/secret" ''
	echo 'Token removed.'
	restart_grafana
}

if [ "$(id -u)" -ne 0 ]; then
	die 'Run this as root (sudo).'
fi

ACTION="$1"
[ $# -gt 0 ] && shift 1
case "$ACTION" in
	set)
		[ $# -eq 1 ] || { do_help; exit 1; }
		do_set "$1"
		;;
	check) do_check ;;
	status) do_status ;;
	clear) do_clear ;;
	*)
		do_help
		exit 1
		;;
esac
