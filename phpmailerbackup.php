<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

// Load Composer's autoloader
//require 'vender/autoload.php';

require_once 'PHPMailer/src/Exception.php';
require_once 'PHPMailer/src/PHPMailer.php';
require_once 'PHPMailer/src/SMTP.php';

include 'vendor/autoload.php';
function sendmail($tomail, $totmailname , $subject, $message)
{
	
	$loginid 	= 'imstudentasyc@gmail.com';
	$password 	= "knywwyvizlolrejv";
	$smtpserver = "smtp.gmail.com";
	$smtpport 	= 465;
	$mailsender = "no-reply OceanOfAuction";
	//$url = "www.oceanofauction.com";
	// Import PHPMailer classes into the global namespace
	// These must be at the top of your script, not inside a function
	// Load Composer's autoloader
	


	// Instantiation and passing `true` enables exceptions
	$mail = new PHPMailer(true);

	try
	{
		$mail->SMTPDebug = SMTP::DEBUG_SERVER;  
		$mail->isSMTP();  
		$mail->Host       = "smtp.gmail.com"; // Set the SMTP server to send through
		$mail->SMTPAuth   = true;  // Enable SMTP authentication
		$mail->Username   = 'imstudentasyc@gmail.com'; // SMTP username
		$mail->Password   = "knywwyvizlolrejv";  // SMTP password
		$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
		$mail->Port       = 465;
		// TCP port to connect to

		//Recipients
		$mail->setFrom($loginid, $mailsender);
		$mail->addAddress($tomail, $totmailname);     // Add a recipient
		//$mail->addAddress($tomail);               // Name is optional
		//$mail->addReplyTo($tomail, $totmailname);
		//$mail->addCC('cc@example.com');
		//$mail->addBCC('bcc@example.com');

		// Attachments
		// $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
		// $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

		// Content
		$mail->isHTML(true);        // Set email format to HTML
		$mail->Subject = $subject;

		$mail->Body    = $message; //$message;
		$mail->AltBody = 'Mail Receieved';

		$mail->send();
		//echo 'Mail has been sent';

		return false; 
	}
	catch (Exception $e) 
	{
		$msg = "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
		return $msg;
	}
}
sendmail("testfor050@gmail.com", "test", "subject", "message");
//sendmail("", "Student Projects" , "My subject title", "My message");
?>