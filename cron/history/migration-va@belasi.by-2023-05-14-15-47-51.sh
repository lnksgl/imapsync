#!/bin/bash
mv ~/Documents/imapsync/cron/migration-va@belasi.by-2023-05-14-15-47-51.sh ~/Documents/imapsync/cron/history/migration-va@belasi.by-2023-05-14-15-47-51.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 va@belasi.by --password1 yvdzrlucycijsrsb --ssl1 --host2 webmail.mail01.hb.by --user2 va@belasi.by --password2 PQOx2WPDn1 --ssl2
