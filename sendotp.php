<?php

session_start();
$otp = rand(100001,999999);
$cstname = $_GET['cstname'];
$emailid = $_GET['emailid'];
include("phpmailer.php");
$msg = '<head>
<title>One Time Password Verification Mail</title><!-- Include Bootstrap CSS --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"><style>body {font-family: Arial, sans-serif;margin-top: 50px;} .warning {color: red;font-weight: bold;}.otp-box {border: 1px solid #ccc;padding: 20px;display: inline-block;font-size: 36px;font-weight: bold;text-align: center;margin-top: 20px;margin-bottom: 20px;border-radius: 10px;box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);}
    .otp-label {
        font-size: 20px;
        font-weight: bold;
        text-transform: uppercase;
        color: #555;
        margin-top: 50px;
        margin-bottom: 10px;
    }
</style>
</head>
<body>
<div class="container text-center">
    <h1 class="text-primary">One Time Password Verification Mail by Ocean Of Auction</h1>
    <p class="warning">Do not share this mail with anyone for security or privacy reasons.</p>
    <p class="otp-label">6-digit code(OTP) below:</p>
    <div class="otp-box bg-info">
        <p class="text-white"><strong>'. $otp .'</strong></p>
    </div>
    <footer class="text-muted">Mail from oceanofauction.com</footer>
</div>

<!-- Include Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>';
$subject = "User validation mail";
$fromName = "User Verification OceanOfAuction";
$from = "verification@oceanofauction.com";
$replayToName = "no-reply";
$replayTO = "no-replay@example.com";
//echo $_GET['emailid'];
try{
    if(send_Mail($emailid, $subject, $msg , $fromName, $from, $replayToName, $replayTo)){
        $_SESSION['otp'] =$otp;
        
        echo "<script>alert('Otp mail sended succsessfully');</script>";
       return true;
    }else{
        return false;
    }
    //echo $otp;
}catch(Exception $e){
    echo $e;
    return $e;
}


?>