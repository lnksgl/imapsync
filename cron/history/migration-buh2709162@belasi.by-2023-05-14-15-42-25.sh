#!/bin/bash
mv ~/Documents/imapsync/cron/migration-buh2709162@belasi.by-2023-05-14-15-42-25.sh ~/Documents/imapsync/cron/history/migration-buh2709162@belasi.by-2023-05-14-15-42-25.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 buh2709162@belasi.by --password1 kctxuejeuxgjnzxs --ssl1 --host2 webmail.mail01.hb.by --user2 buh2709162@belasi.by --password2 PQOx2WPDn1 --ssl2
