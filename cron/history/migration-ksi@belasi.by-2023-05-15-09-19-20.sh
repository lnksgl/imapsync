#!/bin/bash
mv ~/Documents/imapsync/cron/migration-ksi@belasi.by-2023-05-15-09-19-20.sh ~/Documents/imapsync/cron/history/migration-ksi@belasi.by-2023-05-15-09-19-20.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 ksi@belasi.by --password1 wlmvupetjifyqbvq --ssl1 --host2 webmail.mail01.hb.by --user2 ksi@belasi.by --password2 PQOx2WPDn1 --ssl2
