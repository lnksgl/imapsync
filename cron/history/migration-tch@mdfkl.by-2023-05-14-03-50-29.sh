#!/bin/bash
mv ~/Documents/imapsync/cron/migration-tch@mdfkl.by-2023-05-14-03-50-29.sh ~/Documents/imapsync/cron/history/migration-tch@mdfkl.by-2023-05-14-03-50-29.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 tch@mdfkl.by --password1 pseprsppleahnbsk --ssl1 --host2 webmail.mail01.hb.by --user2 tch@mdfkl.by --password2 PQOx2WPDnC --ssl2
