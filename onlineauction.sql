-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 03:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineauction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bidding_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_amount` float(10,2) NOT NULL,
  `bidding_date_time` datetime NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bidding_id`, `customer_id`, `product_id`, `bidding_amount`, `bidding_date_time`, `note`, `status`) VALUES
(3213, 123213, 12123, 5550.00, '2020-01-16 03:08:08', 'rfewrf', ''),
(3214, 7, 128, 450.00, '2020-02-05 10:59:23', '', 'Active'),
(3215, 9, 128, 475.00, '2020-02-06 10:59:44', '', 'Active'),
(3216, 2, 129, 26.00, '2020-02-13 10:46:25', '', 'Active'),
(3217, 2, 129, 30.00, '2020-02-13 10:46:53', '', 'Active'),
(3218, 2, 128, 500.00, '2020-02-13 11:00:46', '', 'Active'),
(3219, 2, 128, 525.00, '2020-02-13 11:01:57', '', 'Active'),
(3220, 2, 129, 40.00, '2020-02-13 11:02:24', '', 'Active'),
(3221, 2, 143, 10.00, '2020-03-04 21:43:47', '', 'Active'),
(3222, 2, 143, 12.00, '2020-03-04 21:44:14', '', 'Active'),
(3223, 2, 143, 1.00, '2020-03-04 21:51:44', '', 'Active'),
(3224, 9, 143, 1.00, '2020-03-04 22:50:42', '', 'Active'),
(3225, 9, 143, 2.00, '2020-03-04 22:50:53', '', 'Active'),
(3226, 23, 148, 10.00, '2020-03-05 18:54:15', '', 'Active'),
(3227, 23, 148, 20.00, '2020-03-05 18:57:18', '', 'Active'),
(3228, 23, 148, 10.00, '2020-03-05 18:57:48', '', 'Active'),
(3229, 23, 148, 10.00, '2020-03-05 18:58:07', '', 'Active'),
(3230, 23, 148, 10.00, '2020-03-05 18:58:12', '', 'Active'),
(3231, 23, 148, 10.00, '2020-03-05 18:58:44', '', 'Active'),
(3232, 23, 148, 10.00, '2020-03-05 18:59:00', '', 'Active'),
(3233, 23, 148, 10.00, '2020-03-05 18:59:15', '', 'Active'),
(3234, 23, 148, 10.00, '2020-03-05 18:59:52', '', 'Active'),
(3235, 23, 148, 10.00, '2020-03-05 19:00:25', '', 'Active'),
(3236, 23, 148, 10.00, '2020-03-05 19:02:07', '', 'Active'),
(3237, 23, 148, 11.00, '2020-03-05 19:02:22', '', 'Active'),
(3238, 23, 148, 12.00, '2020-03-05 19:02:31', '', 'Active'),
(3239, 23, 148, 13.00, '2020-03-05 19:04:00', '', 'Active'),
(3240, 23, 148, 13.00, '2020-03-05 19:04:44', '', 'Active'),
(3241, 23, 148, 14.00, '2020-03-05 19:04:58', '', 'Active'),
(3242, 23, 148, 14.00, '2020-03-05 19:05:05', '', 'Active'),
(3243, 23, 148, 15.00, '2020-03-05 19:05:18', '', 'Active'),
(3244, 28, 156, 25.00, '2020-08-27 18:36:22', '', 'Active'),
(3245, 31, 158, 12.00, '2021-04-05 00:40:33', '', 'Active'),
(3246, 2, 158, 15.00, '2021-05-09 04:34:33', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billing_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_amount` float(10,2) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `expire_date` date NOT NULL,
  `cvv_number` varchar(5) NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billing_id`, `customer_id`, `product_id`, `purchase_date`, `purchase_amount`, `payment_type`, `card_type`, `card_number`, `expire_date`, `cvv_number`, `card_holder`, `delivery_date`, `note`, `status`) VALUES
(1326, 321, 231, '2020-01-11', 500.00, '12323', '3123', '545454545', '2020-01-13', '545', '5454545', '2020-01-20', '213213213', ''),
(1327, 0, 125, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '545', 'yjut', '0000-00-00', '', 'Active'),
(1328, 0, 126, '2020-02-05', 100.00, 'Sell', 'VISA', '1987654321234567', '2020-03-01', '543', 'Rajkiran', '0000-00-00', '', 'Active'),
(1329, 8, 0, '2020-02-05', 500.00, 'Deposit', 'Credit card', '1234567890123456', '2020-02-01', '564', 'Raj kiran', '0000-00-00', '', 'Active'),
(1330, 0, 127, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '433', 'Rajkiran', '0000-00-00', '', 'Active'),
(1331, 0, 128, '2020-02-05', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '237', 'Rajkiran', '0000-00-00', '', 'Active'),
(1332, 7, 0, '2020-02-05', 650.00, 'Deposit', 'Credit card', '9876543212346789', '2021-12-01', '237', 'karan', '0000-00-00', '', 'Active'),
(1333, 0, 129, '2020-02-06', 100.00, 'Sell', 'Debit Card', '7894561230123456', '2020-03-01', '433', 'Raj', '0000-00-00', '', 'Active'),
(1334, 9, 0, '2020-02-06', 300.00, 'Deposit', 'Debit Card', '1234567890123456', '2020-03-01', '453', 'Raj', '0000-00-00', '', 'Active'),
(1335, 2, 0, '2020-02-13', 650.00, 'Deposit', 'Credit card', '1234567891012345', '2021-01-01', '458', 'Raj kiran', '0000-00-00', '', 'Active'),
(1336, 0, 136, '2020-02-13', 100.00, 'Sell', 'Credit card', '1233213213213134', '2044-03-01', '443', 'da', '0000-00-00', '', 'Active'),
(1337, 9, 0, '2020-03-04', 250.00, 'Deposit', 'Debit Card', '1234567890123456', '2021-01-01', '548', 'Raj kiran', '0000-00-00', '', 'Active'),
(1338, 2, 0, '2020-03-04', 100.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1339, 0, 138, '2020-03-04', 100.00, 'Sell', 'Master Card', '1234567890123456', '2021-01-01', '456', 'raj kiran', '0000-00-00', '', 'Active'),
(1340, 2, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1341, 0, 140, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '489', 'Raj kiran', '0000-00-00', '', 'Active'),
(1342, 9, 141, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '125', 'Raj kiran', '0000-00-00', '', 'Active'),
(1343, 0, 142, '2020-03-04', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2021-01-01', '486', 'Raj kiran', '0000-00-00', '', 'Active'),
(1344, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1345, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1346, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1347, 9, 0, '2020-03-04', 0.00, 'Deposit', '', '', '0000-00-00', '', '', '0000-00-00', '', 'Active'),
(1348, 23, 0, '2020-03-05', 650.00, 'Deposit', 'Debit Card', '1234567890123456', '2021-01-01', '159', 'Raj kiran', '0000-00-00', '', 'Active'),
(1349, 28, 157, '2020-08-27', 100.00, 'Sell', 'Debit Card', '4458966511144589', '2021-01-01', '486', 'Surendra', '0000-00-00', '', 'Active'),
(1350, 28, 0, '2020-08-27', 100.00, 'Deposit', 'Debit Card', '1478529631234568', '2021-01-01', '158', 'Rupesh kumar', '0000-00-00', '', 'Active'),
(1351, 30, 158, '2021-04-05', 100.00, 'Sell', 'Credit card', '1234567890123456', '2022-01-01', '456', 'Raj', '0000-00-00', '', 'Active'),
(1352, 31, 0, '2021-04-05', 100.00, 'Deposit', 'Credit card', '1231231231231233', '2021-07-01', '547', 'Raj kiran', '0000-00-00', '', 'Active'),
(1353, 30, 159, '2021-04-05', 100.00, 'Sell', 'Debit Card', '9872345678909876', '2022-01-01', '342', 'Ramjran', '0000-00-00', '', 'Active'),
(1354, 2, 160, '2021-05-09', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '158', 'Ram kumar', '0000-00-00', '', 'Active'),
(1355, 2, 0, '2021-05-09', 100.00, 'Deposit', 'Debit Card', '7894561230123546', '2022-01-01', '589', 'Mahesh', '0000-00-00', '', 'Active'),
(1356, 30, 161, '2021-08-22', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '157', 'Raj kiran', '0000-00-00', '', 'Active'),
(1357, 35, 187, '2021-08-24', 100.00, 'Sell', 'Debit Card', '1234567890123456', '2022-01-01', '158', 'Raj Kiran', '0000-00-00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_icon`, `description`, `status`) VALUES
(16548, 'Mobile Phones', '363950331mobiles.jpg', 'Mobile Phone and Accessaries', 'Active'),
(16549, 'Laptops', '1293881421laptop.jpg', 'Laptops and Accessaries', 'Active'),
(16550, 'Camera', '155622865Camera.jpg', 'Camera and Accessaries', 'Active'),
(16551, 'Others', '1871695161', 'Other categories', 'Active'),
(16552, 'Watches', '5837watch.jpg', ' white day and date watch, which will never let you stay behind time.', 'Active'),
(16558, 'Collectibles', 'oldcoinandnotes.jpg', 'Old Coin and Notes', 'Active'),
(16559, 'Tablet Phones', 'tabphones.jpg', 'Tablet Phones', 'Active'),
(16560, 'Gold jewellery', 'Gold jewellery.jpg', 'Gold jewellery', 'Active'),
(16561, 'Sports and Games', '2075867780Sports & Games.jpg', 'Sports & Games', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_fname` varchar(50) NOT NULL,
  `customer_lname` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_lname`, `email_id`, `password`, `address`, `state`, `city`, `landmark`, `pincode`, `mobile_no`, `note`, `status`) VALUES
(2, 'Rajesh Krishna', '', 'rajeshkrishna@gmail.com', '123456123456', 'Junction, Bendoorwell, Kankanady', 'Karnataka', 'Mangalore', 'Juntion Road', '575002', '7894561230', '', 'Active'),
(7, 'Mahesh Kumar', '', 'maheshkumar@gmail.com', '123456789', '3rd floor, city light building', 'Karnataka', 'Mangalroe', 'Khazana Jeweller', '575003', '8217727968', '', 'Active'),
(8, 'Preetham Bhat', '', 'preethambhat@gmail.com', 'q1w2e3r4', 'Balmatta Junction, Near Collector\'s Gate', 'Karnataka', 'Mangalore', 'RTO Junction', '575002', '9874563210', '', 'Active'),
(9, 'Hudson A K', '', 'hudsonak@gmail.com', 't5y6u7i8', 'Near Syndicate Circle, opp. Domino\'s Pizza, Manipal', 'Karnataka', 'Manipal', 'Near KMC Hospital', '576104', '7894561230', '', 'Active'),
(22, 'Manthesh kumar', '', 'mantheshkumar@gmail.com', '123456789', 'No.52, Jyoti Nivas College, 5th Block, Koramangala', 'Karnataka', 'Bengaluru', 'Premises of Tibetan Kitchen', '560095', '9874563210', '', 'Active'),
(23, 'Nanda Gopal', '', 'nandagopal@gmail.com', '123456789', 'Apartment no. 02, 1st Cross Rd, Shastri Nagar', 'Karnataka', 'Ballari', 'RH Road', '583103', '9986055414', '', 'Active'),
(24, 'Manish Kumar', '', 'manishkumar@gmail.com', '123456789', 'Adi-udupi, Karnataka 576102', 'Karnataka', 'Mangalroe', 'Adi-udupi', '575003', '8217727968', '', 'Active'),
(25, 'Suraj Mishra', '', 'surajmishra@gmail.com', '123456789', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Karnataka', 'Puttur', 'Philomena college', '574203', '8217778968', '', 'Active'),
(26, 'Susheel kumar', '', 'susheelkumar@gmail.com', 'susheel123456789', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Karnataka', 'Puttur', 'Philomena college', '574203', '8217778968', '', 'Active'),
(27, 'Prateek shetty', '', 'prathikshetty@gmail.com', 'pratik', 'Shiva kripa, Vidya nagar, Post Nehru Nagar', 'Karnataka', 'Puttur', 'Philomena college', '574203', '8217778968', '', 'Active'),
(28, 'Surendra kumar', '', 'surendrakumar23@gmail.com', '123456789', '', '', '', '', '', '+919986051445', '', 'Active'),
(29, 'Pranesh', '', 'mvaravinda123@gmail.com', 'q1w2e3r4/', '', '', '', '', '', '+919986058114', '', 'Active'),
(30, 'Achintya Kumar', '', 'achintyakumar@gmail.com', 'q1w2e3r4', '5th cross,\r\nBarikatte', 'Karnataka', 'Bangalore', 'KFC', '567367', '9985637336323', '', 'Active'),
(31, 'Vilass kumar', '', 'vilaskumar@gmail.com', 'q1w2e3r4', '', '', '', '', '', '9876543211', '', 'Active'),
(35, 'ARavinda', '', 'actingtoys@gmail.com', 'q1w2e3r4a', '', '', '', '', '', '+919874563210', '', 'Active'),
(36, 'Aravinda', 'MV', 'mvaravinda@gmail.com', 'q1w2e3r4aa', '', '', '', '', '', '+919986058114', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `login_id`, `password`, `employee_type`, `status`) VALUES
(1, 'Administrator', 'admin', 'adminadminadmin', 'Admin', 'Active'),
(5, 'Employee', 'employee', 'employee', 'Employee', 'Active'),
(6, 'Anand', 'anand', 'q1w2e3r4', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `message_date_time` datetime NOT NULL,
  `product_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `receiver_id`, `message_date_time`, `product_id`, `message`, `status`) VALUES
(23, 23, 9, '2020-03-05 14:58:45', 141, 'Hello\n', 'Customer'),
(24, 23, 9, '2020-03-05 19:31:48', 141, 'Hello\n', 'Seller'),
(25, 24, 9, '2020-03-05 15:02:38', 141, 'Hello hudson\n', 'Customer'),
(26, 24, 9, '2020-03-05 19:32:55', 141, 'Hello manish\n', 'Seller'),
(27, 24, 9, '2020-03-05 15:13:07', 141, 'Hello\n', 'Customer'),
(28, 24, 9, '2020-03-05 15:14:01', 141, 'Hi\n', 'Customer'),
(29, 24, 9, '2020-03-05 15:14:06', 141, 'Hello\n', 'Customer'),
(30, 23, 9, '2020-03-05 19:44:20', 141, 'Hello\n', 'Seller'),
(31, 24, 9, '2020-03-05 15:17:35', 141, 'Hello\n', 'Customer'),
(32, 24, 9, '2020-03-05 19:47:48', 141, 'Test message\n', 'Seller'),
(33, 24, 9, '2020-03-05 15:19:18', 141, 'Hello\n', 'Customer'),
(34, 24, 9, '2020-03-05 15:19:31', 141, 'aa\n', 'Customer'),
(35, 24, 9, '2020-03-05 15:21:01', 141, 'welcome\n', 'Customer'),
(36, 24, 9, '2020-03-05 19:51:15', 141, 'yesll\n', 'Seller'),
(37, 28, 8, '2020-08-27 15:08:00', 156, 'Hello\n', 'Customer'),
(38, 28, 8, '2020-08-27 15:08:38', 156, 'I wanted to know some features about this product\n', 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_id` int(10) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_type`, `product_id`, `bidding_id`, `paid_amount`, `paid_date`, `status`) VALUES
(214, 7, 'Bid', 128, 3214, 4.50, '2020-02-05', 'Active'),
(215, 9, 'Bid', 128, 3215, 4.75, '2020-02-06', 'Active'),
(216, 2, 'Bid', 129, 3216, 0.26, '2020-02-13', 'Active'),
(217, 2, 'Bid', 129, 3217, 0.30, '2020-02-13', 'Active'),
(218, 2, 'Bid', 128, 3218, 5.00, '2020-02-13', 'Active'),
(219, 2, 'Bid', 128, 3219, 5.25, '2020-02-13', 'Active'),
(220, 2, 'Bid', 129, 3220, 0.40, '2020-02-13', 'Active'),
(221, 2, 'Bid', 143, 3221, 0.10, '2020-03-04', 'Active'),
(222, 2, 'Bid', 143, 3222, 0.12, '2020-03-04', 'Active'),
(223, 2, 'Bid', 143, 3223, 0.01, '2020-03-04', 'Active'),
(224, 9, 'Bid', 143, 3224, 0.01, '2020-03-04', 'Active'),
(225, 9, 'Bid', 143, 3225, 0.02, '2020-03-04', 'Active'),
(226, 23, 'Bid', 148, 3226, 0.10, '2020-03-05', 'Active'),
(227, 23, 'Bid', 148, 3227, 5.00, '2020-03-05', 'Active'),
(228, 23, 'Bid', 148, 3228, 15.00, '2020-03-05', 'Active'),
(229, 23, 'Bid', 148, 3229, 15.00, '2020-03-05', 'Active'),
(230, 23, 'Bid', 148, 3230, 15.00, '2020-03-05', 'Active'),
(231, 23, 'Bid', 148, 3231, 15.00, '2020-03-05', 'Active'),
(232, 23, 'Bid', 148, 3232, 15.00, '2020-03-05', 'Active'),
(233, 23, 'Bid', 148, 3233, 15.00, '2020-03-05', 'Active'),
(234, 23, 'Bid', 148, 3234, 15.00, '2020-03-05', 'Active'),
(235, 23, 'Bid', 148, 3235, 15.00, '2020-03-05', 'Active'),
(236, 23, 'Bid', 148, 3236, 15.00, '2020-03-05', 'Active'),
(237, 23, 'Bid', 148, 3237, 16.00, '2020-03-05', 'Active'),
(238, 23, 'Bid', 148, 3238, 17.00, '2020-03-05', 'Active'),
(239, 23, 'Bid', 148, 3239, 18.00, '2020-03-05', 'Active'),
(240, 23, 'Bid', 148, 3240, 18.00, '2020-03-05', 'Active'),
(241, 23, 'Bid', 148, 3241, 19.00, '2020-03-05', 'Active'),
(242, 23, 'Bid', 148, 3242, 19.00, '2020-03-05', 'Active'),
(243, 23, 'Bid', 148, 3243, 20.00, '2020-03-05', 'Active'),
(244, 28, 'Bid', 156, 3244, 0.25, '2020-08-27', 'Active'),
(245, 31, 'Bid', 158, 3245, 0.12, '2021-04-05', 'Active'),
(246, 2, 'Bid', 158, 3246, 0.15, '2021-05-09', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_description` text NOT NULL,
  `starting_bid` float(10,2) NOT NULL,
  `ending_bid` float(10,2) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `product_cost` float(10,2) NOT NULL,
  `product_image` text NOT NULL,
  `product_warranty` varchar(100) NOT NULL,
  `product_delivery` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `customer_id`, `product_name`, `category_id`, `product_description`, `starting_bid`, `ending_bid`, `start_date_time`, `end_date_time`, `product_cost`, `product_image`, `product_warranty`, `product_delivery`, `company_name`, `status`) VALUES
(126, 7, 'Xiaomi Redmi Note 8', 16548, 'Xiaomi Redmi Note 8 is a mid-range that can impress the buyers with its stylish design. The device offers no bezels except for a thin chin. It offers an amazing viewing experience that knows no boundary. It also delivers stellar performance with the strong internal hardware along with long-hour battery backup coupled with Fast Charging technology.', 100.00, 0.00, '2020-02-05 10:18:00', '2020-02-08 05:30:00', 10000.00, '2020024625xiaomi-redmi-note-8.jpg', '1', 'Excellent camerasGreat performanceGood battery backupFast Charging suppor', 'Xiami', 'Active'),
(127, 8, 'Lenovo Ideapad S145 8th Gen', 16549, 'Operating System: Pre-loaded Windows 10 Home with lifetime validity and Microsoft Office 2019\r\nDisplay: 15.6-inch screen with (1920X1080) full HD display | Anti Glare technology\r\nMemory and Storage: 4 GB RAM | Storage 256 GB SSD\r\nDesign and battery: Thin and light Laptop| 180 Degree Hinge| Laptop weight 1.85kg | Battery Life: Upto 5.5 hours as per MobileMark\r\nThis genuine Lenovo Laptop comes with 1 year onsite domestic warranty from Lenovo covering manufacturing defects and not covering physical damage. For more details, see Warranty section\r\nInside the box: Laptop, Charger, User Manual | With Microsoft Office 2019\r\nPorts and Optical Drive: 1 HDMI, 2 USB 3.0, USB 2.0 |4-in-1 card reader (SD,SDHC,SDXC,MMC)|Combo audio and microphone jack |No Optical Drive', 1.00, 1.00, '2020-02-05 10:51:46', '2020-02-07 05:30:00', 10000.00, '1160091601laptop.jpg', '1', 'Delivery in 7 - 8 days', 'Lenovo', 'Active'),
(128, 8, 'Canon EOS R Mirrorless Digital Camera', 16550, 'The first step in Canon\'s mirrorless evolution, the EOS R pairs a redeveloped lens mount and updated full-frame image sensor for a unique and sophisticated multimedia camera system. Revolving around the new RF lens mount, the EOS R is poised to be the means from which to make the most of a new series of lenses and optical technologies.', 1.00, 525.00, '2020-02-05 10:55:36', '2021-02-05 05:30:00', 50000.00, '1249798823Camera.jpg', 'Mangalore', 'test', 'aishu', 'Active'),
(129, 9, 'Redmi Note 7S', 16548, 'With its 13 MP AI front camera, the Redmi Note 7S takes your selfie game to the next level, allowing you to click gorgeous and Instagram-worthy pictures effortlessly.', 25.00, 40.00, '2020-02-06 10:53:42', '2020-09-29 05:30:00', 8999.00, '19660redmi note7.jpeg', '1 year', '3 Days', 'Redmi', 'Active'),
(138, 2, 'Acer A315-21 Aspire 3 Laptop', 16549, 'You\'re looking at the Acer Aspire 3 A315-21 laptop. This is one of the most affordable laptops around and it still offers a great bang for your buck. For this price, you get a lot more than you might imagine. It runs an AMD A4 9120 dual-core processor and even 4GB of RAM. This really is more than enough for running most software you might use daily. There is even an integrated Radeon R3 series of graphics solution on this laptop. The benefit is a surprisingly decent performance in running some graphics intensive software, that can include streaming movies, even some basic image and video editing tools. If you thought you would get very limited storage options, you\'re wrong. It has a massive 1TB hard disk drive, which is way more than you\'ll need to store all your favourite software, photos, music and movies. This is by no means a netbook, it\'s a full-functional notebook, so it comes with a large 15.6-inch display, even a full-sized keyboard. These things about it make it ideal as a desktop replacement for home.', 100.00, 100.00, '2020-03-04 10:05:05', '2020-09-04 05:30:00', 25000.00, 'acerlaptop.jpg', '', '3-4 Days', 'acer', 'Active'),
(139, 2, 'aaaaaaaaaaaaaaaaaaaa', 16549, 'asasasasas', 100.00, 100.00, '2020-03-04 10:18:21', '2020-03-04 05:30:00', 25000.00, '22368cia-new-poster-759.jpeg', '', '4-5 days', 'lpo', 'Pending'),
(140, 9, 'OnePlus', 16548, '48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image', 1.00, 1.00, '2020-03-04 20:34:00', '2020-03-05 20:34:00', 35000.00, 'oneplus-7t-dual-sim.jpg', '', '4-5 days', 'One Plus', 'Active'),
(141, 9, 'OnePlus T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 1.00, 1.00, '2021-03-04 20:42:00', '2020-03-05 20:42:00', 34999.00, '7t-9_1_1-473x473.jpg', '', '5-7 days', 'OnePlus', 'Active'),
(142, 0, 'OnePlus 7T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 0.00, 0.00, '2020-03-04 21:15:00', '2020-03-05 21:15:00', 35000.00, '7t-9_1_1-473x473.jpg', '', '4-5 days', 'Oneplus', 'Active'),
(143, 0, 'OnePlus 7T', 16548, 'Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery', 1.00, 0.00, '2020-03-04 21:18:00', '2020-03-08 21:18:00', 34999.00, '944046643OnePlus 7T.jpg', '', '5-7 days', 'OnePlus', 'Active'),
(148, 0, 'Canon EOS 5D', 16550, 'The Canon EOS 5D Mark IV camera is made for people who take photography seriously. With features, such as the 30.4 MP Full-frame CMOS Sensor, Dual Pixel CMOS AF and 4K Movie Shooting, this camera not only delivers beautiful stills, but it also lets you take incredible videos.', 5.00, 15.00, '2020-03-05 18:18:00', '2020-03-15 18:18:00', 35000.00, '18563canon.jpeg', '', '4-5 days', 'Canon', 'Active'),
(149, 0, 'Redmi 8 - Ruby Red, 64 GB  4 GB RAM', 16548, 'If you are a travel blogger, gamer, entertainment seeker, or a person who loves a high-end personal device, then the Redmi 8 has been created to meet your needs. This smartphone features a 15.8-cm (6.22) Dot Notch Display, a 12 MP + 2 MP AI Dual Camera, and a 5000 mAh High-capacity Battery to offer detailed views of the stunning photos that you can click all day long without running out of battery life.', 50.00, 0.00, '2020-08-27 16:48:00', '2020-08-31 16:48:00', 10000.00, '606975566miphone.jpeg', '', '3-4 Days', 'Redmi', 'Active'),
(150, 9, '1853 USA 1 Cent Liberty Head coin', 16558, 'The 1853 Liberty Head Large Cent is an old coin that was produced by the US Mint many, many years ago. Despite its age, the coin itself is one of the most sought after by collectors from the US and abroad. Being that the coins are so old, the quantity available is decreasing all the time. With that being said, there has never been a better time than now for you to get your hands on one.', 25.00, 0.00, '2020-08-25 16:48:00', '2020-09-25 16:18:00', 5000.00, 'usacoin.jpg', 'NA', '3-4 Days', 'CoinGate', 'Active'),
(151, 8, 'INDIA 2006 1000 RUPEES FIRST PREFIX SOLID NUMBER', 16558, 'The Indian 1000-rupee banknote (?1000) was a denomination of the Indian rupee. It was first introduced by the Reserve Bank of India in 1938 under British rule and subsequently demonetized in 1946.', 150.00, 0.00, '2020-08-24 16:48:00', '2020-09-25 16:18:00', 50000.00, 's-l1600.jpg', 'NA', '3-4 Days', 'CoinGate', 'Active'),
(152, 7, 'Bronze Vase China 19 Century', 16558, 'Bronze vase, China, XIX century Dimensions: approx. 19 x 16 cm. Diameter below: approx. 10.3 cm. Diameter at the top: approx. 13.7 cm. Used condition, age-related wear, small dents and scratches, old solder joint', 200.00, 0.00, '2020-08-24 16:48:00', '2020-09-25 16:18:00', 50000.00, 'Bronze Vase China 19 Century.jpg', 'NA', '3-4 Days', 'Vishi', 'Active'),
(153, 2, 'India 1996 Complete Stamps collection', 16558, 'India 1996 Complete Year Pack Stamp Full Set 43 Different Stamps from Stampbazar', 100.00, 0.00, '2020-08-24 15:48:00', '2020-09-25 16:18:00', 3000.00, 'stamp.jpg', 'NA', '3-4 Days', 'Stampbazar', 'Active'),
(154, 2, 'Dell 7386 Inspiron Laptop', 16549, 'with an innovative design, the versatile and lightweight Inspiron 13 7000 2-in-1 allows you to switch easily beetween four different modes. Tent mode is perfect for using receipts in real time, stand mode for movies on the aeroplane, laptop mode for trying your novel or emailing work, and tablet mode makes reading while you\'re reclined easier than ever.', 2000.00, 0.00, '2020-08-24 10:05:05', '2020-10-04 05:30:00', 25000.00, 'dell.jpg', '', '3-4 Days', 'dell', 'Active'),
(155, 8, 'Olympus 8-16 x 40 Zoom DPS I Binocular, Black', 16550, 'The Olympus binocular feature 8-16x zoom optical power that brigns sports enthusiasts to easily focus on their game, good for keeping up with fast moving subjects. A large diameter lenses offer upgraded field of view and clear view under dark environment. They also provide UV ray protection so you never have to worry against the sun.', 1000.00, 0.00, '2020-02-05 10:55:36', '2021-02-05 05:30:00', 8000.00, 'Olympus-.jpg', 'One Year', '1-3 days', 'DSL', 'Active'),
(156, 8, 'Fujifilm Instax Mini 9 Party box, Lime Green Insta', 16550, 'This Fujifilm Instax Mini9 Point and Shoot Cameras image is for illustration purpose only. Actual image may vary.', 100.00, 25.00, '2020-02-05 10:55:36', '2021-02-05 05:30:00', 8000.00, 'fujifilm.jpg', 'One Year', '7-10 days', 'DSL', 'Active'),
(157, 28, 'AlloyJewelSeT', 16560, 'Special Design And Unique Structure, A Popular Item\r\nWomen Love Jewellery\r\nSpecially Artificial Jewellery Adore A Women. They Wear It On Different Occasion. They Have Special Importance On Ring Ceremony, Wedding And Festive Time. They Can Also Wear It On Regular Basis . Make Your Moment Memorable With This Range. This Jewellery Features A Unique One Of A Kind Traditional Embellish With Antique Finish.\r\nThis Rich & Famous 2 In 1 Valentine Day Special Heart Pendant With Chain.\r\nRich & Famous Is A Tazs Brand In Fashion Jewelry Sector.', 255.00, 255.00, '2020-08-27 18:23:00', '2020-08-28 18:23:00', 50000.00, '1269626786gold.jpeg', '', '5-7 days', 'Akshaa', 'Active'),
(158, 30, 'Bronze 1 Paisa Coin', 16558, 'Metal bronze copper round shape with hole 1 paisa coin george vi, 1943-1947, diameter 21.32 mm, 2 g- Multi color\r\nRound shape coin with hole\r\nExtremely fine coin\r\nMint mark may be different depends on coin availability\r\nThe images represent actual product though colour of the image and product may slightly differ', 10.00, 15.00, '2021-04-05 00:30:00', '2021-06-06 00:30:00', 5000.00, '116483368571QBdDX+McL._SL1200_.jpg', '', '3-4 Days', 'Indian Coin', 'Active'),
(159, 30, 'Metal Bronze Coin', 16558, '1/2 Pice India 1936 George V – Metal Bronze Indian Coinage British India Coin \r\n100% Genuine Item\r\nSimilar Item Given\r\nLowest Price Deal\r\nBEST BUY', 10.00, 10.00, '2021-04-05 00:49:00', '2021-07-06 00:49:00', 10000.00, '1033808885coin.jpg', '', '7-10 days', 'Indian Coin', 'Active'),
(160, 2, 'HP 15s Dual Core', 16549, 'HP 15s Dual Core 3020e - (4 GB/1 TB HDD/Windows 10 Home) 15s-GY0003AU Thin and Light Laptop  (15.6 inch, Jet Black, 1.76 kg)\r\nStylish & Portable Thin and Light Laptop\r\n15.6 inch HD WLED Backlit BrightView Micro-edge Display (220 nits Brightness, 45% NTSC Color Gamut, 101 PPI)\r\nLight Laptop without Optical Disk Drive', 10.00, 10.00, '2021-05-09 04:31:00', '2021-06-10 04:31:00', 25000.00, '1938265175hp-original-imafxtarxygbevbh.jpeg', '', '3-4 Days', 'HP Laptops', 'Active'),
(161, 30, 'ONEPLUS NORD CE', 16548, '64MP+8MP+2MP triple rear camera with 1080p video at 30/60 fps, 4k 30 fps | 16MP front camera with 1080p video at 30/60 fps.\r\n \r\n\r\n6.43-inch, 90Hz fluid AMOLED display with 2400 x 1080 pixels resolution | 410ppi\r\n \r\n\r\nMemory, Storage & SIM: 12GB RAM | 256GB internal memory on UFS 2.1 storage system.\r\n \r\n\r\nDual SIM (nano + nano) | OnePlus Nord CE currently supports dual 4G SIM Cards or a single 5G SIM + 4G SIM.\r\n \r\n\r\nChipset: Qualcomm Snapdragon 750G 5G mobile platform with an octa-core processor, Kryo 570 CPU (20% improvement from predecessor), and an Adreno 619 GPU (10% improved graphics performance from predecessor).\r\n \r\n\r\nAlexa Hands-Free capable: Download the Alexa app to use Alexa hands-free. Play music, make calls, hear news, open apps, navigate, and more, all using just your voice, while on-the-go.', 100.00, 100.00, '2021-08-22 06:32:00', '2021-08-23 06:32:00', 25500.00, '31005669741I4ZIBgc3S_720x.jpg', '', '4-5 days', 'Oneplus', 'Active'),
(164, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:29:\"818613015Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1827631035Swift-3_ksp-02_l.jpg\";i:2;s:31:\"1813918504Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(165, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:30:\"1700308766Swift-3_ksp-01_l.jpg\";i:1;s:30:\"2140648454Swift-3_ksp-02_l.jpg\";i:2;s:30:\"825200408Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(166, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:30:\"1249883361Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1611214008Swift-3_ksp-02_l.jpg\";i:2;s:30:\"152310677Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(167, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:29:\"845505343Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1037664112Swift-3_ksp-02_l.jpg\";i:2;s:31:\"1968810254Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(168, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:29:\"606326386Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1473510392Swift-3_ksp-02_l.jpg\";i:2;s:30:\"351725804Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(169, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:29:\"116277223Swift-3_ksp-01_l.jpg\";i:1;s:29:\"952594467Swift-3_ksp-02_l.jpg\";i:2;s:30:\"482735923Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(170, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:28:\"85739517Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1410210448Swift-3_ksp-02_l.jpg\";i:2;s:31:\"1789210748Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(171, 35, 'AMD Ryzen', 16549, 'Immerse yourself in your chosen entertainment with an ultra-narrow 5.1 mm bezel offering up to 85.73%1 screen-to-body ratio. With up to 300 nits1, and 100% sRGB1, the 14\" FHD IPS non-glare1 display with DC dimming1 pumps out a consistently rich, bright, and unwavering picture.', 200.00, 200.00, '2021-08-24 22:58:00', '2022-03-05 22:58:00', 50000.00, 'a:3:{i:0;s:30:\"1261047173Swift-3_ksp-01_l.jpg\";i:1;s:29:\"441165800Swift-3_ksp-02_l.jpg\";i:2;s:30:\"627807598Swift-3_Main_2560.jpg\";}', '', '3-4 Days', 'icon', 'Pending'),
(172, 35, 'test abcw asdf', 16549, 'test', 23.00, 23.00, '2021-08-24 23:20:00', '2021-08-25 23:20:00', 454.00, 'a:2:{i:0;s:54:\"1389221815Star-Paint-Wood-Care-Paint-Bucket-5L-web.jpg\";i:1;s:27:\"8622190Swift-3_ksp-01_l.jpg\";}', '', '5-7 days', 'agd', 'Pending'),
(173, 35, 'test abcw asdf', 16549, 'test', 23.00, 23.00, '2021-08-24 23:20:00', '2021-08-25 23:20:00', 454.00, 'a:2:{i:0;s:53:\"692729518Star-Paint-Wood-Care-Paint-Bucket-5L-web.jpg\";i:1;s:30:\"1372002906Swift-3_ksp-01_l.jpg\";}', '', '5-7 days', 'agd', 'Pending'),
(174, 35, 'test abcw asdf', 16549, 'test', 23.00, 23.00, '2021-08-24 23:20:00', '2021-08-25 23:20:00', 454.00, 'a:2:{i:0;s:53:\"238211251Star-Paint-Wood-Care-Paint-Bucket-5L-web.jpg\";i:1;s:29:\"425878333Swift-3_ksp-01_l.jpg\";}', '', '5-7 days', 'agd', 'Pending'),
(175, 35, 'test abc xyz', 16549, 'test', 12.00, 12.00, '2021-08-24 23:23:00', '2021-08-25 23:23:00', 3434.00, 'a:3:{i:0;s:30:\"1823401069Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1592651494Swift-3_ksp-02_l.jpg\";i:2;s:30:\"617108948Swift-3_Main_2560.jpg\";}', '', '5-7 days', 'gtest', 'Pending'),
(176, 35, 'test abc xyz', 16549, 'test', 12.00, 12.00, '2021-08-24 23:23:00', '2021-08-25 23:23:00', 3434.00, 'a:3:{i:0;s:30:\"1800037143Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1973478127Swift-3_ksp-02_l.jpg\";i:2;s:31:\"1305099833Swift-3_Main_2560.jpg\";}', '', '5-7 days', 'gtest', 'Pending'),
(177, 35, 'test abc xyz', 16549, 'test', 12.00, 12.00, '2021-08-24 23:23:00', '2021-08-25 23:23:00', 3434.00, 'a:3:{i:0;s:30:\"1856531046Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1764002286Swift-3_ksp-02_l.jpg\";i:2;s:31:\"1959352350Swift-3_Main_2560.jpg\";}', '', '5-7 days', 'gtest', 'Pending'),
(178, 35, 'test test test', 16549, 'teat ', 23.00, 23.00, '2021-08-24 23:34:00', '2021-08-25 23:34:00', 4545.00, 'a:3:{i:0;s:29:\"252293746Swift-3_ksp-01_l.jpg\";i:1;s:30:\"1915417905Swift-3_ksp-02_l.jpg\";i:2;s:30:\"370750798Swift-3_Main_2560.jpg\";}', '', '4-5 days', 'abcd', 'Pending'),
(179, 35, 'test test test', 16549, 'teat ', 23.00, 23.00, '2021-08-24 23:34:00', '2021-08-25 23:34:00', 4545.00, 'a:3:{i:0;s:27:\"8062364Swift-3_ksp-01_l.jpg\";i:1;s:29:\"684976078Swift-3_ksp-02_l.jpg\";i:2;s:31:\"1960013548Swift-3_Main_2560.jpg\";}', '', '4-5 days', 'abcd', 'Pending'),
(180, 35, 'test test etst', 16549, 'abc', 21.00, 21.00, '2021-08-24 23:34:00', '2021-08-25 23:34:00', 4545.00, 'a:3:{i:0;s:46:\"12617914284a3c8c74375e8fbe5adf99db215ca0e2.jpg\";i:1;s:103:\"52549108715-75-x11-81-beautiful-scenery-5d-diy-diamond-painting-kit-full-original-imaf66kewnc9s69t.jpeg\";i:2;s:27:\"1055854593download (1).jfif\";}', '', '4-5 days', 'test', 'Pending'),
(181, 35, 'test test etst', 16549, 'abc', 21.00, 21.00, '2021-08-24 23:34:00', '2021-08-25 23:34:00', 4545.00, 'a:3:{i:0;s:46:\"12732631604a3c8c74375e8fbe5adf99db215ca0e2.jpg\";i:1;s:103:\"84355722515-75-x11-81-beautiful-scenery-5d-diy-diamond-painting-kit-full-original-imaf66kewnc9s69t.jpeg\";i:2;s:27:\"1286814977download (1).jfif\";}', '', '4-5 days', 'test', 'Pending'),
(182, 35, 'test test etst', 16549, 'abc', 21.00, 21.00, '2021-08-24 23:34:00', '2021-08-25 23:34:00', 4545.00, 'a:3:{i:0;s:46:\"10317571884a3c8c74375e8fbe5adf99db215ca0e2.jpg\";i:1;s:102:\"6316076115-75-x11-81-beautiful-scenery-5d-diy-diamond-painting-kit-full-original-imaf66kewnc9s69t.jpeg\";i:2;s:26:\"926976945download (1).jfif\";}', '', '4-5 days', 'test', 'Pending'),
(183, 35, 'test test test', 16549, 'abc abc', 32.00, 32.00, '2021-08-24 23:36:00', '2021-08-25 23:36:00', 4545.00, 'a:1:{i:0;s:30:\"1144262902Swift-3_ksp-02_l.jpg\";}', '', '4-5 days', 'abcd', 'Pending'),
(184, 35, 'test test test', 16549, 'abc abc', 32.00, 32.00, '2021-08-24 23:36:00', '2021-08-25 23:36:00', 4545.00, 'a:1:{i:0;s:29:\"562732850Swift-3_ksp-02_l.jpg\";}', '', '4-5 days', 'abcd', 'Pending'),
(185, 35, 'test test test', 16549, 'abc abc', 32.00, 32.00, '2021-08-24 23:36:00', '2021-08-25 23:36:00', 4545.00, 'a:1:{i:0;s:29:\"483774975Swift-3_ksp-02_l.jpg\";}', '', '4-5 days', 'abcd', 'Pending'),
(186, 35, 'HP 15s Ryzen 5 Quad Core 3500U', 16549, 'Sales Package\r\nLaptop, Battery, Adapter, Cables and User Manuals\r\nModel Number\r\n15s-gr0500AU\r\nPart Number\r\n440L7PA\r\nSeries\r\n15s\r\nColor\r\nNatural Silver\r\nType\r\nThin and Light Laptop\r\nSuitable For\r\nProcessing & Multitasking\r\nBattery Backup\r\nUp to 6 Hours\r\nPower Supply\r\n65 W Smart AC Adapter\r\nBattery Cell\r\n3 Cell\r\nMS Office Provided\r\nNo\r\nProcessor And Memory Features\r\nProcessor Brand\r\nAMD\r\nProcessor Name\r\nRyzen 5 Quad Core\r\nSSD\r\nYes\r\nSSD Capacity\r\n512 GB\r\nRAM\r\n8 GB\r\nRAM Type\r\nDDR4\r\nProcessor Variant\r\n3500U\r\nChipset\r\nAMD Integrated SoC\r\nClock Speed\r\n2.1 GHz with Turbo Boost Upto 3.7 GHz\r\nRAM Frequency\r\n2400 MHz\r\nCache\r\n4\r\nGraphic Processor\r\nAMD Radeon\r\nNumber of Cores\r\n4\r\nOperating System\r\nOS Architecture\r\n64 bit\r\nOperating System\r\nWindows 10 Home\r\nSystem Architecture\r\n64\r\nPort And Slot Features\r\nMic In\r\nYes\r\nRJ45\r\nYes\r\nUSB Port\r\n1 x SuperSpeed USB Type-C 5 Gbps Signaling Rate, 2 x SuperSpeed USB Type A 5Gbps Signaling Rate\r\nHDMI Port\r\n1 x HDMI 1.4b\r\nMulti Card Slot\r\n1 x Multi-format SD Media Card Reader\r\nHardware Interface\r\nPCIe NVMe\r\nDisplay And Audio Features\r\nTouchscreen\r\nNo\r\nScreen Size\r\n39.62 cm (15.6 inch)\r\nScreen Resolution\r\n1920 x 1080 Pixels\r\nScreen Type\r\nFull HD Diagonal Micro-edge, Anti-glare Display (220 nits, 45% NTSC)\r\nSpeakers\r\nBuilt-in Dual Speakers\r\nInternal Mic\r\nBuilt-in Microphone\r\nConnectivity Features\r\nWireless LAN\r\nRealtek RTL8821CE 802.11a/b/g/n/ac (1x1) Wi-Fi\r\nBluetooth\r\nv4.2\r\nEthernet\r\nIntegrated 10/100/1000 GbE LAN\r\nDimensions\r\nDimensions\r\n358.5 x 242 x 19.9\r\nWeight\r\n1.74 Kg\r\nAdditional Features\r\nDisk Drive\r\nNot Available\r\nWeb Camera\r\nHP True Vision 720p HD Webcam\r\nFinger Print Sensor\r\nNo\r\nKeyboard\r\nFull-size, Natural Silver Keyboard with Numeric Keypad\r\nBacklit Keyboard\r\nNo\r\nPointer Device\r\nTouchpad with Multi-touch Gesture Support, Precision Touchpad Support\r\nIncluded Software\r\nMcAfee LiveSafe\r\nAdditional Features\r\n41 Wh Li-ion, Supports Battery Fast Charge: Approximately 50% in 45 Minutes\r\nWarranty\r\nWarranty Summary\r\n1 Year Onsite Warranty\r\nWarranty Service Type\r\nOnsite\r\nCovered in Warranty\r\nManufacturing Defects\r\nNot Covered in Warranty\r\nPhysical Damage\r\nDomestic Warranty\r\n1 Year', 10.00, 10.00, '2021-08-24 23:39:00', '2022-08-25 23:39:00', 25000.00, 'a:3:{i:0;s:67:\"665453083na-thin-and-light-laptop-hp-original-imag4r6xquheeasd.jpeg\";i:1;s:43:\"2058028497hp-original-imafug7gazzawdzv.jpeg\";i:2;s:68:\"1851719731na-thin-and-light-laptop-hp-original-imag4r6xxpg9yvkk.jpeg\";}', '', '4-5 days', 'ABCd', 'Pending'),
(187, 35, 'HP 15s Ryzen 5 Quad Core 3500U', 16549, 'Sales Package\r\nLaptop, Battery, Adapter, Cables and User Manuals\r\nModel Number\r\n15s-gr0500AU\r\nPart Number\r\n440L7PA\r\nSeries\r\n15s\r\nColor\r\nNatural Silver\r\nType\r\nThin and Light Laptop\r\nSuitable For\r\nProcessing & Multitasking\r\nBattery Backup\r\nUp to 6 Hours\r\nPower Supply\r\n65 W Smart AC Adapter\r\nBattery Cell\r\n3 Cell\r\nMS Office Provided\r\nNo\r\nProcessor And Memory Features\r\nProcessor Brand\r\nAMD\r\nProcessor Name\r\nRyzen 5 Quad Core\r\nSSD\r\nYes\r\nSSD Capacity\r\n512 GB\r\nRAM\r\n8 GB\r\nRAM Type\r\nDDR4\r\nProcessor Variant\r\n3500U\r\nChipset\r\nAMD Integrated SoC\r\nClock Speed\r\n2.1 GHz with Turbo Boost Upto 3.7 GHz\r\nRAM Frequency\r\n2400 MHz\r\nCache\r\n4\r\nGraphic Processor\r\nAMD Radeon\r\nNumber of Cores\r\n4\r\nOperating System\r\nOS Architecture\r\n64 bit\r\nOperating System\r\nWindows 10 Home\r\nSystem Architecture\r\n64\r\nPort And Slot Features\r\nMic In\r\nYes\r\nRJ45\r\nYes\r\nUSB Port\r\n1 x SuperSpeed USB Type-C 5 Gbps Signaling Rate, 2 x SuperSpeed USB Type A 5Gbps Signaling Rate\r\nHDMI Port\r\n1 x HDMI 1.4b\r\nMulti Card Slot\r\n1 x Multi-format SD Media Card Reader\r\nHardware Interface\r\nPCIe NVMe\r\nDisplay And Audio Features\r\nTouchscreen\r\nNo\r\nScreen Size\r\n39.62 cm (15.6 inch)\r\nScreen Resolution\r\n1920 x 1080 Pixels\r\nScreen Type\r\nFull HD Diagonal Micro-edge, Anti-glare Display (220 nits, 45% NTSC)\r\nSpeakers\r\nBuilt-in Dual Speakers\r\nInternal Mic\r\nBuilt-in Microphone\r\nConnectivity Features\r\nWireless LAN\r\nRealtek RTL8821CE 802.11a/b/g/n/ac (1x1) Wi-Fi\r\nBluetooth\r\nv4.2\r\nEthernet\r\nIntegrated 10/100/1000 GbE LAN\r\nDimensions\r\nDimensions\r\n358.5 x 242 x 19.9\r\nWeight\r\n1.74 Kg\r\nAdditional Features\r\nDisk Drive\r\nNot Available\r\nWeb Camera\r\nHP True Vision 720p HD Webcam\r\nFinger Print Sensor\r\nNo\r\nKeyboard\r\nFull-size, Natural Silver Keyboard with Numeric Keypad\r\nBacklit Keyboard\r\nNo\r\nPointer Device\r\nTouchpad with Multi-touch Gesture Support, Precision Touchpad Support\r\nIncluded Software\r\nMcAfee LiveSafe\r\nAdditional Features\r\n41 Wh Li-ion, Supports Battery Fast Charge: Approximately 50% in 45 Minutes\r\nWarranty\r\nWarranty Summary\r\n1 Year Onsite Warranty\r\nWarranty Service Type\r\nOnsite\r\nCovered in Warranty\r\nManufacturing Defects\r\nNot Covered in Warranty\r\nPhysical Damage\r\nDomestic Warranty\r\n1 Year', 25.00, 25.00, '2021-08-24 23:41:00', '2022-08-25 23:41:00', 50000.00, 'a:3:{i:0;s:43:\"1054890393hp-original-imafug7gazzawdzv.jpeg\";i:1;s:67:\"423877211na-thin-and-light-laptop-hp-original-imag4r6xquheeasd.jpeg\";i:2;s:67:\"641779853na-thin-and-light-laptop-hp-original-imag4r6xxpg9yvkk.jpeg\";}', '', '7-10 days', 'Hewlett Packard', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `webconfig`
--

CREATE TABLE `webconfig` (
  `webconfig_id` int(11) NOT NULL,
  `web_title` varchar(50) NOT NULL,
  `web_tagline` varchar(100) NOT NULL,
  `web_logo` varchar(255) NOT NULL,
  `favicon_logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webconfig`
--

INSERT INTO `webconfig` (`webconfig_id`, `web_title`, `web_tagline`, `web_logo`, `favicon_logo`) VALUES
(3, 'Online Auction', 'Online Bidding Website', 'img/1639226498logo.png', 'img/1639226264online-auction.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE `webpage` (
  `webpage_id` int(11) NOT NULL,
  `webpage_link` varchar(50) NOT NULL,
  `webpage_title` varchar(150) NOT NULL,
  `webpage_description` text NOT NULL,
  `webpage_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `webpage`
--

INSERT INTO `webpage` (`webpage_id`, `webpage_link`, `webpage_title`, `webpage_description`, `webpage_image`) VALUES
(1, 'about-us.php', 'About Online Auction System', '<p>OnlineAuction site gives an opportunity to those people who can&#39;t afford to purchase costly branded products, they can try our risk free auctions to win their desired products like Cars, Bikes, Smartphones, Laptop, Tablets &amp; branded watches.</p>\r\n\r\n<p>Welcome to OnlineAuction, one of the best Indian online auction shopping venues on the Net! This web site is owned and operated by OnlineAuction; successful business persons from west region of India.</p>\r\n\r\n<p>OnlineAuction conducted it&#39;s 1st online auction on 1st December 2019. Since then we are proudly India&#39;s No-1 Online Auctioneer with 20k+ Registered Members</p>\r\n\r\n<p>OnlineAuction has introduced a completely new and funny way of online shopping.</p>\r\n', 'img/1639228920images.png');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winner_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `winners_image` varchar(100) NOT NULL,
  `winning_bid` float(10,2) NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winner_id`, `product_id`, `customer_id`, `winners_image`, `winning_bid`, `end_date`, `status`) VALUES
(3, 126, 2, 'Willy-Nilly_My_Passport_Size_Photo.jpg', 440.00, '2020-02-13', 'Pending'),
(4, 143, 9, 'Sandip_pic.png', 26.00, '2020-03-04', 'Pending'),
(5, 148, 25, 'saiful-bi.jpg', 25.00, '2020-03-05', 'Pending'),
(6, 150, 26, 'ashok.jpg', 368.00, '2020-03-05', 'Pending'),
(7, 151, 23, 'D-25456-a copy.jpg', 155.00, '2020-03-05', 'Pending'),
(8, 152, 24, 'c53aa684465bc61455fd0d21537752fb.jpg', 1200.00, '2020-03-05', 'Pending'),
(9, 153, 27, 'Passport-Size-Pic.jpg', 665.00, '2020-03-05', 'Pending'),
(10, 127, 22, 'unnamed.jpg', 545.00, '2020-03-05', 'Pending'),
(11, 128, 8, 'Passport_Size_Image_of_Nouman.jpg', 515.00, '2020-03-05', 'Pending'),
(12, 129, 7, 'create-passport-size.jpg', 515.00, '2020-03-05', 'Pending'),
(13, 156, 28, '', 25.00, '2020-08-27', 'Pending'),
(14, 158, 2, '', 15.00, '2021-05-09', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bidding_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `webconfig`
--
ALTER TABLE `webconfig`
  ADD PRIMARY KEY (`webconfig_id`);

--
-- Indexes for table `webpage`
--
ALTER TABLE `webpage`
  ADD PRIMARY KEY (`webpage_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bidding_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3247;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1358;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16562;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `webconfig`
--
ALTER TABLE `webconfig`
  MODIFY `webconfig_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webpage`
--
ALTER TABLE `webpage`
  MODIFY `webpage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
