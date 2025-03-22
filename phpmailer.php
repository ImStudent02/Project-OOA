<?php

// session_start();
// use PHPMailer\PHPMailer\PHPMailer;
// use PHPMailer\PHPMailer\SMTP;
// use PHPMailer\PHPMailer\Exception;
?>

<?php 
// // function SendMail1 ($formaddress, $toaddress, $toname, $str, $subject)
// function SendMail1 ($toaddress, $toname, $str, $subject)
// {
//     //$otp = mt_rand(100000, 999999);
//     //Import PHPMailer classes into the global namespace
//     //These must be at the top of your script, not inside a function


// //Load Composer's autoloader
// require 'vendor/autoload.php';

// //Create an instance; passing `true` enables exceptions
// $mail = new PHPMailer(true);

// try {
//     $config = parse_ini_file('config/lock.ini');
//     $key = trim($config['key'], '"');

//     //Server settings
//     $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
//     $mail->isSMTP();                                            //Send using SMTP
//     //$mail->Host       = 'smtp.zoho.com';                       //Set the SMTP server to send through
//     $mail->Host       = 'smtp.google.com';
//     $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
//     //$mail->Username   = $formaddress;                          //SMTP username
//     //$mail->Username   = "verification@oceanofauction.com";
//     $mail->Username   = "imstudentasyc@gmail.com";
//     $mail->Password   = "";
//     $mail->Password   = $key;                                    //SMTP password
//     $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
//     $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

//     // Set the sender's email address and name
//     //$mail->setFrom($formaddress, 'no-reply');
//     //$mail->setFrom("verification@oceanofauction.com", "noreplay");
//     $mail->setFrom("imstudentasyc@gmail.com", "noreplay");
//     // Add a recipient's email address and name
//     $mail->addAddress($toaddress, $toname);

//     // Add another recipient's email address without specifying a name
//     //$mail->addAddress('luciferms.710@gmail.com');

//     // Set the "Reply-To" email address and name
//     //$mail->addReplyTo('info@example.com', 'Information');

//     // Add a recipient to the "CC" (carbon copy) field
//     //$mail->addCC('cc@example.com');

//     // Add a recipient to the "BCC" (blind carbon copy) field
//     //$mail->addBCC('bcc@example.com');


//     //Attachments
//     // $mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
//     // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
    
//     //Content
//     $mail->isHTML(true);                                  //Set email format to HTML
//     $mail->Subject = $subject;
//     $mail->Body    = $str;
//     //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

//     $mail->send();
    
//     $_SESSION['message'] = true;
//     // echo "<meta http-equiv='refresh' content='0; url=indeXX.php'>";
//     echo "mail sent";
// } catch (Exception $e) {
//     //echo $e;
//     echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
// }
// }
// //SendMail1("moyudinkadivar22@gmail.com", "to name","body boob", "subject");
?>
<?php
function send_Mail($to, $subject, $message, $fromName, $from, $replyToName, $replyTo) {
    try {
        if (!filter_var($to, FILTER_VALIDATE_EMAIL)) {
            throw new Exception("Invalid email address.");
        }
        //echo $to ." ".$subject ." ".$message ." ".$fromName." ". $from." ". $replyToName." ". $replyTo;
        
        
        $headers    =   "From: $fromName <$from>" . "\r\n" .
                        "Reply-To: $replyToName <$replyTo>" . "\r\n";
        $headers    .=  "Content-type: text/html\r\n";

        if (!mail($to, $subject, $message, $headers)) {
            echo "<script>alert('email not sended');</script>";
            return false;
        }else{
            echo "email sended";
            return true;
        }
    } catch (Exception $e) {
        echo "php mailer Error: " . $e;
    }
}
?>