#!/bin/bash
mv ~/Documents/imapsync/cron/migration-ng@mdfkl.by-2023-05-14-03-42-04.sh ~/Documents/imapsync/cron/history/migration-ng@mdfkl.by-2023-05-14-03-42-04.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 ng@mdfkl.by --password1 gkodxxfkxnixiuyb --ssl1 --host2 webmail.mail01.hb.by --user2 ng@mdfkl.by --password2 PQOx2WPDnC --ssl2
