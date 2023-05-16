#!/bin/bash
mv ~/Documents/imapsync/cron/migration-henadz.klimovich@mdfkl.by-2023-05-14-02-51-38.sh ~/Documents/imapsync/cron/history/migration-henadz.klimovich@mdfkl.by-2023-05-14-02-51-38.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 henadz.klimovich@mdfkl.by --password1 wxhtaicfjadbauyb --ssl1 --host2 webmail.mail01.hb.by --user2 henadz.klimovich@mdfkl.by --password2 0pC5A68oL --ssl2
