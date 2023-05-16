#!/bin/bash
mv ~/Documents/imapsync/cron/migration-tdm@mdfkl.by-2023-05-14-03-40-20.sh ~/Documents/imapsync/cron/history/migration-tdm@mdfkl.by-2023-05-14-03-40-20.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 tdm@mdfkl.by --password1 lxpuywcqodkviuhh --ssl1 --host2 webmail.mail01.hb.by --user2 tdm@mdfkl.by --password2 PQOx2WPDnC --ssl2
