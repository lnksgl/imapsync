#!/bin/bash
mv ~/Documents/imapsync/cron/migration-am@belasi.by-2023-05-14-17-54-21.sh ~/Documents/imapsync/cron/history/migration-am@belasi.by-2023-05-14-17-54-21.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 am@belasi.by --password1 6ef850bf07a122a7aa6f05fdc1e8aebc --ssl1 --host2 webmail.mail01.hb.by --user2 am@belasi.by --password2 375296200586 --ssl2
