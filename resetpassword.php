<?php
include("header.php");
if($_GET['tokenid'] != $_SESSION['tokenid'])
{
	echo "<script>alert('Reset password session Expired....');</script>";
	echo "<script>window.location='index.php';</script>";
}
if($_GET['email_id'] != $_SESSION['tokenemailid'])
{
	echo "<script>alert('Reset password session Expired....');</script>";
	echo "<script>window.location='index.php';</script>";
}
if(isset($_POST['btnresetpassword']))
{
	$sqlupd = "UPDATE customer SET password='$_POST[npass]' WHERE email_id='$_SESSION[tokenemailid]'";
	$qsqlupd = mysqli_query($con,$sqlupd);
	echo "<script>alert('Password Reset done successfully...');</script>";
	echo "<script>window.location='customerlogin.php';</script>";
}
?>
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                                <li class="breadcrumb-item active">Reset Password </li>
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
                                <center><h3>Reset Password </h3></center>
                                <div class="login-Register-info">
                                    <form action="" method="post" action=""   onsubmit="return validateform()"> 
                                        <p class="coupon-input form-row-first">
                                            <label>Password change request for <?php echo $_GET['email_id']; ?></span>
                                        </p>
<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">New Password:</label>
		<span id='idnpass' style="color:red;"></span>
		<input name="npass" id="npass" class="form-control" type="password" placeholder="Enter New password" >
	</div>
</div>	
<br>
<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">Confirm Password:</label>
		<span id='idcpass' style="color:red;"></span>
		<input name="cpass" id="cpass" class="form-control" type="password" placeholder="Confirm New password" >
	</div>
</div>
<br><hr>
                                        <p class="coupon-input form-row-last">
                                           <input type="submit" name="btnresetpassword" class="btn btn-info" value="Reset Password">
                                        </p>
                                       <div class="clear"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
						<div class="col-lg-3 col-md-3 col-sm-3"></div>
					</div>
                </div>
            </div>
            <!-- content-wraper end -->
            

<?php
include("footer.php");
?>
<script>
function validateform()
{
	/* #######start 1######### */
	
	
	var alphanumericExp = /^[a-zA-Z0-9]+$/;//Variable to validate only alphanumerics
	
			      
	$("span").html("");
	var i=0;
	/* ########end 1######## */
	if(!document.getElementById("npass").value.match(alphanumericExp))
	{
		document.getElementById("idnpass").innerHTML ="New password should contain only alphabets and numbers....";		
		i=1;		
	}
	if(document.getElementById("npass").value == "")
	{
		document.getElementById("idnpass").innerHTML ="New password should not be empty....";	
		i=1;		
	}	
	if(document.getElementById("cpass").value != document.getElementById("npass").value )
	{
		document.getElementById("idcpass").innerHTML ="Confirm password Must match with new password..";	
		i=1;		
	}
	if(document.getElementById("cpass").value == "")
	{
		document.getElementById("idcpass").innerHTML ="Confirm Password should not be empty....";	
		i=1;		
	}
	
	
	/* #######start 2######### */
	if(i==0)
	{
		return true;
	}
	else
	{
	return false;
	}
	/* #######end 2######### */
}
</script>