<?php
include("header.php");
if(isset($_POST['submit']))
{   
	include("AES/AES.php");

	$customer_fname = $_POST['customer_fname'];
	$customer_lname = $_POST['customer_lname'];
	$email_id = $_POST['email_id'];
	$password = $_POST['password'];
	$mobile_no = $_POST['mobile_no'];

	// $customer_fnameE = encrypt($customer_fname);
	// $customer_lnameE = encrypt($customer_lname);
	// $email_idE = encrypt($email_id);
	$passwordE = encrypt($password);
	$mobile_noE = encrypt($mobile_no);

	$sql ="INSERT INTO customer(customer_fname,customer_lname,email_id,password,mobile_no,status) values('$customer_fname','$customer_lname','$email_id','$passwordE','$mobile_noE','Active')";
	try{
    	$qsql = mysqli_query($con,$sql);
    	if(mysqli_affected_rows($con) == 1)
    	{
    		echo "<script>alert('Customer Registration done successfully..');</script>";
    		session_destroy();
    		echo "<script>window.location='customerlogin.php';</script>";
    	}
    	else
    	{
    		echo "<script>alert('Failed to Register..');</script>";
    		echo mysqli_error($con);
    	}
    	}catch(Exception $e){
    	    echo "<script>alert('".$e."');</script>";
    	}
// 	try{
//     	$sql2 = "INSERT INTO pass values('$email_id','$password')";
//     	$qsql2 = mysql_query($con, $sql2);
//     	if(mysqli_affected_rows($con) == 1)
//     	{
//     		echo "<script>alert('Customer Registration done successfully..');</script>";
//     		session_destroy();
//     		echo "<script>window.location='customerlogin.php';</script>";
//     	}
//     	else
//     	{
//     		echo "<script>alert('Failed to Register..');</script>";
//     		echo mysqli_error($con);
//     	}
// 	}catch(Exception $e){
// 	    echo $e;
// 	}
}
?>
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                                <li class="breadcrumb-item active">Register </li>
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
                                <center><h3>Customer Registration Panel</h3></center>
                                <div class="login-Register-info">
<form action="./register.php" method="post"> 
	<p class="coupon-input form-row-first">
		<label>First Name<span class="required">*</span> <span class="errormsg"  id="errcustomer_fname"></span></label>
		<input type="text" name="customer_fname" id="customer_fname">
	</p>
	<p class="coupon-input form-row-first">
		<label>Last Name<span class="required">*</span> <span class="errormsg"  id="errcustomer_lname"></span></label>
		<input type="text" name="customer_lname" id="customer_lname">
	</p>
	<p class="coupon-input form-row-first">
		<label>Email <span class="required">*</span> <span class="errormsg"  id="erremail_id"></span></label>
		<input type="text" name="email_id" id="email_id">
	</p>
	<p class="coupon-input form-row-first">
		<label>Mobile No. <span class="required">*</span>  <span class="errormsg"  id="errmobile_no"></span></label>
		<input type="tel" maxlength="10" name="mobile_no" id="mobile_no" >
	</p>
	<p class="coupon-input form-row-last">
		<label>Password <span class="required">*</span> <span class="errormsg"  id="errpassword"></span></label>
		<input type="password" name="password" id="password" >
	</p>
	<p class="coupon-input form-row-last">
		<label>Confirm password <span class="required">*</span> <span class="errormsg"  id="errcpassword"></span></label>
		<input type="password" name="cpassword" id="cpassword">
	</p>

	<input type="checkbox" id="showPassword">
	<label for="showPassword">Show password <span class="required"></span> <span class="errormsg"  id="errcpassword"></span></label>
	
   <div class="clear"></div>
	<p>
		<button value="Login" name="btnsubmit" id="btnsubmit" class="button-login" type="button" onclick="return validatecustomer()">Register</button>
		
	</p>
	
<div id="otpModal" class="modal fade" role="dialog">
  <div class="modal-dialog" style="max-width: 50%;">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Verify OTP</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
	<p class="coupon-input form-row-first">
		<label><b>We have sent OTP to following Email ID.</b></label>
		<input type="text" name="emailids" id="emailids" readonly>
		<input type="hidden" name="otpnumber" id="otpnumber" readonly>
	</p>
		<p class="coupon-input form-row-first">
		<label>Enter OTP</label>
		<input type="text" name="enteredotp" id="enteredotp">
	</p>
      </div>
      <div class="modal-footer">
			<button value="Login" name="submit" id="submit" class="button-login" type="submit" onclick="return validateotp()">Complete Registration</button>
      </div>
    </div>
  </div>
</div>

</form>
<?php
	session_start();
	echo "<script> var otp = ".$_SESSION['otp'].";</script>";
?>
<script>
	function validateotp()
	{
		// if(document.getElementById("otpnumber").value == document.getElementById("enteredotp").value)
		// {
		// 	return true;
		// }
		if(otp == document.getElementById("enteredotp").value)
		{
			return true;
		}
		else
		{
			alert("You have entered invalid OTP..");
			return false;
		}
	}
</script>
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
	var alphaNumericExp = /^[0-9a-zA-Z]+$/;
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	const regexpass =/^[a-zA-Z0-9@_.,()'"[\]{}]{8,16}$/;

	$('.errormsg').html('');
	var errchk = "False";

	if(document.getElementById("customer_fname").value.length > 25)
	{
		document.getElementById("errcustomer_fname").innerHTML="Customer First name not contain less than 15 characters...";
		errchk = "True";
	}
	if(!document.getElementById("customer_fname").value.match(alphaSpaceExp))
	{
		document.getElementById("errcustomer_fname").innerHTML = "Kindly enter valid Customer First name..";
		errchk = "True";
	}
	if(document.getElementById("customer_fname").value == "")
	{
		document.getElementById("errcustomer_fname").innerHTML="Customer First name should not be empty...";
		errchk = "True";
	}
	if(document.getElementById("customer_lname").value.length > 25)
	{
		document.getElementById("errcustomer_lname").innerHTML="Customer Last name not contain less than 15 characters...";
		errchk = "True";
	}
	if(!document.getElementById("customer_lname").value.match(alphaSpaceExp))
	{
		document.getElementById("errcustomer_lname").innerHTML = "Kindly enter valid Customer Last name..";
		errchk = "True";
	}
	if(document.getElementById("customer_lname").value == "")
	{
		document.getElementById("errcustomer_lname").innerHTML="Customer Last name should not be empty...";
		errchk = "True";
	}
	if(!document.getElementById("email_id").value.match(emailExp))
	{
		document.getElementById("erremail_id").innerHTML = "Entered Email ID is not valid....";
		errchk = "True";
	}
	if(document.getElementById("email_id").value == "")
	{
		document.getElementById("erremail_id").innerHTML="Kindly enter Email ID.";
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
	// pass starngth velidator 
	if(!document.getElementById("password").value.match(regexpass))
	{
		document.getElementById("errpassword").innerHTML ="New password should contain at least one digit, one lower case, one upper case, one special character and 8 characters....";
		errchk = "True";
	}
	
	if(document.getElementById("password").value == "")
	{
		document.getElementById("errpassword").innerHTML ="New password should not be empty....";	
		errchk = "True";	
	}	
	if(document.getElementById("cpassword").value != document.getElementById("password").value )
	{
		document.getElementById("errcpassword").innerHTML ="Confirm password Must match with new password..";	
		errchk = "True";		
	}
	if(document.getElementById("cpassword").value == "")
	{
		document.getElementById("errcpassword").innerHTML ="Confirm Password should not be empty....";	
		i=1;		
	}
	if(document.getElementById("mobile_no").value.length != 10)
	{
		document.getElementById("errmobile_no").innerHTML="Mobile Number should contain 10 digits..";
		errchk = "True";
	}
	if(document.getElementById("mobile_no").value == "")
	{
		document.getElementById("errmobile_no").innerHTML="Mobile number should not be empty..";
		errchk = "True";
	}	
	if(errchk == "True")
	{
		return false;
	}
	else
	{
		$('#btnsubmit').attr('disabled',true);
		//return false;
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) 
			{
				document.getElementById("otpnumber").value = this.responseText;
				document.getElementById("emailids").value = document.getElementById("email_id").value;
				$('#otpModal').modal('show');
			}
		};
		xmlhttp.open("GET","sendotp.php?emailid="+document.getElementById("email_id").value+"&cstname="+document.getElementById("customer_fname").value + " " + document.getElementById("customer_lname").value,true);
		xmlhttp.send();
	}
}
// $("#mobile_no").keydown(function(e) {
//     var oldvalue=$(this).val();
// 		var field=this;
// 		setTimeout(function () {
// 			if(field.value.indexOf('+91') !== 0) {
// 				$(field).val(oldvalue);
// 			} 
// 		}, 1);
// });
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
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

	// When the password or confirm password fields change
	$('#password, #cpassword').on('input', function() {
		var passwordInput = $('#password');
		var confirmPasswordInput = $('#cpassword');
		var password = passwordInput.val();
		var confirmPassword = confirmPasswordInput.val();
		
		// If the passwords match
		if (password === confirmPassword) {
		// Set the border color to green
		confirmPasswordInput.css('border-color', 'green');
		} else {
		// Set the border color to red
		confirmPasswordInput.css('border-color', 'red');
		}
	});
	});
</script>