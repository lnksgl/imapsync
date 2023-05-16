#!/bin/bash
mv ~/Documents/imapsync/cron/migration-fl@belasi.by-2023-05-14-15-45-07.sh ~/Documents/imapsync/cron/history/migration-fl@belasi.by-2023-05-14-15-45-07.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 fl@belasi.by --password1 bcfejotpphqnqiff --ssl1 --host2 webmail.mail01.hb.by --user2 fl@belasi.by --password2 PQOx2WPDn1 --ssl2
