#!/bin/bash
mv ~/Documents/imapsync/cron/migration-am@belasi.by-2023-05-14-17-58-54.sh ~/Documents/imapsync/cron/history/migration-am@belasi.by-2023-05-14-17-58-54.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 am@belasi.by --password1 aa6f05fdc1e8aebc --ssl1 --host2 webmail.mail01.hb.by --user2 am@belasi.by --password2 PQOx2WPDn1 --ssl2
