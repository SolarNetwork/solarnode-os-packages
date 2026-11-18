#!/bin/sh
#
# sn-reset hook: set the historian up again after a reset. The
# solarnode-app-db-postgres hook drops the solarnode database (the history too),
# then restarts Postgres, which starts sn-historian-ensure. The hooks run in any
# order, so start it here too. "start", not "restart", so an ensure that is
# running is not killed (if the database is dropped under it, it fails with 75
# and the unit tries again); ensure restarts SolarNode if it started before the
# schemas were back. reset-failed first, so repeated resets can't hit the unit's
# start limit.

systemctl reset-failed sn-historian-ensure.service >/dev/null 2>&1 || true
systemctl --no-block start sn-historian-ensure.service >/dev/null 2>&1 || true
exit 0
