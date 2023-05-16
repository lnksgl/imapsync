#!/bin/bash
mv ~/Documents/imapsync/cron/migration-ab@mdfkl.by-2023-05-14-03-45-16.sh ~/Documents/imapsync/cron/history/migration-ab@mdfkl.by-2023-05-14-03-45-16.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 ab@mdfkl.by --password1 dvgbmatcihatjuwy --ssl1 --host2 webmail.mail01.hb.by --user2 ab@mdfkl.by --password2 PQOx2WPDnC --ssl2
