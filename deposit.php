<?php
include("header.php");
if(isset($_POST['submit']))
{
	$sql = "INSERT INTO  billing (purchase_date,purchase_amount,payment_type,card_type,card_number,expire_date,cvv_number,card_holder,status,customer_id) VALUES('$dt','$_POST[paid_amount]','Deposit','$_POST[card_type]','$_POST[card_number]','$_POST[expire_date]-01','$_POST[cvv_number]','$_POST[card_holder]','Active','$_SESSION[customer_id]')";
	$qsql = mysqli_query($con,$sql);
	$paymentid=mysqli_insert_id($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('You have deposited Rs. $_POST[paid_amount] successfully...');</script>";
		echo "<SCRIPT>window.location='paymentreceipt.php?paymentid=$paymentid';</SCRIPT>";
	}
	else
	{
		echo mysqli_error($con);
	}
}
if(isset($_GET['editid']))
{
	$sqledit = "SELECT * FROM payment WHERE payment_id='$_GET[editid]'";
	$qsqledit = mysqli_query($con,$sqledit);
	$rsedit= mysqli_fetch_array($qsqledit);
}

?>        <div class="content-wraper mt-50">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="customer-login-register">
<!-- banner -->
	<div class="banner">
		<?php
		include("sidebar.php");
		?>
		<div class="w3l_banner_nav_right">
<!-- about -->
		<div class="privacy about">
		
		<table id="datatable"  class="table table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;" >				
		<tr>
		    <th>Deposit amount</th>
		    <td>
			<?php
			$sql = "SELECT IFNULL(SUM(purchase_amount),0) FROM billing WHERE customer_id='" . $_SESSION['customer_id'] . "' and status='Active' and payment_type='Deposit'";
			$qsql = mysqli_query($con,$sql);
			$rs = mysqli_fetch_array($qsql);
			echo "Rs. " . $depamt =  $rs[0];
			?>
			</td>
		</tr>

		<tr>
		    <th>Withdrawn amount</th>
		    <td>
			<?php
			$sql = "SELECT IFNULL(SUM(paid_amount),0) FROM payment WHERE customer_id='" . $_SESSION['customer_id'] . "' and status='Active' and payment_type='Bid'";
			$qsql = mysqli_query($con,$sql);
			$rs = mysqli_fetch_array($qsql);
			echo "Rs. " . $widamt = $rs[0];
			?></td>
		</tr>

		<tr>
		    <th>Balance amount</th>
		    <td>Rs. <?php echo $depamt-$widamt; ?></td>
		</tr>

		
		</table>

		
		<hr>
		
			<h3>Deposit <span>Form</span></h3>

			<div class="checkout-left">	

				<div class="col-md-8 ">
<form action="" method="post" class="creditly-card-form agileinfo_form" onsubmit="return validateform()">
					<section class="creditly-wrapper wthree, w3_agileits_wrapper">
						<div class="information-wrapper">
							<div class="first-row form-group">
							<div class="w3_agileits_card_number_grid_right">
	

<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">Deposit amount <span class="errormsg"  id="errpaid_amount"></span></label>
		<input name="paid_amount" maxlangth="12" id="paid_amount" class="form-control" type="text" placeholder="Deposit amount" value="<?php echo $rsedit['paid_amount']; ?>">
	</div>
</div>

<div class="controls">
	<label class="control-label">Card type <span class="errormsg"  id="errcard_type"></span></label>
	<br>
	<select name="card_type" id="card_type" class="form-control">
		<option value=''>Select</option>
		<option value='Credit card'>Credit card</option>
		<option value='Debit Card'>Debit Card</option>
	</select>
</div>
<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">Card holder <span class="errormsg"  id="errcard_holder"></span></label>
		<input name="card_holder" id="card_holder" class="form-control" placeholder="card holder"  value="<?php echo $rsedit['card_holder']; ?>">
	</div>
</div> 

<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">Card number <span class="errormsg"  id="errcard_number"></span></label>
		<input name="card_number" maxlangth="16" id="card_number" class="form-control" placeholder="Card number"  value="<?php echo $rsedit['card_number']; ?>">
	</div>
</div>

<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">CVV number <span class="errormsg"  id="errcvv_number"></span></label>
		<input name="cvv_number" id="cvv_number" class="form-control" placeholder="CVV number"  value="<?php echo $rsedit['cvv_number']; ?>">
	</div>
</div>
<div class="w3_agileits_card_number_grid_left">
	<div class="controls">
		<label class="control-label">Card Expiry date <span class="errormsg"  id="errexpire_date"></span></label>
		<input name="expire_date" id="expire_date" type="month" class="form-control" placeholder="expire date"  value="<?php echo $rsedit['expire_date']; ?>" min="<?php echo date("Y-m"); ?>">
	</div>
</div>
<br>
<button class="btn btn-info" type="submit" name="submit">Click here to make payment</button>
										</div>
									</section>
								</form>
									
					</div>
			
				<div class="clearfix"> </div>
			</div>

		</div>
<!-- //about -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->

                            </div>
                        </div>
					</div>
                </div>
            </div>

<?php
include("footer.php");
?>
