<?php

require './PHPMailer/src/Exception.php';
require './PHPMailer/src/PHPMailer.php';
require './PHPMailer/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

/* Write log to the Zammad */
function sendlog($address, $message)
{
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
 
    $mail->Subject = 'Migration for ' . $address;
    $mail->Body    = $message;
    $mail->AltBody = $message;
 
    //Send log message
    $mail->send();
}

/*
Start the job
*/
$file_data = fopen("./credentials.txt", 'r') or die("invalid file name.");

while(!feof($file_data))
{
    $credentials = htmlentities(fgets($file_data));
    $credential = explode("|", $credentials);
 
    if($credential[0] != '') {
	$open = shell_exec('./startimapsync.sh "'.$credential[0].'" "'.$credential[1].'" "'.$credential[2].'" "'.$credential[3].'" "'.$credential[4].'" "'.$credential[5].'"');
	    
	sendlog($credential[1], 'Migration for ' . $credential[1] . ' completed successfully.');
    }
}
fclose($file_data);

?>
