#!/bin/bash
mv ~/Documents/imapsync/cron/migration-li@mdfkl.by-2023-05-14-03-48-39.sh ~/Documents/imapsync/cron/history/migration-li@mdfkl.by-2023-05-14-03-48-39.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 li@mdfkl.by --password1 anpkkbhjlllrqxeb --ssl1 --host2 webmail.mail01.hb.by --user2 li@mdfkl.by --password2 PQOx2WPDnC --ssl2
