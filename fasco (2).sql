-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2018 at 12:45 PM
-- Server version: 5.5.58
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fasco`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(2, 'T-Shirt'),
(4, 'Casual Shirts'),
(5, 'Formal Shirts'),
(6, 'Jackets'),
(7, 'Jeans'),
(8, 'Kurtas & Kurta Sets'),
(9, 'Sherwanis'),
(10, 'Nehru Jackets'),
(11, 'Dhoti'),
(12, 'Sarees'),
(13, 'Lehenga Choli'),
(14, 'Jackets & Waistcoats'),
(15, 'Tops, T-Shirts & Shirts'),
(16, 'Trousers & Capris'),
(17, 'Coats & Blazers'),
(18, 'Shirts'),
(19, 'Jeans & Trousers'),
(20, 'Shorts & Dungarees'),
(21, 'Track Pants & Pyjamas'),
(22, 'Indian Wear'),
(23, 'Sweaters, Sweatshirts & Jackets'),
(24, 'Tops & T-Shirts'),
(25, 'Dresses'),
(26, 'Jeans, Trousers & Capris'),
(27, 'Track Pants'),
(28, 'Skirts'),
(29, 'Shorts & Jumpsuits'),
(30, 'shoes'),
(31, 'paint'),
(32, 'bag'),
(33, 'sample'),
(34, 'watch'),
(35, 'jeans'),
(36, 'footer');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `mobile_no` int(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `status` int(20) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `address`, `mobile_no`, `email`, `status`, `last_name`) VALUES
(3, 'fgdfgh', 'nfe\r\nnfrg', 15345125, 'abc@gmail.com', 0, 'dfdnb'),
(4, 'fgdfgh', 'nfe\r\nnfrg', 15345125, 'abc@gmail.com', 0, 'dfdnb'),
(5, 'Dhiraj', 'Gandhidham', 2147483647, 'dhirajrewani2000@gmail.com', 0, 'Rewani'),
(6, 'nikita', '  \r\n                        ', 2147483647, 'ndnbvnfb', 0, 'ffddf'),
(7, 'shruti', '\r\ngshffgfg', 1234567, 'shruti@gmaail.com', 0, 'hsgfheg'),
(8, 'sample', '  \r\n                        ', 1234567890, 'gafdgafdg@g', 0, 'sample'),
(9, 'ftdft', 'dr\r\nr', 1234567890, 'afstt@gmail.com', 0, 'dfrfdt'),
(10, 'admin', '\r\ndbnaksfbnk', 2147483647, 'admin@gmail.com', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `amount` double NOT NULL,
  `status` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `customer_id`, `order_date`, `amount`, `status`) VALUES
(1, 15, 1, '2018-04-17', 600, 0),
(2, 16, 1, '2018-04-17', 400, 0),
(3, 16, 3, '2018-04-19', 1, 0),
(4, 16, 3, '2018-04-19', 400, 0),
(5, 16, 3, '2018-04-19', 400, 0),
(6, 30, 3, '2018-04-19', 800, 0),
(7, 30, 3, '2018-04-19', 800, 0),
(8, 16, 3, '2018-04-20', 400, 0),
(9, 16, 3, '2018-04-20', 400, 0),
(10, 16, 3, '2018-04-20', 400, 0),
(11, 16, 3, '2018-04-20', 400, 0),
(12, 16, 3, '2018-04-20', 400, 0),
(13, 16, 3, '2018-04-20', 400, 0),
(14, 16, 3, '2018-04-20', 400, 0),
(15, 16, 3, '2018-04-20', 400, 0),
(16, 16, 3, '2018-04-20', 400, 0),
(17, 16, 5, '2018-04-20', 400, 0),
(18, 16, 5, '2018-04-20', 400, 0),
(19, 65, 5, '2018-04-20', 2500, 0),
(20, 67, 5, '2018-04-20', 1800, 0),
(21, 15, 5, '2018-04-20', 600, 0),
(22, 17, 5, '2018-04-20', 700, 0),
(23, 65, 5, '2018-04-20', 2500, 0),
(24, 17, 5, '2018-04-20', 700, 0),
(25, 18, 7, '2018-04-20', 1200, 0),
(26, 18, 7, '2018-04-20', 1200, 0),
(27, 253, 3, '2018-04-20', 12000, 0),
(28, 32, 3, '2018-04-20', 999, 0),
(29, 31, 3, '2018-04-20', 400, 0),
(30, 32, 3, '2018-04-20', 999, 0),
(31, 254, 3, '2018-04-20', 134, 0),
(32, 30, 3, '2018-04-20', 800, 0),
(33, 255, 3, '2018-04-20', 1223, 0),
(34, 30, 3, '2018-04-20', 800, 0),
(35, 31, 3, '2018-04-20', 400, 0),
(36, 32, 3, '2018-04-20', 999, 0),
(37, 32, 3, '2018-04-20', 999, 0),
(38, 17, 3, '2018-04-21', 700, 0),
(39, 17, 3, '2018-04-21', 700, 0),
(40, 17, 3, '2018-04-21', 700, 0),
(41, 17, 3, '2018-04-21', 700, 0),
(42, 17, 3, '2018-04-21', 700, 0),
(43, 17, 3, '2018-04-21', 700, 0),
(44, 257, 3, '2018-04-29', 0, 0),
(45, 15, 3, '2018-04-29', 600, 0),
(46, 15, 3, '2018-04-29', 600, 0),
(47, 15, 3, '2018-04-29', 600, 0),
(48, 15, 3, '2018-05-19', 600, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `image_url` varchar(50) NOT NULL,
  `type_id` int(50) NOT NULL,
  `category_id` int(50) NOT NULL,
  `status` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `price`, `image_url`, `type_id`, `category_id`, `status`) VALUES
(15, 'Tommy', '600', 'IMG_Fm4eRt.jpg', 1, 2, 0),
(16, 'Strip', '400', 'IMG_QRtkcy.jpg', 1, 2, 0),
(17, 'Blue ', '700', 'IMG_KYysV9.jpg', 1, 2, 0),
(18, 'White Lives', '1200', 'IMG_wJ8K6H.jpg', 1, 2, 0),
(19, 'Sunday', '900', 'IMG_r1YQgU.jpg', 1, 2, 0),
(20, 'Strep Grey', '700', 'IMG_eCwkLO.jpg', 1, 2, 0),
(21, 'Black Addidas', '1500', 'IMG_kewGmT.jpg', 1, 2, 0),
(22, 'Printed', '500', 'IMG_jkRJhY.jpg', 1, 2, 0),
(23, 'Unique Printed', '1300', 'IMG_v7XbIZ.jpg', 1, 2, 0),
(24, 'Full sleeve', '450', 'IMG_ra1GMF.jpeg', 1, 2, 0),
(25, 'Grey Full Sleeve', '750', 'IMG_BrOmQS.jpg', 1, 2, 0),
(26, 'Shiva', '400', 'IMG_C73hD8.jpg', 1, 2, 0),
(27, 'Black Full Sleeve', '800', 'IMG_t2P3wT.jpeg', 1, 2, 0),
(28, 'Black & White', '550', 'IMG_oGkYRZ.jpg', 1, 2, 0),
(29, 'Vans', '2000', 'IMG_dghQ0K.jpg', 1, 2, 0),
(30, 'White Unique Sleeve', '800', 'IMG_8WxEXL.jpg', 1, 4, 0),
(31, 'Full Checks Shirt', '400', 'IMG_vAgi7T.jpg', 1, 4, 0),
(32, 'Printed ', '999', 'IMG_P2Sl8d.jpg', 1, 4, 0),
(33, 'Checks Printed', '699', 'IMG_opPnmz.jpg', 1, 4, 0),
(34, 'Plain Red', '399', 'IMG_D6Vay7.jpg', 1, 4, 0),
(35, 'Polo Line Shirt', '1299', 'IMG_OVKfyb.jpg', 1, 4, 0),
(36, 'Plain Dark Red Shirt', '599', 'IMG_Whi93n.jpg', 1, 4, 0),
(37, 'Casual Checks Slim Shirt', '700', 'IMG_02JpjK.jpg', 1, 4, 0),
(38, 'Doted Printed Red Shirt ', '1400', 'IMG_7OVMlR.jpg', 1, 4, 0),
(39, 'Checks Stylish Casual Shirt', '444', 'IMG_9gi8ub.jpg', 1, 4, 0),
(40, 'Blue Doted Printed Shirt ', '999', 'IMG_GOJvUb.jpg', 1, 4, 0),
(41, 'Fashion Long Sleeve Shirt', '1500', 'IMG_zrbtuM.jpg', 1, 4, 0),
(42, 'Men\'s Short Sleeve Shirt ', '600', 'IMG_3f849j.jpg', 1, 4, 0),
(43, 'Fashion Checks Shirt', '1100', 'IMG_pKdyr5.jpg', 1, 4, 0),
(44, 'Stylish Casual Shirt', '1200', 'IMG_myiB8N.jpg', 1, 4, 0),
(45, 'Unique White Sleeve Shirt', '1500', 'IMG_4wczbA.jpg', 1, 4, 0),
(46, 'Formal Navy Blue Shirt', '1499', 'IMG_6mjgNO.jpg', 1, 5, 0),
(47, 'Plain White Formal', '800', 'IMG_zyfprP.jpg', 1, 5, 0),
(48, 'Formal Black Grey Checks Shirt', '1050', 'IMG_WebI4v.jpg', 1, 5, 0),
(49, 'Plain Blue Dark Formal Shirt ', '599', 'IMG_Gvhe7m.jpg', 1, 5, 0),
(50, 'Sky Blue Formal Shirt', '500', 'IMG_THJh79.jpg', 1, 5, 0),
(51, 'Plain Black Formal Shirt', '599', 'IMG_7j2Alh.jpg', 1, 5, 0),
(52, 'Sky Blue Full Sleeve Formal shirt', '700', 'IMG_zTZIqH.jpg', 1, 5, 0),
(53, 'Sky Blue Dotted Formal Shirt', '899', 'IMG_uKSBgo.jpg', 1, 5, 0),
(54, 'Unique Blue Shirt', '400', 'IMG_iYnsT2.jpg', 1, 5, 0),
(55, 'Unique White Formal Shirt', '1000', 'IMG_xIyoB2.jpg', 1, 5, 0),
(56, 'Printed Shirt With Curved Hemline', '1900', 'IMG_0UJdgi.jpg', 1, 5, 0),
(57, 'Dark Blue Formal Shirt', '650', 'IMG_sHceTp.jpeg', 1, 5, 0),
(58, 'Blackberry Ink Blue', '1700', 'IMG_VCOEJq.jpeg', 1, 5, 0),
(59, 'Checks Formal Shirt', '550', 'IMG_MlH76x.jpg', 1, 5, 0),
(60, 'Plain Formal Shirt', '499', 'IMG_iGI9W6.jpg', 1, 5, 0),
(61, 'Globalrang Beige Formal Shirt', '1200', 'IMG_laJg0T.jpeg', 1, 5, 0),
(62, 'Cotton Striped Shirt', '900', 'IMG_F91BGC.jpg', 1, 5, 0),
(63, 'Heusen Black Textured Slim Shirt', '1600', 'IMG_fDCk17.jpg', 1, 5, 0),
(64, 'Black & Grey Shaded Jeans', '1500', 'IMG_uHp62i.jpg', 1, 7, 0),
(65, 'White Indigo Killer Original', '2500', 'IMG_wYNz9g.jpg', 1, 7, 0),
(67, 'Unique Chain Blue Shaded', '1800', 'IMG_9htC1D.jpg', 1, 7, 0),
(68, 'Unique Anchor Blue   ', '3000', 'IMG_HkSvzw.jpg', 1, 7, 0),
(69, 'Plain Blue  ', '1500', 'IMG_lcow9y.jpg', 1, 7, 0),
(70, 'Pure White Jeans', '2999', 'IMG_DbIszB.jpg', 1, 7, 0),
(71, 'Plain Blue Shaded', '1400', 'IMG_26e9Ur.jpg', 1, 7, 0),
(72, 'Plain Black', '1700', 'IMG_NW3TEp.jpg', 1, 7, 0),
(73, 'Black Shaded Jeans ', '700', 'IMG_W6zRSB.jpg', 1, 7, 0),
(74, 'Crysp Denim Bobby Ink Splatter Ripped Jeans', '2999', 'IMG_2JkT3Q.jpg', 1, 7, 0),
(75, 'Crysp Denim David Ripped Panel Stone Washed Jeans', '2200', 'IMG_7VF1jx.jpg', 1, 7, 0),
(76, 'Crysp Denim Wayne Jeans Azules', '3500', 'IMG_GoVmC3.jpg', 1, 7, 0),
(77, 'Hot Shell White Ripped Jeans', '2000', 'IMG_Kg0atR.jpg', 1, 7, 0),
(78, 'Arrival Men\'s Skinny Pant Star', '4000', 'IMG_jNvyri.jpg', 1, 7, 0),
(79, 'Slim Though Max Built In Flex Jeans', '1300', 'IMG_rXGd28.jpg', 1, 7, 0),
(80, 'Blue Diamond Shape Jacket', '3300', 'IMG_4bW3iA.jpg', 1, 6, 0),
(81, 'Black Horizontal Stripped Jacket', '2500', 'IMG_ioeAM4.jpg', 1, 6, 0),
(82, 'Fashionable Blue Full Sleeve Jacket', '5000', 'IMG_ArIihQ.jpg', 1, 6, 0),
(83, 'Grey Addidas Jacket', '4000', 'IMG_a4FAgV.jpg', 1, 6, 0),
(84, 'Unique Double Jacket ', '1999', 'IMG_gF6XO2.jpg', 1, 6, 0),
(85, 'Dark Red Silk Jacket', '2400', 'IMG_Yybo8I.jpg', 1, 6, 0),
(86, 'New Black Shrug Jacket', '800', 'IMG_mIcghZ.jpg', 1, 6, 0),
(87, 'Blue Party Wear Jacket', '1500', 'IMG_rg0DxX.jpg', 1, 6, 0),
(88, 'Plain Red Jacket ', '1600', 'IMG_r5X6Ct.jpg', 1, 6, 0),
(89, 'Silky Black Jacket', '1800', 'IMG_RCxebq.jpg', 1, 6, 0),
(90, 'Silky Brown Jacket', '1200', 'IMG_inPT9C.jpg', 1, 6, 0),
(91, 'Regular Checks Jacket', '1300', 'IMG_rg4eOW.jpg', 1, 6, 0),
(92, 'Denim Light Blue Jacket', '2800', 'IMG_o3fCRy.jpg', 1, 6, 0),
(93, 'Brand Base Ball Collar jacket', '4500', 'IMG_7eMzvo.jpg', 1, 6, 0),
(94, 'Nike Black Polyester Terry Jacket', '3500', 'IMG_7Q5Jfs.jpeg', 1, 6, 0),
(95, 'Silky Black Shinny Jacket', '1700', 'IMG_lk54y3.jpg', 1, 6, 0),
(96, 'Woodland Navy Half Cut Casual Jacket', '1700', 'IMG_fMPUdI.jpg', 1, 6, 0),
(97, 'Full Long Black Kurta', '888', 'IMG_TvDIXJ.jpg', 1, 8, 0),
(98, 'Unique Black Kurta', '2400', 'IMG_arEVjg.jpg', 1, 8, 0),
(99, 'Plain Indian Blue Kurta', '1500', 'IMG_03xpBL.jpg', 1, 8, 0),
(100, 'Navy Blue Cut Jacket ', '1800', 'IMG_5hRfOB.jpg', 1, 8, 0),
(101, 'Fashionable Red Cut Kurta ', '800', 'IMG_G2VZKn.jpg', 1, 8, 0),
(102, 'Dark Purple Cut Kurta', '1300', 'IMG_zWj3iy.jpg', 1, 8, 0),
(103, 'New Fashionable Kurta', '2400', 'IMG_VeGmQv.jpg', 1, 8, 0),
(104, 'New Blue Marriage Kurta', '1700', 'IMG_SpxXf7.jpg', 1, 8, 0),
(105, 'Color Opera Kreation Black Cotton', '1900', 'IMG_8hDtHo.jpg', 1, 8, 0),
(106, 'Simple Red Indian Kurta ', '800', 'IMG_wvIYCi.jpg', 1, 8, 0),
(107, 'Plain Black Kurta', '1300', 'IMG_mLiz4S.jpg', 1, 8, 0),
(108, 'Unique Shinny Kurta', '1900', 'IMG_XTnNxe.jpg', 1, 8, 0),
(109, 'Designer Plain Black Kurta', '2200', 'IMG_n90SMc.jpg', 1, 8, 0),
(110, 'Highly Designer Sherwani', '12000', 'IMG_sHFkUW.jpg', 1, 9, 0),
(111, 'Simple White Kurta With Unique Chuni ', '7000', 'IMG_61z4AG.jpg', 1, 9, 0),
(112, 'New Golden Designer Sherwani', '11000', 'IMG_sUTjr3.jpg', 1, 9, 0),
(113, 'New Designer Golden Sherwani', '9500', 'IMG_VTuNZG.jpg', 1, 9, 0),
(114, 'Simple & Unique', '6000', 'IMG_yw8rGx.jpg', 1, 9, 0),
(115, 'Red Base Sherwani  ', '5000', 'IMG_9hY2iP.jpg', 1, 9, 0),
(116, 'Simpler Designer Sherwani', '8000', 'IMG_oj7pyu.jpg', 1, 9, 0),
(117, 'Manyavar Unique Sherwani', '19000', 'IMG_SCtEBr.jpg', 1, 9, 0),
(118, 'Maroon Sherwani ', '7000', 'IMG_0HKxXk.jpg', 1, 9, 0),
(119, 'Simple Sherwani', '6000', 'IMG_c7OPE2.jpg', 1, 9, 0),
(120, 'Embroidery Sherwani', '10000', 'IMG_OlZ9ht.jpg', 1, 9, 0),
(121, 'New Simple  ', '12000', 'IMG_gHWIdY.png', 1, 9, 0),
(122, 'Sudarshan Latest Designer', '13000', 'IMG_sMh8d1.jpg', 1, 9, 0),
(123, 'New Sudarshan Designer', '5000', 'IMG_O8NcDx.jpg', 1, 9, 0),
(124, 'New Rajput Designer', '16000', 'IMG_Cspwtf.jpg', 1, 9, 0),
(125, 'Golden Floral Motifs', '2000', 'IMG_53LKIv.jpeg', 1, 10, 0),
(126, 'Blue Designer', '1000', 'IMG_zfeFGp.jpg', 1, 10, 0),
(127, 'New Fashionable ', '700', 'IMG_GWI6oU.jpg', 1, 10, 0),
(128, 'Simple Black', '900', 'IMG_rC4ygW.jpg', 1, 10, 0),
(129, 'Hangup Printed', '3000', 'IMG_k80hPo.jpg', 1, 10, 0),
(130, 'Dotted ', '1200', 'IMG_3G6qR8.jpg', 1, 10, 0),
(131, 'Blackbuk Light Green ', '1500', 'IMG_KbtiS7.jpg', 1, 10, 0),
(132, 'Ethnic Nehru Jacket', '4000', 'IMG_XhauzB.jpg', 1, 10, 0),
(133, 'Solid Black', '800', 'IMG_U6c9NM.jpg', 1, 10, 0),
(134, 'Golden Designer', '1500', 'IMG_8l2EhZ.jpg', 1, 10, 0),
(135, 'Shinny Blue', '2500', 'IMG_c9D0rF.jpg', 1, 10, 0),
(136, 'Brown Fashion Designer ', '2000', 'IMG_Yjr04J.jpg', 1, 10, 0),
(137, 'Alvin Kelly', '2800', 'IMG_ZqWRzv.jpg', 1, 10, 0),
(138, 'Jogur Wine', '1200', 'IMG_LZw4Fy.jpg', 1, 10, 0),
(139, 'Designer Nehru', '4000', 'IMG_Jbngdj.jpg', 1, 10, 0),
(140, 'Linen Nehru', '800', 'IMG_3WQK4U.jpg', 1, 10, 0),
(141, 'Pure Linen', '1300', 'IMG_MshlLY.jpg', 1, 10, 0),
(142, 'Velvet Monteil Munero', '3000', 'IMG_e9JnDx.jpg', 1, 10, 0),
(143, 'Green Sudarshan ', '1400', 'IMG_xMVqba.jpg', 1, 10, 0),
(144, 'Pure Golden Border', '20000', 'IMG_6hx3Ui.jpeg', 1, 11, 0),
(145, 'Black With Golden Border', '800', 'IMG_igO0FT.jpg', 1, 11, 0),
(146, 'Red Sanwara', '1200', 'IMG_QdjZYf.jpg', 1, 11, 0),
(147, 'Svanik Blue', '1000', 'IMG_bRJwNM.jpg', 1, 11, 0),
(148, 'Black Sojanya', '700', 'IMG_MPnNG1.jpg', 1, 11, 0),
(149, 'Silk Dark Blue ', '1400', 'IMG_mycVk1.jpg', 1, 11, 0),
(150, 'Silk Maroon', '1500', 'IMG_RUWgYT.jpg', 1, 11, 0),
(151, 'Pink Sojanya', '600', 'IMG_jyIext.jpg', 1, 11, 0),
(152, 'Sky Blue Sojanya', '700', 'IMG_tcC0Tm.jpg', 1, 11, 0),
(153, 'Grey Solid', '1700', 'IMG_FcVy3x.jpg', 1, 11, 0),
(154, 'Silk Of White', '1900', 'IMG_ZyPGqf.jpg', 1, 11, 0),
(155, 'Sethukrishna', '1500', 'IMG_WBGx8f.jpg', 1, 11, 0),
(156, 'Black Deyann', '1600', 'IMG_8MQYm6.jpg', 1, 11, 0),
(157, 'Deyann Silk Maroon', '1300', 'IMG_i0r9hK.jpg', 1, 11, 0),
(158, 'Deyann Green Silk', '1800', 'IMG_h19Rtx.jpg', 1, 11, 0),
(159, 'Angry Bird', '500', 'IMG_tChrx4.jpg', 3, 2, 0),
(160, 'Double Side T-Shirt', '700', 'IMG_PHhUm5.jpg', 3, 2, 0),
(161, 'Nature', '400', 'IMG_7bKNtJ.jpg', 3, 2, 0),
(162, 'Solider', '350', 'IMG_vqcjIR.jpg', 3, 2, 0),
(163, 'Nija Hathori', '450', 'IMG_UNlxKm.jpg', 3, 2, 0),
(164, 'Summer Printed', '700', 'IMG_dFNDsW.jpg', 3, 2, 0),
(165, 'For Attitude Boy ', '1200', 'IMG_ReXAs2.jpg', 3, 2, 0),
(166, 'Red & Yellow', '600', 'IMG_8qCcG2.jpg', 3, 2, 0),
(167, 'Black Addidas', '1500', 'IMG_8F5AHb.jpg', 3, 2, 0),
(168, 'Cartoon', '550', 'IMG_Tt95MS.jpg', 3, 2, 0),
(169, 'Designer', '1300', 'IMG_QhSLfa.jpg', 3, 2, 0),
(170, 'Dad Rules', '650', 'IMG_NVsv18.jpg', 3, 2, 0),
(171, 'unique Rainbow', '1100', 'IMG_tBksrq.jpg', 3, 2, 0),
(172, 'Unique Radium', '2,000', 'IMG_iFWyJq.jpg', 3, 2, 0),
(173, 'Goggle Printed', '850', 'IMG_LrTR3S.jpg', 3, 2, 0),
(174, 'Simple Black', '550', 'IMG_r1nM3l.jpg', 3, 2, 0),
(175, 'New Unique', '450', 'IMG_kWFTKl.jpg', 3, 2, 0),
(176, 'New Printed', '700', 'IMG_wC9XT3.jpg', 3, 2, 0),
(177, 'ssrw', '1213', 'IMG_X5NcZg.jpg', 1, 30, 0),
(178, 'navy blue', '800', 'IMG_cWHsyw.jpg', 3, 18, 0),
(179, 'New Arrival Shirt', '500', 'IMG_ySaFTY.jpg', 3, 18, 0),
(180, 'Multi Checks', '550', 'IMG_j8tSva.jpg', 3, 18, 0),
(181, 'New Printed', '1200', 'IMG_kqjCo3.jpg', 3, 18, 0),
(182, 'Formal Checks', '600', 'IMG_ytGSqN.jpg', 3, 18, 0),
(183, 'New Checks With Printed Pattern', '1300', 'IMG_2G0xtj.jpg', 3, 18, 0),
(184, 'Unique Child Shirt', '1600', 'IMG_Pt6CZT.jpg', 3, 18, 0),
(185, 'Light Blue Shirt', '1300', 'IMG_AlUTqz.jpg', 3, 18, 0),
(186, 'Jeans Shirt', '1700', 'IMG_nVb4NS.jpg', 3, 18, 0),
(187, 'checks', '900', 'IMG_PpNRdU.jpg', 3, 18, 0),
(188, 'New Arrival Check Shirt', '1100', 'IMG_zHYx0G.jpg', 3, 18, 0),
(189, 'New Branded Light Blue Shirt', '2000', 'IMG_jsoYbW.jpg', 3, 18, 0),
(190, 'Checks Box ', '750', 'IMG_Uw0W6I.jpg', 3, 18, 0),
(191, 'Dotted Printed Shirt', '999', 'IMG_vcE7Nz.jpg', 3, 18, 0),
(192, 'Light Navy Blue', '1600', 'IMG_Pj7iFS.jpg', 3, 18, 0),
(193, 'New Styleo Jeans ', '800', 'IMG_NLZsMQ.jpg', 3, 19, 0),
(194, 'New Shaded ', '600', 'IMG_OhkQab.jpg', 3, 19, 0),
(195, 'Black & White Shaded', '550', 'IMG_pJrtYS.jpg', 3, 19, 0),
(196, 'Fashionable Kid Jeans', '1700', 'IMG_kZNfi4.jpg', 3, 19, 0),
(197, 'Light Blue Shaded Jeans', '700', 'IMG_pw1cAq.jpg', 3, 19, 0),
(198, 'New Unique Pattern Jeans', '880', 'IMG_htqkZd.jpg', 3, 19, 0),
(199, 'Tok Tik', '570', 'IMG_weNgnm.jpg', 3, 19, 0),
(200, 'New Red Jeans', '1300', 'IMG_dp2gvz.jpg', 3, 19, 0),
(201, 'New Shaded Blue Jeans', '980', 'IMG_zqdseJ.jpg', 3, 19, 0),
(202, 'New Track Paint', '670', 'IMG_rchaFA.jpg', 3, 19, 0),
(203, 'New Trouser Paint', '600', 'IMG_QhXs70.jpg', 3, 19, 0),
(204, 'Dark Blue Paint', '650', 'IMG_IeiRya.jpg', 3, 19, 0),
(205, 'Full White Paint', '2500', 'IMG_P5v13M.jpg', 3, 19, 0),
(206, 'New Army Paint ', '550', 'IMG_ycE6oJ.jpg', 3, 18, 0),
(207, 'New Black Paint', '600', 'IMG_W5ugc3.jpg', 3, 19, 0),
(208, 'New Shinny Paint ', '400', 'IMG_rdLsUN.jpg', 3, 19, 0),
(209, 'New White Paint', '670', 'IMG_zDqGnM.jpg', 3, 19, 0),
(210, 'Checks Shorts', '400', 'IMG_dDMUtJ.jpg', 3, 20, 0),
(211, 'Dark Army Shorts', '550', 'IMG_HELgNV.jpg', 3, 20, 0),
(212, 'Big Checks Shorts', '600', 'IMG_XldVc7.jpg', 3, 20, 0),
(213, 'Statchable Shorts', '800', 'IMG_woVx6n.jpg', 3, 20, 0),
(214, 'Multi color Checks', '700', 'IMG_izj9ks.jpg', 3, 20, 0),
(215, 'New Paint Dungree', '1500', 'IMG_ybUJq4.jpg', 3, 20, 0),
(216, 'New Summary Shorts', '800', 'IMG_oXUxzI.jpg', 3, 20, 0),
(217, 'New Light Orange color ', '600', 'IMG_Xm1Wdr.jpg', 3, 20, 0),
(218, 'Printed cartoon Shorts', '1700', 'IMG_LuvwSq.jpg', 3, 20, 0),
(219, 'Light grey Dungree', '2000', 'IMG_FhcWIT.jpg', 3, 20, 0),
(220, 'New Unique Dungree', '2500', 'IMG_VwShxE.jpg', 3, 20, 0),
(221, 'Cartoon Dungree', '3000', 'IMG_SQif1V.jpg', 3, 20, 0),
(222, 'New Fashionable Dungree', '1800', 'IMG_k6HO3x.jpg', 3, 20, 0),
(223, 'Light Shaded Grey Dungree ', '1900', 'IMG_kDocvw.jpg', 3, 20, 0),
(224, 'New Browny Shorts', '600', 'IMG_F29xsB.jpg', 3, 20, 0),
(225, 'Light Grey Pyjamas', '790', 'IMG_MIlcD8.jpg', 3, 21, 0),
(226, 'Dark Grey Pyjama', '1900', 'IMG_6YdeN4.jpg', 3, 21, 0),
(227, 'Shinny Printed', '560', 'IMG_RaYKqQ.jpg', 3, 21, 0),
(228, 'New Night Paint', '1400', 'IMG_o65Gw3.jpg', 3, 21, 0),
(229, 'New Tracky Paint', '1000', 'IMG_ELjXMH.jpg', 3, 21, 0),
(230, 'New White Pyjama ', '1400', 'IMG_KRkFCD.jpg', 3, 21, 0),
(231, 'Simple White Pyjama', '550', 'IMG_DI8Wp6.jpg', 3, 21, 0),
(232, 'New Unique Printed', '1560', 'IMG_zpiBLY.jpg', 3, 21, 0),
(233, 'Grey Printed', '400', 'IMG_HSIB2q.jpg', 3, 21, 0),
(234, 'Red & White Checks', '668', 'IMG_HC4nMe.jpg', 3, 21, 0),
(235, 'Deer Printed', '700', 'IMG_rKzyjP.jpg', 3, 21, 0),
(236, 'New Baby Pink Printed', '880', 'IMG_8kX3np.jpg', 3, 21, 0),
(237, 'Black & Grey Printed', '1300', 'IMG_F6h04z.jpg', 3, 21, 0),
(238, 'Multi Color Printed', '900', 'IMG_RQuTD4.jpg', 3, 21, 0),
(239, 'New Unique Multi Color Printed ', '880', 'IMG_lC2Nmv.jpg', 3, 21, 0),
(240, 'Batman Printed', '1500', 'IMG_IO1F7R.jpg', 3, 21, 0),
(241, 'New Fashionable Pyjama', '1900', 'IMG_dEe3Fl.jpg', 3, 21, 0),
(242, 'Emoji Top', '1300', 'IMG_fRdjNu.jpg', 4, 24, 0),
(243, 'New Fashionable Bow Top', '2100', 'IMG_Zfm9yX.jpg', 4, 24, 0),
(244, 'New Designer Top', '3400', 'IMG_LdHoQa.jpg', 4, 24, 0),
(245, 'New  Stylo Cut Top', '1900', 'IMG_dgmpO9.jpg', 4, 24, 0),
(246, 'New Fashionable Multi Color Gahun', '1777', 'IMG_hPcCRE.jpg', 4, 22, 0),
(247, 'New Designer Gold & Pink', '2300', 'IMG_k5YICT.jpg', 4, 22, 0),
(248, 'Fashionable Red & Golden With Chuni', '2990', 'IMG_VprTC4.jpg', 4, 22, 0),
(249, 'New Full Designer', '1900', 'IMG_MbtSfq.jpg', 4, 22, 0),
(250, 'Pink Lega', '1500', 'IMG_J59t8k.jpg', 2, 25, 0),
(251, 'gguhafg', '1200', 'IMG_jO0i8w.jpg', 2, 30, 0),
(252, 'dhvjkh', '1453', 'IMG_VUsrEX.jpg', 2, 31, 0),
(253, 'bdgsvdgy', '12000', 'IMG_XIrsJK.jpg', 2, 32, 0),
(254, 'dd', '134', 'IMG_R0H3vl.jpg', 2, 33, 0),
(255, 'fnzsnf', '1223', 'IMG_K8WBbF.jpg', 2, 34, 0),
(256, 'sampleee', '1324', 'IMG_vyEwKd.jpg', 2, 22, 0),
(257, 'harsh', 'sklfklsfn', 'IMG_DFwnNh.jpg', 2, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

DROP TABLE IF EXISTS `sign_up`;
CREATE TABLE IF NOT EXISTS `sign_up` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `username`, `password`, `customer_id`) VALUES
(1, 'abc@gmail.com', '123456', 3),
(2, 'dhirajrewani2000@gmail.com', '123456789', 5),
(3, 'ndnbvnfb', '1234', 6),
(4, 'shruti@gmaail.com', '123456', 7),
(5, 'gafdgafdg@g', '12345678', 8),
(6, 'afstt@gmail.com', '123456', 9),
(7, 'admin@gmail.com', 'fasco', 10);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
