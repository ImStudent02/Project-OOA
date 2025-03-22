<?php
//Sample database configuration file
//Rename this file to databaseconnection.php and update with your actual credentials

// Create connection
$con=mysqli_connect('your_host_name','your_db_username','your_db_password', 'your_db_name');

// Uncomment the line below for local development
//$con=mysqli_connect("localhost","root","","onlineauction");

// This will display connection errors if any
echo mysqli_connect_error();
?> 