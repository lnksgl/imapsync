#!/bin/bash
mv ~/Documents/imapsync/cron/migration-1-2023-05-16-13-00-52.sh ~/Documents/imapsync/cron/history/migration-1-2023-05-16-13-00-52.sh
cd `dirname $0`
~/Documents/imapsync/cron/imapsync/./imapsync --host1 11 --user1 1 --password1 1 --ssl1 --host2 1 --user2 1 --password2 1 --ssl2 --justfoldersizes
