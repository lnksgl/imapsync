#!/bin/bash
mv ~/Documents/imapsync/cron/migration-alex@belasi.by-2023-05-14-17-40-26.sh ~/Documents/imapsync/cron/history/migration-alex@belasi.by-2023-05-14-17-40-26.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 alex@belasi.by --password1 tdcajepyixrsxlml --ssl1 --host2 webmail.mail01.hb.by --user2 alex@belasi.by --password2 PQOx2WPDn1 --ssl2
