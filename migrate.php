<?php  

    if($_POST['submit']) {
        $mail1 = $_POST['mail1'];
        $pass1 = $_POST['pass1'];
        $msrv1 = $_POST['msrv1'];
        $mail2 = $_POST['mail2'];
        $pass2 = $_POST['pass2'];
        $msrv2 = $_POST['msrv2'];
		
        // save sh script
        $name = date('Y_m_d_H_i_s')."_".$mail1."@".$mail2;
        $file = fopen("/var/www/html/cron/".$name.".sh", "w");
		
        fwrite($file, "#!/bin/bash\n");
        fwrite($file, "mv /var/www/html/cron/".$name.".sh /var/www/html/cron/history/".$name.".sh\n");
        fwrite($file, "cd `dirname $0`\n");
		fwrite($file, "touch /var/www/html/cron/LOG_imapsync/".$name.".txt\n");

        fwrite($file, "/var/www/html/cron/imapsync/./imapsync --host1 ".$msrv1
        ." --user1 ".$mail1
        ." --password1 ".$pass1
        ." --ssl1 --host2 ".$msrv2
        ." --user2 ".$mail2
        ." --password2 ".$pass2." --ssl2 | tee /var/www/html/cron/LOG_imapsync/".$name.".txt\n");	
        
	    fclose($file);
    }
    
    echo 'Заявка на миграцию '.$mail2.' принята. Ожидайте уведомление в Zammad.';

    $command = "python3 /var/www/html/migrate.py $mail1 $mail2 $name &";
    exec($command);
?>

