# Online Auction System - User Manual

## Table of Contents
1. [Introduction](#introduction)
2. [System Requirements](#system-requirements)
3. [Installation Guide](#installation-guide)
4. [User Roles](#user-roles)
5. [Customer Guide](#customer-guide)
6. [Employee Guide](#employee-guide)
7. [Admin Guide](#admin-guide)
8. [Features](#features)
9. [Troubleshooting](#troubleshooting)
10. [FAQ](#faq)

## Introduction

The Online Auction System is a web-based platform that allows users to participate in online auctions. The system supports bidding on products, managing user accounts, handling payments, and tracking auction history. This comprehensive platform facilitates both regular auctions and reverse bidding processes.

### Key Functionalities:
- User registration and authentication
- Product listing and categorization
- Bidding on products
- Real-time auction tracking with countdown timers
- Payment processing
- Winner declaration
- Chat communication between users
- Deposit and withdrawal management
- Admin dashboard for system management

## System Requirements

### Server Requirements:
- PHP 7.0 or higher
- MySQL 5.6 or higher
- Apache/Nginx web server
- PHP extensions: mysqli, session, date

### Client Requirements:
- Modern web browser (Chrome, Firefox, Safari, Edge)
- JavaScript enabled
- Internet connection

## Installation Guide

1. **Database Setup**:
   - Create a MySQL database named `onlineauction` or your preferred name
   - Import the database structure from `database/id19673193_onlineauction.sql`

2. **Configuration Setup**:
   - Copy `databaseconnection.sample.php` to `databaseconnection.php`
   - Update the database connection details in `databaseconnection.php`:
     ```php
     $con=mysqli_connect('your_host_name','your_db_username','your_db_password', 'your_db_name');
     ```

3. **File Permissions**:
   - Ensure the following directories have write permissions:
     - `imgproduct/`
     - `img_id_proof/`
     - `imgwinner/`
     - `imgcategory/`
     - `images/`

4. **Web Server Configuration**:
   - Set the document root to the project root directory
   - Configure PHP settings (recommended):
     - `upload_max_filesize = 10M`
     - `post_max_size = 10M`
     - `max_execution_time = 300`

5. **Default Admin Account**:
   - Username: Admin
   - Password: admin
   - Note: It's recommended to change the default admin password after installation

## User Roles

The system supports three main user roles:

1. **Customer**:
   - Register and create an account
   - Browse auctions
   - Place bids on products
   - Deposit funds
   - Pay for winning bids
   - Chat with other users and admin

2. **Employee**:
   - Manage products
   - Monitor auctions
   - Handle customer inquiries
   - Generate reports

3. **Admin**:
   - All employee privileges
   - Manage employees
   - Configure system settings
   - View all transaction details
   - Manage categories
   - Approve/reject listings

## Customer Guide

### Registration
1. Click on "Register" from the homepage
2. Fill in the required personal information
3. Upload ID proof (if required)
4. Verify your email through OTP
5. Log in with your credentials

### Depositing Funds
1. Log in to your account
2. Navigate to "Deposit" from the user menu
3. Enter the amount you wish to deposit
4. Complete the payment process
5. Funds will be added to your account balance

### Bidding Process
1. Browse available auctions from the homepage or category pages
2. Click on a product to view details
3. Enter your bid amount (must be higher than the current bid)
4. Click "Place Bid" to confirm
5. You will be notified if you are outbid

### Winning an Auction
1. If you win an auction, you'll receive a notification
2. Navigate to "My Winning Bids" section
3. Complete the payment for the winning bid
4. Arrange shipping and delivery with the seller

### Account Management
1. Update your profile information from "My Account"
2. View your bidding history
3. Track your active bids
4. Manage your deposit and payment history

## Employee Guide

### Login
1. Navigate to the employee login page at `/employeelogin.php`
2. Enter your login credentials provided by the admin
3. Access the employee dashboard

### Managing Products
1. Add new products with detailed descriptions
2. Set auction start and end times
3. Upload product images
4. Set starting bid amounts
5. Assign products to categories

### Monitoring Auctions
1. View ongoing auctions
2. Track bidding activities
3. Check auction end times
4. Verify winning bids

### Customer Support
1. Respond to customer inquiries through the chat system
2. Resolve disputes related to bidding or payments
3. Assist customers with the bidding process

## Admin Guide

### System Management
1. Access the admin panel with admin credentials
2. Manage employee accounts (add, edit, deactivate)
3. Configure system settings

### Category Management
1. Add new categories for products
2. Edit existing categories
3. Manage category hierarchy

### Report Generation
1. Generate transaction reports
2. View auction statistics
3. Monitor user activities
4. Track revenue and commission

## Features

### Real-time Bidding
- Live updates of current bid amounts
- Countdown timers for auction end times
- Instant notifications for outbids

### Secure Payments
- Protected payment processing
- Transaction history tracking
- Deposit and withdrawal management

### User Communication
- Built-in chat system
- Notification center
- Email alerts for important events

### Product Management
- Multiple image uploads
- Detailed product descriptions
- Category-based organization
- Featured product highlighting

## Troubleshooting

### Common Issues

1. **Database Connection Errors**
   - Verify database credentials in `databaseconnection.php`
   - Check if MySQL service is running
   - Ensure database user has proper permissions

2. **Image Upload Issues**
   - Check directory permissions for image folders
   - Verify PHP upload settings
   - Ensure the image format is supported (JPG, PNG, GIF)

3. **Payment Processing Problems**
   - Confirm account balance is sufficient
   - Check payment gateway configuration
   - Verify transaction details

4. **Bidding Errors**
   - Ensure bid amount is higher than current bid
   - Check if auction is still active
   - Verify account status is active

### Error Reporting

For any issues not covered in this manual, please check the PHP error logs or contact the system administrator with the following information:
- Exact error message
- Steps to reproduce the issue
- User role (Customer, Employee, or Admin)
- Browser and device information

## FAQ

**Q: How do I reset my password?**
A: Click on "Forgot Password" on the login page, enter your email address, and follow the instructions sent to your email.

**Q: How is the winning bidder determined?**
A: The user with the highest bid at the end of the auction period is declared the winner.

**Q: Can I cancel my bid?**
A: No, once a bid is placed, it cannot be canceled. Please bid carefully.

**Q: How do I know if I've been outbid?**
A: You will receive a notification on the website and an email alert if you've enabled notifications.

**Q: What happens if no one bids on a product?**
A: If no bids are placed, the auction ends without a winner, and the product may be relisted.

**Q: How can I contact the seller?**
A: Use the built-in chat system to communicate with the seller or admin.

---

© Ocean Of Auction | Ocean Of Your Desire.
This user manual is provided for instructional purposes only. The actual functionality may vary based on system updates and configurations. 