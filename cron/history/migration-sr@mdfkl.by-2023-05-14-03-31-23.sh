#!/bin/bash
mv ~/Documents/imapsync/cron/migration-sr@mdfkl.by-2023-05-14-03-31-23.sh ~/Documents/imapsync/cron/history/migration-sr@mdfkl.by-2023-05-14-03-31-23.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 sr@mdfkl.by --password1 uelitqbyisukywjl --ssl1 --host2 webmail.mail01.hb.by --user2 sr@mdfkl.by --password2 PQOx2WPDnC --ssl2
