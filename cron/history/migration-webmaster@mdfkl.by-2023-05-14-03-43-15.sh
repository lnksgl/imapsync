#!/bin/bash
mv ~/Documents/imapsync/cron/migration-webmaster@mdfkl.by-2023-05-14-03-43-15.sh ~/Documents/imapsync/cron/history/migration-webmaster@mdfkl.by-2023-05-14-03-43-15.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 webmaster@mdfkl.by --password1 noowzfzagibsumal --ssl1 --host2 webmail.mail01.hb.by --user2 webmaster@mdfkl.by --password2 PQOx2WPDnC --ssl2
