# Sample Credentials for Online Auction System

This file contains sample credentials for demonstration purposes. **Do not use these in production environments.**

## Database Configuration

Use these sample credentials to set up your testing environment:

```php
// Database connection
$con=mysqli_connect('localhost','demo_user','demo_password', 'sample_auction_db');
```

## Admin Login

Default admin credentials:
- Username: Admin
- Password: admin

## Test Customer Account

For testing the customer features:
- Email: test@example.com
- Password: test123

## Test Employee Account

For testing the employee features:
- Login ID: employee1
- Password: employee123

## Email Configuration (for testing)

```php
$mail = new PHPMailer();
$mail->isSMTP();
$mail->Host = 'smtp.example.com';
$mail->SMTPAuth = true;
$mail->Username = 'test@example.com';
$mail->Password = 'mail_password';
$mail->SMTPSecure = 'tls';
$mail->Port = 587;
```

## Important Note

The real credentials file `databaseconnection.php` should be added to your `.gitignore` file to prevent it from being committed to version control.

When deploying the application:
1. Copy `databaseconnection.sample.php` to `databaseconnection.php`
2. Update the credentials in `databaseconnection.php` with your actual database information
3. Never commit the real credentials to public repositories

This project is configured with `.gitignore` to protect sensitive files from being shared publicly. 