#!/bin/bash
mv ~/Documents/imapsync/cron/migration-yurkov@belasi.by-2023-05-14-15-48-18.sh ~/Documents/imapsync/cron/history/migration-yurkov@belasi.by-2023-05-14-15-48-18.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 yurkov@belasi.by --password1 qggdofvftrjvbzjd --ssl1 --host2 webmail.mail01.hb.by --user2 yurkov@belasi.by --password2 PQOx2WPDn1 --ssl2
