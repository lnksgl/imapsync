#!/bin/bash
mv ~/Documents/imapsync/cron/migration-gb@mdfkl.by-2023-05-14-03-39-26.sh ~/Documents/imapsync/cron/history/migration-gb@mdfkl.by-2023-05-14-03-39-26.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 gb@mdfkl.by --password1 jfeeqnlpczjljnqy --ssl1 --host2 webmail.mail01.hb.by --user2 gb@mdfkl.by --password2 PQOx2WPDnC --ssl2
