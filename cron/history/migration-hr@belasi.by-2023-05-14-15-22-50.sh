#!/bin/bash
mv ~/Documents/imapsync/cron/migration-hr@belasi.by-2023-05-14-15-22-50.sh ~/Documents/imapsync/cron/history/migration-hr@belasi.by-2023-05-14-15-22-50.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 hr@belasi.by --password1 vmrgwcnjvjfhhpov --ssl1 --host2 webmail.mail01.hb.by --user2 hr@belasi.by --password2 PQOx2WPDn1 --ssl2
