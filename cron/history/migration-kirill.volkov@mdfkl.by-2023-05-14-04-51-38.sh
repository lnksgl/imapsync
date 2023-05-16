#!/bin/bash
mv ~/Documents/imapsync/cron/migration-kirill.volkov@mdfkl.by-2023-05-14-04-51-38.sh ~/Documents/imapsync/cron/history/migration-kirill.volkov@mdfkl.by-2023-05-14-04-51-38.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 kirill.volkov@mdfkl.by --password1 sudmtwnjqglagubq --ssl1 --host2 webmail.mail01.hb.by --user2 kirill.volkov@mdfkl.by --password2 PQOx2WPDnC --ssl2
