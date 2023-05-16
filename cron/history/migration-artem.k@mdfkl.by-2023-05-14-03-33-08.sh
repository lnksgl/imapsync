#!/bin/bash
mv ~/Documents/imapsync/cron/migration-artem.k@mdfkl.by-2023-05-14-03-33-08.sh ~/Documents/imapsync/cron/history/migration-artem.k@mdfkl.by-2023-05-14-03-33-08.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 artem.k@mdfkl.by --password1 grkfudkzzqmqwdsf --ssl1 --host2 webmail.mail01.hb.by --user2 artem.k@mdfkl.by --password2 PQOx2WPDnC --ssl2
