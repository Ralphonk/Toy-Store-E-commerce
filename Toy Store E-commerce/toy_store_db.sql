-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 04:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toy_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `email`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(20, 5, 7, 'Lego Ice-Cream Truck', 1899, 1, 'Screenshot 2023-11-28 163558.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'lego'),
(2, 'barbie'),
(3, 'hotwheel'),
(4, 'nerf'),
(5, 'mattel');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(5, 5, 'mukul', 'sksks8@gmail.com', 2147483647, 'hi your website is amazing');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(7, 5, 'mukul', '4134314134', 'temp@gmail.com', 'cash on delivery', 'flat no. HOUSE NO. , wafafa, delhi, Delhi, India - 110086', 'Lego Ice-Cream Truck (1899 x 1) - ', 1899, '2023-11-28', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(7, 'Lego Ice-Cream Truck', 'Ding-a-ling-a-ling! Yummy! The Lego City ice-cream truck has arrived! Take one more circuit on your cool skateboard, then flick up your board, remove your helmet and head over for A treat together with your cute dog. Help the ice-cream lady serve delicious ice-cream cones and popsicles. Then close the serving hatch and help drive this awesome, multi-coloured truck to the next stop!', 1899, 'Screenshot 2023-11-28 163558.png', 'Screenshot 2023-11-28 163753.png', 'Screenshot 2023-11-28 163808.png'),
(11, 'Barbie Totally Hair ', 'This product comes as an assortment and any product will be shipped depending on the availability. The Barbie Totally Hair Doll is part of the Barbie Fun & Fancy Hair collection, a celebration of all things hair with glam dolls featuring colorful hairstyles. Each doll in this collection is a fashion icon with 8.5 inches of extra-long playable hair, allowing kids aged 3 and above to explore endless hairstyle possibilities. The doll comes dressed in a stylish outfit, complete with earrings and hee', 1999, 'Screenshot 2023-11-28 165550.png', 'Screenshot 2023-11-28 165606.png', 'Screenshot 2023-11-28 165631.png'),
(12, 'Mattel Jurassic Worl', 'This unique and intimidating Track &#39;N Attack Indoraptor inspired by the Jurassic World franchise has 3 attack features, all with light and sound effects! It has the huge claws this notorious hybrid dinosaur is known for and designed with a jungle-colored deco with irridescent effect. It&#39;s a striking figure that comes with removable tracker headgear. Makes a great gift for dinosaur fans ages 4 years and up. ', 1999, 'Screenshot 2023-11-28 164656.png', 'Screenshot 2023-11-28 164751.png', 'Screenshot 2023-11-28 164732.png'),
(13, 'NERF Alpha Strike Ha', 'A representation of the famous Ducati Panigale V4 R to build, explore and display\r\nLEGO Technic fans and motorcycle enthusiasts will love this stunning building challenge', 1599, 'Screenshot 2023-11-28 170306.png', 'Screenshot 2023-11-28 170318.png', 'Screenshot 2023-11-28 170328.png'),
(14, 'Hot Wheels Zamac The', 'The Hot Wheels Zamac Themed 6 Pack is a specially curated multipack that celebrates the cool style of Hot Wheels Zamac vehicles. This assortment includes six Hot Wheels vehicles, each 1:64 scale, with authentic decos that excite car aficionados. The variety pack features a combination of modern and vintage castings, all with unpainted bases, capturing the essence of the Zamac history and deco. Zamac, an acronym for Zinc, Aluminum, Magnesium, and Copper alloy, represents the die-cast material fro', 1299, 'Screenshot 2023-11-28 233221.png', 'Screenshot 2023-11-28 233238.png', 'Screenshot 2023-11-28 233256.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `phone_no`) VALUES
(5, 'mukul', 'khowal', 'mk@gmail.com', '011c945f30ce2cbafc452f39840f025693339c42', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
