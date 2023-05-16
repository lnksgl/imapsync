#!/bin/bash
mv ~/Documents/imapsync/cron/migration-lt@belasi.by-2023-05-14-15-18-41.sh ~/Documents/imapsync/cron/history/migration-lt@belasi.by-2023-05-14-15-18-41.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 lt@belasi.by --password1 ywhnfkdlfsphcqia --ssl1 --host2 webmail.mail01.hb.by --user2 lt@belasi.by --password2 PQOx2WPDn1 --ssl2
