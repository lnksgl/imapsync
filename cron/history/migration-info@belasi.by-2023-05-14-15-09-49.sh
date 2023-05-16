#!/bin/bash
mv ~/Documents/imapsync/cron/migration-info@belasi.by-2023-05-14-15-09-49.sh ~/Documents/imapsync/cron/history/migration-info@belasi.by-2023-05-14-15-09-49.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 info@belasi.by --password1 cprbhutaktmcxfbk --ssl1 --host2 webmail.mail01.hb.by --user2 info@belasi.by --password2 PQOx2WPDn1 --ssl2
