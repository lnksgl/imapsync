#!/bin/bash
mv ~/Documents/imapsync/cron/migration-as@mdfkl.by-2023-05-14-03-49-34.sh ~/Documents/imapsync/cron/history/migration-as@mdfkl.by-2023-05-14-03-49-34.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 as@mdfkl.by --password1 ikopdkxyfnevjuez --ssl1 --host2 webmail.mail01.hb.by --user2 as@mdfkl.by --password2 PQOx2WPDnC --ssl2
