-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 20, 2020 at 03:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `martdevelopers_coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shop_admin`
--

CREATE TABLE `coffee_shop_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffee_shop_admin`
--

INSERT INTO `coffee_shop_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'sysadmin@icofee.org', 'a69681bcf334ae130217fea4505fd3c994f5683f');

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shop_customers`
--

CREATE TABLE `coffee_shop_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phoneno` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffee_shop_customers`
--

INSERT INTO `coffee_shop_customers` (`customer_id`, `customer_name`, `customer_phoneno`, `customer_email`, `customer_password`, `created_at`) VALUES
('1fc1f694985d', 'Jane Doe', '+254737229776', 'janedoe@icoffee.org', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2020-08-20 11:19:46.046743'),
('29c759d624f9', 'Mart Developers Inc', '+254737229776', 'mail@martdevelopers.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2020-08-19 12:51:26.816085'),
('7c8f2100d552', 'Customer 002', '+2547896744', 'customer002@gmail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2020-08-18 08:55:29.347139'),
('fe6bb69bdd29', 'Customer 001', '+2547896744', 'customer001@gmail.com', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2020-08-18 08:56:52.270325');

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shop_orders`
--

CREATE TABLE `coffee_shop_orders` (
  `order_id` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `prod_qty` varchar(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffee_shop_orders`
--

INSERT INTO `coffee_shop_orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `prod_id`, `prod_name`, `prod_price`, `prod_qty`, `order_status`, `created_at`) VALUES
('003230df5d', 'FGWY-2067', '7c8f2100d552', 'Customer 002', '21dfb3c6f0', 'Pumpkin Spice', '500', '1', '', '2020-08-19 13:25:40.312350'),
('1397ac4a43', 'AYNG-7219', 'fe6bb69bdd29', 'Customer 001', '21dfb3c6f0', 'Pumpkin Spice', '500', '2', 'Paid', '2020-08-18 18:41:05.658984'),
('42be812025', 'LXGP-4763', '1fc1f694985d', 'Jane Doe', 'cff0cb495a', 'AMERICANO', '100', '5', 'Paid', '2020-08-20 12:40:13.879610'),
('4b592e398e', 'LNBI-3021', 'fe6bb69bdd29', 'Customer 001', '97972e8d63', 'IRISH COFFEE', '790', '1', '', '2020-08-18 11:51:23.938168'),
('4f0d555db2', 'HCJL-3860', '29c759d624f9', 'Mart Developers Inc', 'f9c2770a32', 'Whipped Milk Shake', '450', '2', 'Paid', '2020-08-19 13:35:53.963206'),
('5f7c4a64c4', 'BYOJ-8531', '7c8f2100d552', 'Customer 002', 'd249da6e83', 'CAFÃ‰ MOCHA', '600', '2', 'Paid', '2020-08-19 10:28:36.640884'),
('65f8f7801b', 'YHOB-2391', '1fc1f694985d', 'Jane Doe', 'e8ffddac2a', 'CAFE CUBANO', '500', '3', '', '2020-08-20 12:34:42.165565'),
('666bd89e6e', 'NCIY-9136', '29c759d624f9', 'Mart Developers Inc', 'b68e7b201c', 'CAFÃ‰ LATTE', '500', '2', 'Paid', '2020-08-19 13:24:52.676894'),
('6f01e8e51a', 'RMXJ-3104', 'fe6bb69bdd29', 'Customer 001', '97972e8d63', 'IRISH COFFEE', '790', '7', 'Paid', '2020-08-19 11:34:54.779660'),
('8ee5414883', 'LCEP-9107', 'fe6bb69bdd29', 'Customer 001', '835a3f1cc5', 'French Vanilla', '200', '1', 'Paid', '2020-08-19 10:27:49.427369'),
('b9b1698199', 'BXDL-3587', 'fe6bb69bdd29', 'Customer 001', '21dfb3c6f0', 'Pumpkin Spice', '500', '1', 'Paid', '2020-08-18 18:43:13.337036'),
('c92b365a7a', 'YLWP-2876', '1fc1f694985d', 'Jane Doe', '21dfb3c6f0', 'Pumpkin Spice', '500', '5', '', '2020-08-20 12:34:33.284424'),
('e0fc5b0ec0', 'UAWP-7361', '1fc1f694985d', 'Jane Doe', '835a3f1cc5', 'French Vanilla', '200', '5', 'Paid', '2020-08-20 12:30:20.488114');

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shop_pass_resets`
--

CREATE TABLE `coffee_shop_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffee_shop_pass_resets`
--

INSERT INTO `coffee_shop_pass_resets` (`reset_id`, `reset_code`, `reset_token`, `reset_email`, `reset_status`, `created_at`) VALUES
(1, '63KU9QDGSO', '4ac4cee0a94e82a2aedc311617aa437e218bdf68', 'sysadmin@icofee.org', 'Pending', '2020-08-17 15:20:14.318643');

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shop_payments`
--

CREATE TABLE `coffee_shop_payments` (
  `pay_id` varchar(200) NOT NULL,
  `pay_code` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `pay_amt` varchar(200) NOT NULL,
  `pay_method` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffee_shop_payments`
--

INSERT INTO `coffee_shop_payments` (`pay_id`, `pay_code`, `order_code`, `customer_id`, `pay_amt`, `pay_method`, `created_at`) VALUES
('138ab5', 'PIEZQ8BOHT', 'UAWP-7361', '1fc1f694985d', '1000', 'Cash', '2020-08-20 12:30:20.381931'),
('295ad9', 'ZO4IL6WAYM', 'BXDL-3587', 'fe6bb69bdd29', '500', 'Cash', '2020-08-18 18:43:13.158440'),
('2ad05c', 'WGQ6529RTN', 'AYNG-7219', 'fe6bb69bdd29', '1000', 'Mpesa', '2020-08-18 18:42:06.373508'),
('2e2fb5', 'VXUAOL1C87', 'NCIY-9136', '29c759d624f9', '1000', 'Cash', '2020-08-19 13:24:52.502554'),
('5811ed', '9KEW83NPAU', 'HCJL-3860', '29c759d624f9', '900', 'Cash', '2020-08-19 13:35:53.811538'),
('6b6caf', '1S3H4C6IDK', 'LXGP-4763', '1fc1f694985d', '500', 'Mpesa', '2020-08-20 12:40:13.784628'),
('792c58', 'FE6AGXRHDV', 'LCEP-9107', 'fe6bb69bdd29', '200', 'Mpesa', '2020-08-19 10:27:48.999060'),
('984da2', '4TOLU9E61F', 'RMXJ-3104', 'fe6bb69bdd29', '5530', 'Cash', '2020-08-19 11:34:54.720479'),
('f7d23f', 'ZRPATQIU7F', 'BYOJ-8531', '7c8f2100d552', '1200', 'Mpesa', '2020-08-19 10:28:36.538143');

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shop_products`
--

CREATE TABLE `coffee_shop_products` (
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffee_shop_products`
--

INSERT INTO `coffee_shop_products` (`prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `created_at`) VALUES
('21dfb3c6f0', 'ZJVX-4671', 'Pumpkin Spice', 'iStock-856503922-2-320x320.jpg', 'Tis the season to indulge in fallÂ’s favorite flavor: pumpkin spice. Nothing keeps you warm on a cold day like sipping on your delicious pumpkin spice latte. Though this flavor may be considered Â‘bas', '500', '2020-08-18 10:20:20.880639'),
('4e68e0dd49', 'QLKW-0914', 'Caramel Macchiato', '', 'Steamed milk, espresso and caramel; what could be more enticing? This blissful flavor is a favorite of coffee lovers due to its deliciously bold taste of creamy caramel and strong coffee flavor. These', '250', '2020-08-18 09:51:11.981675'),
('835a3f1cc5', 'QLHD-6720', 'French Vanilla', '', 'As one of the worldÂ’s most popular flavors, vanilla fits so perfectly with the bold flavor of coffee. French vanilla is a simple yet delectable flavor that adds sweetness to any medium or light roast', '200', '2020-08-18 09:48:13.288922'),
('97972e8d63', 'CVWJ-6492', 'IRISH COFFEE', '', 'A cocktail made of hot coffee, sugar, thick cream, and of course, Irish whiskey!\r\n\r\nThe beverage has an interesting history: the coffee was invented and named by Joe Sheridan â€“ Foynes, Country Lemer', '790', '2020-08-18 10:03:00.598603'),
('b68e7b201c', 'UQTI-2479', 'CAFÃ‰ LATTE', '', 'Cafe latte is made from espresso (one-third), steam milk (two-thirds), topped with about a centimeter of foam. Itâ€™s one of the most popular coffee beverages around, but one that is often mistakenly ', '500', '2020-08-18 10:02:08.816241'),
('bd200ef837', 'HEIY-6034', 'Turkish Coffee', '', 'Turkish coffee boasts an unrivaled taste, body, and aroma â€“ prepared and presented in time-honored Turkish tradition.\r\n\r\nThis isnâ€™t a type of coffee you can easily find in coffee shops. But if you', '300', '2020-08-18 10:01:19.671175'),
('cff0cb495a', 'ZOBW-2640', 'AMERICANO', '', 'Many espresso-based drinks use milk, but not the cafÃ© Americano â€“ or simply \'Americano\'. The drink also uses espresso but is infused with hot water instead of milk. The result is a coffee beverage ', '100', '2020-08-18 10:00:26.602351'),
('d249da6e83', 'MUQX-2793', 'CAFÃ‰ MOCHA', '', 'This variant of the cafÃ© latte is an American invention, one inspired by the coffee beverage Bicerin. The cafÃ© mocha is an espresso-based drink with hot milk and chocolate.', '600', '2020-08-18 09:59:39.268702'),
('e769e274a3', 'AHRW-3894', 'Frappuchino ', '', 'The frappuccino is a Starbucks specialty, coffee blended with ice and other ingredients and topped with whip cream. But you donâ€™t have to go out of your way to enjoy this beverage!', '450', '2020-08-18 09:58:37.731692'),
('e8ffddac2a', 'DOQG-5046', 'CAFE CUBANO', '', 'The cafÃ© cubano â€“ also known as Cuban coffee or Cuban espresso â€“ is a type of espresso that originated from Cuba when espresso machines were first imported from Italy.\r\n\r\nThis espresso shot is sw', '500', '2020-08-18 10:01:45.690734'),
('f9c2770a32', 'YXLA-2603', 'Whipped Milk Shake', 'milkshake.jpeg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', '450', '2020-08-19 13:01:38.817818');

-- --------------------------------------------------------

--
-- Table structure for table `coffee_shop_staff`
--

CREATE TABLE `coffee_shop_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffee_shop_staff`
--

INSERT INTO `coffee_shop_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(2, 'Cashier 001', 'QEUY-9042', 'janedoe@icoffee.org', 'a69681bcf334ae130217fea4505fd3c994f5683f', '2020-08-19 12:44:54.273762');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coffee_shop_admin`
--
ALTER TABLE `coffee_shop_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `coffee_shop_customers`
--
ALTER TABLE `coffee_shop_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `coffee_shop_orders`
--
ALTER TABLE `coffee_shop_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `CustomerOrder` (`customer_id`),
  ADD KEY `ProductOrder` (`prod_id`);

--
-- Indexes for table `coffee_shop_pass_resets`
--
ALTER TABLE `coffee_shop_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `coffee_shop_payments`
--
ALTER TABLE `coffee_shop_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `coffee_shop_products`
--
ALTER TABLE `coffee_shop_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `coffee_shop_staff`
--
ALTER TABLE `coffee_shop_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coffee_shop_pass_resets`
--
ALTER TABLE `coffee_shop_pass_resets`
  MODIFY `reset_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coffee_shop_staff`
--
ALTER TABLE `coffee_shop_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coffee_shop_orders`
--
ALTER TABLE `coffee_shop_orders`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`customer_id`) REFERENCES `coffee_shop_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`prod_id`) REFERENCES `coffee_shop_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
