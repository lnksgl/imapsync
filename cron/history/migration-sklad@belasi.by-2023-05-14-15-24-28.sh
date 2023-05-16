#!/bin/bash
mv ~/Documents/imapsync/cron/migration-sklad@belasi.by-2023-05-14-15-24-28.sh ~/Documents/imapsync/cron/history/migration-sklad@belasi.by-2023-05-14-15-24-28.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 sklad@belasi.by --password1 qpekkjihbqoacxrl --ssl1 --host2 webmail.mail01.hb.by --user2 sklad@belasi.by --password2 PQOx2WPDn1 --ssl2
