<?php

require '/home/user/PHPMailer/src/Exception.php';
require '/home/user/PHPMailer/src/PHPMailer.php';
require '/home/user/PHPMailer/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

$migratedfolders = array();

/*
  Functions
*/

/* Write log to the filesystem */
function sendlog($address, $message)
{
    $mail = new PHPMailer(true);
 
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com'; //gmail: smtp.gmail.com
    $mail->SMTPAuth = true;
    $mail->Username = 'admin@gmail.com';
    $mail->Password = 'admin';
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

/* Keep track on processed folders */
function migratedfolders($folder)
{
    file_put_contents('home/user/imap_migration_history', $data . "\n", FILE_APPEND);
}


/*
Start the job
*/

$file_data = fopen("/home/user/credentials.txt", 'r') or die("invalid file name.");

while(!feof($file_data))
{
    $credentials = htmlentities(fgets($file_data));
    $credential = explode("|", $credentials);

    $source_connectionstring = $credential[0];
    $source_username = $credential[1];
    $source_password = $credential[2];

    $target_connectionstring = $credential[3];
    $target_username = $credential[4];
    $target_password = $credential[5];

    $source_imap = imap_open($source_connectionstring, $source_username, $source_password)
        or die("can't connect: " . imap_last_error());

    $folders = imap_list($source_imap, $source_connectionstring, "*");

    imap_close($source_imap);

    if ($folders !== false) {

        foreach ($folders as $value) {

            /* Remove connection info in the path */
            $folderpath = str_replace($source_connectionstring, "", $value);

            /* Check if the folder already are completely migrated */
            if (is_file('home/user/imap_migration_history')) {
                $migratedfolders = explode("\n", file_get_contents('home/user/imap_migration_history'));
            }

            if (!in_array($folderpath, $migratedfolders)) {
                /* Remove the folder name and keep the path     */
                $targetpath = explode("home/user/", $folderpath);
                array_pop($targetpath);
                $targetroot = mb_convert_encoding(implode("home/user/", $targetpath), "UTF7-IMAP", "ISO-8859-1");

                /* Connect to the server */
                $target_imap = imap_open($target_connectionstring . $target_folder . $targetroot, $target_username, $target_password)
                or die("can't connect: " . imap_last_error());

                /* Disconnect */
                imap_close($target_imap);

                /* Connect to the servers */
                $target_imap = imap_open(mb_convert_encoding($target_connectionstring . $folderpath, "UTF7-IMAP", "ISO-8859-1"), $target_username, $target_password)
                or die("can't connect: " . imap_last_error());

                $source_imap = imap_open($source_connectionstring . $folderpath, $source_username, $source_password)
                or die("can't connect: " . imap_last_error());

                /* Get information about the source mailbox */
                $MC = imap_check($source_imap);

                /* Fetch messages from source mailbox */
                $result = imap_fetch_overview($source_imap, "1:{$MC->Nmsgs}", 0);

                foreach ($result as $overview) {
                    $message = imap_fetchheader($source_imap, $overview->msgno) . imap_body($source_imap, $overview->msgno);

                    /* Write message to target mailbox */
                    if (!imap_append($target_imap, mb_convert_encoding($target_connectionstring . $folderpath, "UTF7-IMAP", "ISO-8859-1"), $message, "\\Seen")) {
                        
                        /* Log errors */
                        sendlog($target_username, "Coundn't migrate the email \"$overview->subject\" from $overview->date in the $folderpath");

                    }
                }

                /* Fetch messages from source mailbox */
                imap_close($source_imap);
                imap_close($target_imap);
                
                sendlog($target_username, 'Migration for ' . $target_username . ' completed successfully.');
            }
        }

    } else {
    	sendlog($target_username, "Could not get source IMAP trees!");
    }
}
fclose($file_data);

?>
