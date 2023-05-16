#!/bin/bash
mv ~/Documents/imapsync/cron/migration-ck@mdfkl.by-2023-05-14-03-29-01.sh ~/Documents/imapsync/cron/history/migration-ck@mdfkl.by-2023-05-14-03-29-01.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 ck@mdfkl.by --password1 qcdxfawsxmwduilu --ssl1 --host2 webmail.mail01.hb.by --user2 ck@mdfkl.by --password2 PQOx2WPDnC --ssl2
