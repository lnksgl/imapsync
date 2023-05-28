<?php    
    if($_POST['submit']) {
        $mail1 = $_POST['mail1'];
        $pass1 = $_POST['pass1'];
        $msrv1 = $_POST['msrv1'];
        $mail2 = $_POST['mail2'];
        $pass2 = $_POST['pass2'];
        $msrv2 = $_POST['msrv2'];
        $day = $_POST['day'];
        $month = $_POST['month'];
        $year = $_POST['year'];
        
        // save sh script
        $name = "migration-".$mail2."-".date('Y-m-d-H-i-s').".sh";
        $file = fopen("cron/".$name, "w");
        
        fwrite($file, "#!/bin/bash\n");
        fwrite($file, "mv /var/www/html/cron/".$name." /var/www/html/cron/history/".$name."\n");
        fwrite($file, "cd `dirname $0`\n");

        if (!empty($s)) {
        	fwrite($file, "/var/www/html/cron/imapsync/./imapsync --host1 ".$msrv1
			." --user1 ".$mail1
			." --password1 ".$pass1
			." --ssl1 --host2 ".$msrv2
			." --user2 ".$mail2
			." --password2 ".$pass2." --ssl2 --justfoldersizes --search \"SENTBEFORE ".$day."-".$month."-".$year."\"\n");	
        } else {
        	fwrite($file, "/var/www/html/cron/imapsync/./imapsync --host1 ".$msrv1
			." --user1 ".$mail1
			." --password1 ".$pass1
			." --ssl1 --host2 ".$msrv2
			." --user2 ".$mail2
			." --password2 ".$pass2." --ssl2 --justfoldersizes \n");	
        }

	    fclose($file);
    }
    
    echo 'Размер для требуемого ящика доступен по ссылке - http://192.168.10.46/cron/LOG_imapsync/';
?>
