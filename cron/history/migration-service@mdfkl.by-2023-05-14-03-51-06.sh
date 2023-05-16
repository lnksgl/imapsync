#!/bin/bash
mv ~/Documents/imapsync/cron/migration-service@mdfkl.by-2023-05-14-03-51-06.sh ~/Documents/imapsync/cron/history/migration-service@mdfkl.by-2023-05-14-03-51-06.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 service@mdfkl.by --password1 zdxqmdmjngiprobk --ssl1 --host2 webmail.mail01.hb.by --user2 service@mdfkl.by --password2 PQOx2WPDnC --ssl2
