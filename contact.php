<?php
include("header.php");
if(isset($_POST['submit']))
{
	include("phpmailer.php");
	//firstname lastname email subject message submit
	$nm = $_POST['firstname'] . " " . $_POST['lastname'];
	$owneremailid="contact-us@oceanofauction.com";
	$owneremailid2="testfor050@oceanofauction.com";
	$subject = "Enquiry Mail";
	$msg = "
	<b>Name : </b> $_POST[firstname] $_POST[lastname] <br>
	<b>Email ID : </b> $_POST[email] <br><hr>
	<b>Subject : </b> $_POST[subject] <br>
	<b>message : </b><br>$_POST[message]";

    if(send_Mail($owneremailid, $subject, $msg, $nm, $_POST['email'], $nm, $_POST['email']) && send_Mail($owneremailid2, $subject, $msg, $nm, $_POST['email'], $nm, $_POST['email'])){
        echo "<script>alert('Mail sent successfully, Team will reach you as soon as posible, Thank you.');</script>";
	    echo "<script>window.location='index.php';</script>";
    }else{
        echo "<script>alert('Failed to sent mail, Try again later. Or direct mail on given email.');</script>";
    }
    //send_Mail($owneremailid, $subject, $msg, $nm, $_POST['email'], $nm, $_POST['email']);
	//sendmail($owneremailid, $nm , $title, $msg);
	// echo "<script>alert('Mail sent successfully...');</script>";
	// echo "<script>window.location='index.php';</script>";
}
?>
            
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                                <li class="breadcrumb-item active">Contact</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->
            
            <!-- content-wraper start -->
            <div class="content-wraper">
                <div class="container-fluid  p-0">
                    <div class="row no-gutters">
                        <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                            <div class="contact-form-inner">
                                <h2>TELL US YOUR QUERY</h2>
                                <form method="POST" action="">
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6">
                                            <input type="text" placeholder="First name*" name="firstname" required>
                                        </div>
                                        <div class="col-md-6 col-lg-6">
                                            <input type="text"  placeholder="Last name*" name="lastname" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 col-lg-6">
                                            <input type="email"  placeholder="Email*" name="email" required>
                                        </div>
                                        <div class="col-md-6 col-lg-6">
                                            <input type="text" placeholder="Subject*" name="subject" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col">
                                            <textarea placeholder="Message *" name="message"required></textarea>
                                        </div>
                                    </div>
                                    <div class="contact-submit-btn">
                                        <button class="submit-btn" type="submit" name="submit" id="submit" >Send Email</button>
                                         <p class="form-messege"></p>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12 plr-0">
                            <div class="contact-address-area">
                                <h2>CONTACT US</h2>
                                <ul>
                                    <li>
                                        <i class="fa fa-fax">&nbsp;</i> Address : Currently not available.</li>
                                    <li>
                                        <i class="fa fa-phone">&nbsp;</i>&nbsp;+91 9265933286</li>
                                    <li>
                                        <i class="fa fa-envelope-o"></i> contact-us@oceanofauction.com  </li>
                                </ul>
                            </div>
                        </div>
						
						
                    </div>
					
					

                </div>
            </div>
            <!-- content-wraper end -->
            

<!-- footer-area start -->
<?php
include("footer.php");
?>
			