#!/bin/bash
mv ~/Documents/imapsync/cron/migration-gl.buh@belasi.by-2023-05-15-08-58-22.sh ~/Documents/imapsync/cron/history/migration-gl.buh@belasi.by-2023-05-15-08-58-22.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 gl.buh@belasi.by --password1 tkwgmqyrmpnqsjlo --ssl1 --host2 webmail.mail01.hb.by --user2 gl.buh@belasi.by --password2 PQOx2WPDn1 --ssl2
