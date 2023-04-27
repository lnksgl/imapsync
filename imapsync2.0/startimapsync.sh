#!/bin/bash
#переход в каталог откуда был запущен данный скрипт
cd `dirname $0`
#запуск imapsync с нужными параметрами
 /home/user/script/imapsync/./imapsync --host1 $1 --user1 $2 --password1 $3 --ssl1 --host2 $4 --user2 $5 --password2 $6 --ssl2
#сервер начального почтового ящика, логин, пароль
  
	   
