# Ocean Of Auction

![Ocean Of Auction Logo](img/logo.png)

An online auction platform where users can participate in bidding for various products, manage their accounts, deposit funds, and track auction histories.

## Overview

Ocean Of Auction is a comprehensive online auction system built with PHP and MySQL. It provides a platform for users to list products for auction, place bids, and manage the entire auction process from start to finish. The system supports regular auctions as well as reverse bidding.

### Key Features

- **User Management**: Registration, login, profile management for customers and employees
- **Product Management**: Add, edit, and categorize products for auction
- **Auction System**: Real-time bidding with countdown timers
- **Payment Processing**: Deposit funds and pay for winning bids
- **Winner Declaration**: Automatic winner declaration after auction ends
- **Chat System**: Communication between users and administrators
- **Admin Dashboard**: Complete control over the system's operations

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/ocean-of-auction.git
   ```

2. Set up the database:
   - Create a MySQL database
   - Import the database structure from `database/id19673193_onlineauction.sql`

3. Configure the database connection:
   - Copy `databaseconnection.sample.php` to `databaseconnection.php`
   - Update the database credentials in `databaseconnection.php`

4. Ensure proper file permissions:
   - Make the following directories writable:
     - `imgproduct/`
     - `img_id_proof/`
     - `imgwinner/`
     - `imgcategory/`
     - `images/`

5. Access the application through your web server.

## System Requirements

- PHP 7.0 or higher
- MySQL 5.6 or higher
- Apache/Nginx web server
- Modern web browser with JavaScript enabled

## User Roles

1. **Customer**: Can register, browse auctions, place bids, deposit funds, and pay for winning bids
2. **Employee**: Can manage products, monitor auctions, and handle customer inquiries
3. **Admin**: Has full control over the system, including managing employees and configuring settings

## Documentation

For detailed usage instructions, refer to the [User Manual](USER_MANUAL.md).

## Security

This repository contains sample files for demonstration purposes. Before deployment:

1. Update all credentials and configuration settings
2. Ensure sensitive files are protected (already configured in `.gitignore`)
3. Change the default admin password

## Contributors

This project was developed as a diploma project by students who created the Online Auction System.

## License

This project is intended for educational purposes. Before using this code for personal or commercial gain, please contact the original developers.

---

© Ocean Of Auction | Ocean Of Your Desire. 