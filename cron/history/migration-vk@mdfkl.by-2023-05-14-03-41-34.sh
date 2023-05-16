#!/bin/bash
mv ~/Documents/imapsync/cron/migration-vk@mdfkl.by-2023-05-14-03-41-34.sh ~/Documents/imapsync/cron/history/migration-vk@mdfkl.by-2023-05-14-03-41-34.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 imap.yandex.ru --user1 vk@mdfkl.by --password1 eyoaminlpgpzsris --ssl1 --host2 webmail.mail01.hb.by --user2 vk@mdfkl.by --password2 PQOx2WPDnC --ssl2
