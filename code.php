<?php    
    if($_POST['submit']) {
        $mail1 = $_POST['mail1'];
        $pass1 = $_POST['pass1'];
        $msrv1 = $_POST['msrv1'];
        $mail2 = $_POST['mail2'];
        $pass2 = $_POST['pass2'];
        $msrv2 = $_POST['msrv2'];
        
        // save sh script
        $file = fopen("cron/migration-".$mail2."-".date('Y-m-d H:i:s').".sh", "w");
        
        fwrite($file, "#!/bin/bash\n");
        fwrite($file, "cd `dirname $0`\n");
        fwrite($file, "cron/./imapsync --host1 ".$msrv1
        	." --user1 ".$mail1
        	." --password1 ".$pass1
        	." --ssl1 --host2 ".$msrv2
        	." --user2 ".$mail2
        	." --password2 ".$pass2." --ssl2");
        	
        fwrite($file, "cd `dirname $0`\n");	
        fwrite($file, "name=$0\n");
        fwrite($file, "mv ~/Documents/imapsync/cron/${name} ~/Documents/imapsync/cron/history/${name}`\n");	
        
	fclose($file);
    }
    
    echo 'Заявка на миграцию '.$mail2.' принята. Ожидайте уведомление в Zammad.';
?>
