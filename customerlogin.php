<?php
include("header.php");
if(isset($_POST['btncustlogin']))
{
    include('AES/AES.php');
	$email_id = $_POST['email'];
	$password = $_POST['password'];
	//$mobile_no = $_POST['mobile_no'];
	//$email_idE = encrypt($email_id);
	//$passwordE = password_hash($password, PASSWORD_DEFAULT);
	//$mobile_noE = encrypt($mobile_no);
	
	//echo "<script>alert('\t".$email_id."\t".$password."');</script>";
	//$sql ="SELECT * FROM customer WHERE email_id='$email_id' AND status='Active'";
	
	$sql = "SELECT * FROM customer WHERE email_id = '$email_id' AND status = 'Active'";
	$qsql = mysqli_query($con, $sql);
	if(mysqli_num_rows($qsql) > 0)
	{
	    $rs = mysqli_fetch_assoc($qsql);
	    if($password == decrypt($rs['password'])){
	        
    		$_SESSION['customer_id'] = $rs['customer_id'];
    		$_SESSION['loginemail'] = $rs['email_id'];
    		echo "<script>window.location='customeraccount.php';</script>";
    		
	    }else{
	        var_dump(password_verify($password, rs['password']));
	        echo "<script>alert('Failed to Login, password doesnot match.');</script>";
	    }
	}
	else
	{
	    //echo "<script>alert('".var_dump($mysqli_fetch_array)."');</script>";
		echo "<script>alert('Failed to Login, email not Found.');</script>";
		echo "<script>window.location='customerlogin.php';</script>";
		//echo $email_idE, $mobile_noE, $passwordE;
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
                                <li class="breadcrumb-item active">Login </li>
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
                                <center><h3>Login Panel<br>Ocean Of Auction</h3></center>
                                <div class="login-Register-info">
                                    <form action="" method="post" onsubmit="return validatecustomer()"> 
                                        <p class="coupon-input form-row-first">
                                            <label>Email <span class="required">*</span>  <span class="errormsg"  id="erremail"></span></label>
                                            <input type="email" name="email" id="email">
                                        </p>
                                        <p class="coupon-input form-row-last">
                                            <label>password <span class="required">*</span>  <span class="errormsg"  id="errpassword"></span></label>
                                            <input type="password" name="password" id="password">
                                        </p>
										<input type="checkbox" id="showPassword">
										<label for="showPassword">Show password <span class="required"></span> <span class="errormsg"  id="errcpassword"></span></label>
                                       <div class="clear"></div>
                                        <p>
                                            <button value="Login" name="btncustlogin" class="button-login" type="submit">Login</button>
											<a href="forgotpassword.php" class="lost-password">Lost your password?</a>
											<?php
											/*
                                            <a href="#" class="lost-password">Lost your password?</a>
											*/
											?>
                                        </p>
                                    </form>
                                </div>
                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-3"></div>
					</div>
                </div>
            </div>
            <!-- content-wraper end -->
            
            <!-- footer-area start -->
            <?php
			include("footer.php");
			?>
<script>
function validatecustomer()
{
	var numericExp = /^[0-9]+$/;
	var alphaExp = /^[a-zA-Z]+$/;
	var alphaSpaceExp = /^[a-zA-Z\s]+$/;
	//var alphaNumericExp = /^[0-9a-zA-Z]+$/;
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;;
	const regexpass = /^[a-zA-Z0-9@_.,()'"[\]{}]{8,16}$/;

	$('.errormsg').html('');
	var errchk = "False";
	
	if(!document.getElementById("email").value.match(emailExp))
	{
		document.getElementById("erremail").innerHTML = "Entered Email ID is not valid....";
		errchk = "True";
	}
	if(document.getElementById("email").value == "")
	{
		document.getElementById("erremail").innerHTML="Kindly enter Email ID to Login";
		errchk = "True";
	}	 
	
	// pass starngth velidator 
	if(!document.getElementById("password").value.match(regexpass))
	{
		document.getElementById("errpassword").innerHTML ="password should contain at least one digit, one lower case, one upper case, one special character and 8 characters....";
		errchk = "True";
	}

	if(document.getElementById("password").value.length < 8)
	{
		document.getElementById("errpassword").innerHTML ="Password should contain more than 8 characters...";	
		errchk = "True";		
	}	

	if(document.getElementById("password").value.length > 16)
	{
		document.getElementById("errpassword").innerHTML ="Password should contain less than 16 characters...";	
		errchk = "True";		
	}	
	// if(!document.getElementById("password").value.match(alphaNumericExp))
	// {
	// 	document.getElementById("errpassword").innerHTML ="password should contain only alphabets and numbers....";		
	// 	errchk = "True";
	// }
	if(document.getElementById("password").value == "")
	{
		document.getElementById("errpassword").innerHTML =" password should not be empty....";	
		errchk = "True";	
	}
	if(errchk == "True")
	{
		return false;
	}
	else
	{
		return true;
	}
}
</script>

<script>

	$(document).ready(function() {
    // When the "show password" checkbox is clicked
    $('#showPassword').click(function() {
      // Get the password input element
      var passwordInput = $('#password');
      var confirmPasswordInput = $('#cpassword');
      
      // If the checkbox is checked
      if ($(this).is(':checked')) {
        // Show the password by changing the input type to "text"
        passwordInput.attr('type', 'text');
        confirmPasswordInput.attr('type', 'text');
      } else {
        // Hide the password by changing the input type back to "password"
        passwordInput.attr('type', 'password');
        confirmPasswordInput.attr('type', 'password');
      }
  	});
	});
</script>