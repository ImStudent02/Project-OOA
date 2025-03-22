<?php

include("header.php");

if(isset($_SESSION['customer_id']))
{
	echo "<script>window.location='index.php';</script>";
}
	//######################################
	if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')   
         $url = "https://";
    else
         $url = "http://";
    // Append the host(domain name, ip) to the URL.   
    $url.= $_SERVER['HTTP_HOST'];
    // Append the requested resource location to the URL   
    $url.= dirname($_SERVER['PHP_SELF']) . "/login.php";
?>
<?php 
if(isset($_POST['submit'])){
    $sql = "SELECT * from customer WHERE email_id = '$_POST[email]'";
    $qsql = mysqli_query($con, $sql);
    if(mysqli_num_rows($qsql) == 1)
    {
        //echo mysqli_num_rows($qsql);
        include('AES/AES.php');
        $email = $_POST['email'];
        $sql ="SELECT password FROM customer where email_id = '$email'";
        $result = mysqli_query($con, $sql);
        
        //echo mysqli_num_rows($result);
        
        if (mysqli_num_rows($result) == 1)
        {
            
            $row = mysqli_fetch_assoc($result);
            include("phpmailer.php");
            $pass = decrypt($row['password']);
            $msg = '<head>
            <title>One Time Password Verification Mail</title><!-- Include Bootstrap CSS --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"><style>body {font-family: Arial, sans-serif;margin-top: 50px;} .warning {color: red;font-weight: bold;}.otp-box {border: 1px solid #ccc;padding: 20px;display: inline-block;font-size: 36px;font-weight: bold;text-align: center;margin-top: 20px;margin-bottom: 20px;border-radius: 10px;box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);}
                .otp-label {font-size: 20px;font-weight: bold;text-transform: uppercase;color: #555;margin-top: 50px;margin-bottom: 10px;}
            </style>
            </head>
            <body>
            <div class="container text-center">
                <h1 class="text-primary">Password Recovery Mail by Ocean Of Auction</h1>
                <p class="warning">Do not share this mail with anyone for security or privacy reasons.</p>
                <p class="otp-label">Your Account Password below:</p>
                <div class="otp-box bg-info">
                    <p class="text-white"><strong>'. $pass .'</strong></p>
                </div>
                <footer class="text-muted">Mail from oceanofauction.com</footer>
            </div>

            <!-- Include Bootstrap JS -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            </body>';
            $subject = "Forget Pass Mail";
            $fromName = "Mail from OceanOfAuction";
            $from = "verification@oceanofauction.com";
            $replayToName = "no-reply";
            $replayTO = "no-replay@example.com";
            //echo $_GET['emailid'];
            $emailid = $_POST['email'];
            
            // try{
                echo $emailid;
                // require('phpmailer.php');
                //echo $emailid;
                //echo $pass;
                if(send_Mail($emailid, $subject, $msg , $fromName, $from, $replayToName, $replayTo)){
                    echo "<script>alert('Password sended in your mail...');</script>";
                    echo "<script>window.location='customerlogin.php';</script>"; 
                }else{
                    echo "<script>alert(Faild to send mail...');</script>";
                }
                           
            // }catch(Exception $e){
                // echo "<script>alert('".$e."');</script>";
                // echo "$e error";
            // }
        }
        else
        {
            echo "<script>alert('ERROR DURING UPDAT PASSWORD');</script>";
            //echo mysqli_num_rows($result);
        }
    }
    else
    {
        echo "<script>alert('Maybe Email not found in db.');</script>";
    }
}
?>
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                                <li class="breadcrumb-item active">Forgot Password </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->
            
            <!-- content-wraper start -->
            <div class="content-wraper mt-50">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3"></div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="customer-login-register">
                                <center><h3>Forgot Password </h3></center>
                                <div class="login-Register-info">
                                    <form action="" method="post" onsubmit="return validateform(event)"> 
                                        <p class="coupon-input form-row-first">
                                            <label>Enter Email ID for recover Password <span class="required">*</span>  
											<span id='idemailid' style="color:red;"></span></label>
                                            <input type="text" name="email" id="email_id" placeholder="Email ID" type="email" name="email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" maxlength="50">
                                        </p>
                                        <p class="coupon-input form-row-last">
											<!-- sent recovery mail -->
                                           <input type= "submit" name="submit" class="btn btn-info" value="Send recovery Mail">
                                        </p>
                                        <hr>
                                        <center><a href="customerlogin.php" class="btn btn-warning">Click Here to Login</a>					
                                        <a href="register.php" class="btn btn-warning">Click Here to Register</a></center>
                                    </form>
                                </div>
                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-3"></div>
					</div>
                </div>
            </div>
<?php
include("footer.php");
?> 