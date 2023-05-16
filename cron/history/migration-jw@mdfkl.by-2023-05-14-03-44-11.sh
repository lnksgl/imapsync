#!/bin/bash
mv ~/Documents/imapsync/cron/migration-jw@mdfkl.by-2023-05-14-03-44-11.sh ~/Documents/imapsync/cron/history/migration-jw@mdfkl.by-2023-05-14-03-44-11.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 jw@mdfkl.by --password1 cclzvfqktwhpixvk --ssl1 --host2 webmail.mail01.hb.by --user2 jw@mdfkl.by --password2 PQOx2WPDnC --ssl2
