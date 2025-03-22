<?php
include("header.php");
?>
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
<?php

if($_SESSION['employee_type'] == "Admin")
{
?>								
<li class="breadcrumb-item active">Admin Dashboard </li>
<?php
}
else
{
?>
<li class="breadcrumb-item active">Employee Account </li>
<?php
}
?>
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
					

<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="closebiddingproduct.php">
				<img alt="" src="img/bidding.gif" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="closebiddingproduct.php">No. of bidding records...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM bidding"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>


<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewbilling.php">
				<img alt="" src="img/bill.png" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="">No. of billings...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM billing"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>


<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewcategory.php">
				<img alt="" src="img/category.png" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="viewcategory.php">No. of category...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM category"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>


<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewcustomer.php">
				<img alt="" src="img/customer.jpg" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="viewcustomer.php">No. of customer...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM customer"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>



<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewemployee.php">
				<img alt="" src="img/employees.png" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="viewemployee.php">No. of Employees...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM employee"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>




<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewmessage.php">
				<img alt="" src="img/message.png" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="viewmessage.php">No. of messages...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM message"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>



<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewpayment.php">
				<img alt="" src="img/payment.png" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="viewpayment.php">No. of payments...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM payment"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>



<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewproduct.php">
				<img alt="" src="img/product.png" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="viewproduct.php">No. of products...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM product"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>


<div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-12">
	<!-- blog-wrapper start -->
	<div class="blog-wrapper mb-30 main-blog">
		<div class="blog-img mb-20">
			<a href="viewwinners.php">
				<img alt="" src="img/winner.jpg" style="height: 250px;width: 100%;">
			</a>
		</div>
		<h3><center><a href="viewwinners.php">No. of winners winners...</a></center></h3> 
		<div class="blog-meta-bundle">
			<div class="blog-readmore">
<center>
<a href="#"><i class="fa fa-angle-double-right"></i></a>
<?php
$sql = "SELECT * FROM winners"; 
$qsql = mysqli_query($con,$sql);
echo " <b>". mysqli_num_rows($qsql) ." Records</b> ";
?>
<a href="#"><i class="fa fa-angle-double-left"></i></a>
</center>
			</div>
		</div>
	</div>
	<!-- blog-wrapper end -->
</div>



					</div>
                </div>
            </div>
            <!-- content-wraper end -->
            
            <!-- footer-area start -->
<?php
include("footer.php");
?>