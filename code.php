<?php
    require './PHPMailer/src/Exception.php';
    require './PHPMailer/src/PHPMailer.php';
    require './PHPMailer/src/SMTP.php';
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;    
    
    if($_POST['submit']) {
        $mail1 = $_POST['mail1'];
        $pass1 = $_POST['pass1'];
        $msrv1 = $_POST['msrv1'];
        $mail2 = $_POST['mail2'];
        $pass2 = $_POST['pass2'];
        $msrv2 = $_POST['msrv2'];
        
        // execute sh script
        $open = shell_exec('./startimapsync.sh "'.$msrv1.'" "'.$mail1.'" "'
	        .$pass1.'" "'.$msrv2.'" "'.$mail2.'" "'.$pass2.'"');
	sendlog($mail2, 'Migration for ' . $mail2 . ' completed successfully.');
    
    	// send email to Zammad
        $mail = new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com'; //gmail: smtp.gmail.com
        $mail->SMTPAuth = true;
        $mail->Username = 'admin@gmail.com';
        $mail->Password = 'password';
        $mail->SMTPSecure = 'ssl';
        $mail->Port = 465;
        $mail->setLanguage('ru');
        $mail->setFrom('admin@gmail.com', 'Admin');
        $mail->addAddress('support@hb.by', 'Support');
        $mail->isHTML(true);
 
        $mail->Subject = 'Migration for ' . $mail2;
        $mail->Body    = 'Migration for ' . $mail2 . ' completed successfully.';
        $mail->AltBody = 'Migration for ' . $mail2 . ' completed successfully.';
 
        //Send log message
        $mail->send();
    }
?>
