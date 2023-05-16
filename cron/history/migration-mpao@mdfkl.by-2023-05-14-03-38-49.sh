#!/bin/bash
mv ~/Documents/imapsync/cron/migration-mpao@mdfkl.by-2023-05-14-03-38-49.sh ~/Documents/imapsync/cron/history/migration-mpao@mdfkl.by-2023-05-14-03-38-49.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 mpao@mdfkl.by --password1 uojklmapiefrzvfh --ssl1 --host2 webmail.mail01.hb.by --user2 mpao@mdfkl.by --password2 PQOx2WPDnC --ssl2
