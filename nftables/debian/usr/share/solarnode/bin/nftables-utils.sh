#!/usr/bin/env sh
#
# Debian helper script for managing the nftables firewall internally.

CMD="/usr/sbin/nft"
NFT_FAMILY="ip"
NFT_TABLE="filter"
NFT_NAT_TABLE="nat"

do_help () {
	h=$(cat <<-EOF
		Usage: $0 <action> [<args>]

		<action> is one of: reset

		reset     			Reset the managed chains.
		EOF
		)
	echo "$h" 1>&2
}

do_reset () {
	$CMD delete table $NFT_FAMILY $NFT_TABLE 2>/dev/null || true
	$CMD delete table $NFT_FAMILY $NFT_NAT_TABLE 2>/dev/null || true
}

if [ -z "$1" ]; then
	echo "Must provide action (reset); use -? for help." 1>&2
	exit 1
fi

ACTION="$1"

shift 1

case $ACTION in
	reset)
		do_reset "$1"
		;;

	*)
		echo "Action '${ACTION}' not supported." 1>&2
		echo 1>&2
		do_help
		exit 1
		;;
esac
