#!/bin/bash
mv ~/Documents/imapsync/cron/migration-vs@belasi.by-2023-05-14-15-15-10.sh ~/Documents/imapsync/cron/history/migration-vs@belasi.by-2023-05-14-15-15-10.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 vs@belasi.by --password1 ciflnxyucylfhkqp --ssl1 --host2 webmail.mail01.hb.by --user2 vs@belasi.by --password2 PQOx2WPDn1 --ssl2
