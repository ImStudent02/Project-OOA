<?php
include("header.php");
?>
            
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area bg-gray">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">About us</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->
            
            <!-- content-wraper start -->
            <div class="content-wraper mt-95">
                <div class="container">
                    <div class="row ">
                        <div class="col-lg-6">
                            <div class="about-us-img">
                                <img alt="" src="images/Ocean Of Auction-1.png">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about-info-wrapper" >
                                <h2>Ocean Of Auction</h2>
<p>Welcome to Ocean Of Auction, one of the best Indian online auction venues on the Net! This web site is owned and operated by Ocean Of Auction.</p>
<p>Ocean Of Auction gives an opportunity to those people who can't afford to purchase costly branded products, they can try our risk free auctions to win their desired products like Cars, Bikes, Smartphones, Laptop, Tablets & branded watches. You can know or get the real and best price of anything your desire in this Ocean Of Auction.</p>
<p>Ocean Of Auction is an Indian online auction website that provides an exciting opportunity for people to win costly branded products like Smartphones, Laptop, Tablets, and branded watches at a fraction of their market value. This platform offers risk-free auctions that cater to those who cannot afford to purchase these products outright. As the owner and operator of this website, OceanOfAuction is committed to providing a fair and transparent auction environment that ensures a satisfying and rewarding experience for all participants.</p>
<p>Thank You Keep Supporting <a href="https://www.oceanofauction.com"><strong>OceanOfAuction.com</strong></a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <style>
                p
                {
                    text-align: justify;
                }
            </style>
            <!-- content-wraper end -->
            
            <div class="project-count-area bg-gray pt-80 pb-50 mt-95">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-ios-briefcase-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count">
<?php 
$sql ="SELECT * FROM customer";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?>
									</h2>
                                    <span>Customers</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-ios-wineglass-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count"><?php 
$sql ="SELECT * FROM product";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?></h2>
                                    <span>Auction Products</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-ios-lightbulb-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count"><?php 
$sql ="SELECT * FROM bidding";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?></h2>
                                    <span>biddings</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-count text-center mb-30">
                                <div class="count-icon">
                                    <span class="ion-happy-outline"></span>
                                </div>
                                <div class="count-title">
                                    <h2 class="count"><?php 
$sql ="SELECT * FROM winners";
$qsql = mysqli_query($con,$sql);
echo  mysqli_num_rows($qsql); 
?></h2>
                                    <span>Winners</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
<?php
include("footer.php");
?>