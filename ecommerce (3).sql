-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 08:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'tables'),
(2, 'chairs'),
(3, 'sofas'),
(4, 'bookcases'),
(5, 'decorations');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `approval` varchar(11) NOT NULL DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `product_id`, `comment`, `approval`) VALUES
(2, 1, 5, 'GOOD', 'OFF'),
(3, 1, 13, 'this is so good', 'ON'),
(4, 1, 9, 'sooo good', 'ON'),
(5, 1, 9, 'sooo good', 'OFF'),
(6, 1, 9, 'sooo good', 'OFF'),
(7, 1, 5, 'hello', 'OFF'),
(8, 1, 5, 'hello', 'OFF'),
(9, 1, 5, 'hello', 'OFF'),
(10, 1, 5, 'hello', 'OFF'),
(12, 1, 14, 'sooo goood', 'OFF'),
(13, 1, 5, 'hello there', 'OFF');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `product_id`, `product_name`, `qty`, `price`) VALUES
(133, 'Amani', 4, 'Coffee Table – Steel Mission Style\r\n', 6, 700),
(134, 'Amani', 5, 'Narrow Console Table, Modern Entryway Table, With Metal Legs, Hallway Table, Foyer Table\r\n', 4, 150),
(176, 'Amani', 16, 'Handcrafted African Mahogany Vase', 3, 150),
(177, 'Amani', 7, 'Open Shadow Box Cypress Bookshelf Proto Type', 4, 650),
(178, 'Amani', 16, 'Handcrafted African Mahogany Vase', 3, 150),
(179, 'Amani', 7, 'Open Shadow Box Cypress Bookshelf Proto Type', 4, 650),
(180, 'Amani', 8, 'RETRO OCCASIONAL CHAIR HANDMADE AND RESPONSIBLY SOURCED BEECH WOOD', 4, 250),
(181, 'Amani', 11, 'Solid Walnut Bookcase With Moveable Shelves', 4, 950),
(182, 'Amani', 8, 'RETRO OCCASIONAL CHAIR HANDMADE AND RESPONSIBLY SOURCED BEECH WOOD', 4, 250),
(183, 'Amani', 11, 'Solid Walnut Bookcase With Moveable Shelves', 4, 950),
(184, 'Amani', 8, 'RETRO OCCASIONAL CHAIR HANDMADE AND RESPONSIBLY SOURCED BEECH WOOD', 4, 250),
(185, 'Amani', 11, 'Solid Walnut Bookcase With Moveable Shelves', 4, 950),
(186, 'Amani', 17, 'Mid Century Style Dinning Chair', 3, 150),
(187, 'Amani', 9, 'Handmade Natural Scalloped Round Jute Rug', 5, 25),
(188, 'Amani', 10, 'Sofa ', 1, 170),
(189, 'Amani', 8, 'RETRO OCCASIONAL CHAIR HANDMADE AND RESPONSIBLY SOURCED BEECH WOOD', 5, 250);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `color` varchar(30) NOT NULL,
  `product_key` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_01` varchar(255) NOT NULL,
  `image_02` varchar(255) NOT NULL,
  `image_03` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `category`, `description`, `color`, `product_key`, `image`, `image_01`, `image_02`, `image_03`) VALUES
(4, 'Coffee Table – Steel Mission Style\r\n', 700, 'tables', '', 'Black', 'Mission Style / Arts & Crafts Coffee table with lower shelf constructed of clear coated steel tube, channels,\r\n', '7.jpg', '139767.464508.jpg', '139767.464509.jpg', '139767.464510.jpg'),
(5, 'Narrow Console Table, Modern Entryway Table, With Metal Legs, Hallway Table, Foyer Table\r\n', 150, 'tables', 'Our narrow console table is a perfect entryway table, hallway table, or foyer table for your home. \r\nEach item is meticulously handcrafted using beautiful black walnut, which looks perfect in modern, contemporary, rustic, \r\nor Scandinavian décor. Greet your guests when they enter your home with this stunning black walnut thin console table -- \r\nyou\'ll love the beautiful grain throughout, creating a warm and inviting atmosphere\r\n', 'Brown', 'table', '8.jpg', '9a4ed67e0cf10ae_untitled_design_11.jpg', '6858c136870a35e_untitled_design_18.jpg', 'b75dc0fc041297e_untitled_design_10.jpg'),
(7, 'Open Shadow Box Cypress Bookshelf Proto Type', 650, 'bookcases', 'I have been commissioned to do several of These with a little Twist,\r\n Stock photos taken from the internet, Mine coming soon, These were made from 1 1/2\" thick Magnolia, I will use 1\" Cypress and not use the Bottom kick plate or foot rest, \r\nMy Client feels this spoils the openness of the design,', 'beige', 'bookcases', '6a27ffd8b3d6ba6_bookcase_3.jpg', '960c75d8b317ca0_bookcase4.jpg', '510b52531035368_bookcase2.jpg', 'c2040c869bfc725_bookcase5.jpg'),
(8, 'RETRO OCCASIONAL CHAIR HANDMADE AND RESPONSIBLY SOURCED BEECH WOOD', 250, 'chairs', '\r\nItem details\r\n. EXPERTLY CRAFTED AND UPHOLSTERED\r\n. BESPOKE \"RETRO\" PRINT OCCASIONAL CHAIR.\r\n. LUXURIOUS VELOUR FABRIC.\r\n. MADE FROM RESPONSIBLY SOURCED BEECH WOOD\r\n. COVERED IN FIRE-RATED VELOUR FABRIC\r\n. SUPER SOFT TEXTURE\r\n. HANDMADE IN THE UK.\r\n. TAPERED LEGS\r\n\r\n', 'green', 'chairs', '7828479-RETRO-OCCASIONAL-CHAIR-HANDMADE-AND-RESPONSIBLY-SOURCED-BEECH-WOOD--0.jpg', '7828479-RETRO-OCCASIONAL-CHAIR-HANDMADE-AND-RESPONSIBLY-SOURCED-BEECH-WOOD--1.jpg', '7828479-RETRO-OCCASIONAL-CHAIR-HANDMADE-AND-RESPONSIBLY-SOURCED-BEECH-WOOD--2.jpg', '7828479-RETRO-OCCASIONAL-CHAIR-HANDMADE-AND-RESPONSIBLY-SOURCED-BEECH-WOOD--3.jpg'),
(9, 'Handmade Natural Scalloped Round Jute Rug', 25, 'decorations', '\r\nHandmade Natural Scalloped Round Jute Rug\r\nWe Accept Custom orders for Size, Color, and Design\r\nThe thickness of the rug is 7-10 mm\r\nVacuum the rug regularly to use it for a long time and protect the rug from strong sunlight\r\n', 'orange', 'decoration', '606218f06365a23_handmade_natural_scalloped_round_jute_rug_2_copy.png', '95adb92c1dc504f_handmade_natural_scalloped_round_jute_rug_3_copy.png', '5f1d25867b1ae7c_handmade_natural_scalloped_round_jute_rug_5_copy.png', '606218f06365a23_handmade_natural_scalloped_round_jute_rug_2_copy.png'),
(10, 'Sofa ', 170, 'sofas', '\r\nGilt Empire Classical Sofa\r\nSauvage finished Top Grain Leather over solid and veneered Mahogany with 23.5 carat Gold Leaf gilt details. Eye Candy and Unique!\r\n\r\nThis item is sold \"as is.\" It has been designed and fabricated to be unique. It is a hand made,\r\n one-of-a kind custom creation intended to remain unique,\r\n not to be duplicated or repeated. We do not offer choices for alteration and reproduction.', 'brown', 'sofas', 'e789fa6c5e5e87d_217_3.jpg', '0aa5fedf13d1c5d_217_1_cm.jpg', '0a7a736fc4b5347_217_3_cm_2.jpg', 'fe1790dec754317_217_7.jpg'),
(11, 'Solid Walnut Bookcase With Moveable Shelves', 950, 'bookcases', '\r\nOur beautiful, one-of-a-kind Walnut bookcase started its journey 30 minutes away from our shop in Wilkesboro,\r\n North Carolina.\r\n This has been varnished with a satin restaurant grade eco-friendly hard sealer to create a lasting piece with a vivid natural look.\r\n We place a lot of care and experience into each one of our pieces for years of memories to come.\r\n', 'beige', 'bookcases', '201633.1076917.jpg', '201633.1076915.jpg', '201633.1076916.jpg', '201633.1076915.jpg'),
(12, 'Armchair Dining Chair With Arms  Captains Chair Solid Walnut Wood Gazelle Armchair', 310, 'chairs', '\r\nArmchair Dining Chair With Arms, Captain\'s Chair, Solid Walnut Wood, Carved, Dining Room Chair, Comfortable, Curly Maple, \"Gazelle Armchair\" From Nathan Hunter Design\r\n\r\nOur Gazelle armchair is a modern solid wood dining chair that feels as great as it looks. We designed the contours to perfectly cradle your body for outstanding comfort.\r\n\r\nThe modern design of the chair combines mid-century and Scandinavian / Danish modern looks.\r\n\r\nThe chair is slim so it doesn\'t take up extra space around your table and its curves allow it to hug the table when not in use.', 'beige', 'chairs', '98402b3f700eddd_gazelle_high_back_0116_square.jpg', '51fffdc85835fd4_gazelle_high_back_0088_square.jpg', '935257ee4f730f5_gazelle_high_back_0096_square.jpg', 'c4b3a2b8ce51747_gazelle_high_back_0105_square.jpg'),
(13, 'Grapevine five Candle Holder Midway Made From Retired California Grapevines', 70, 'decorations', '\r\nHandcrafted from locally sourced Napa grapevines in the heart of California wine country,\r\n our exquisite candle holders will showcase your home or business with a rustic elegance unique to California wine culture.\r\n Available in a wide variety of designs and customizable options,\r\n our extensive collection is sure to be the most functional piece of art you own!', 'brown', 'decorations', '506e82a3da4570a_dcf_115_1.jpg', '8a0e61465b1e613_napa_valley_grapevine_candleholder_xl.jpg', 'e4f8aab1b9461d4_dcf_115_2.jpg', '61368.1117908.jpg'),
(14, 'Burlington sofa', 120, 'sofas', '\r\nBlow away the \"Confinement Blues\" with a vintage,\r\n full-sized Louis Philippe sofa in Walnut Top Grain leather.\r\n Fully rebuilt inside and out to include interior frame structural reinforcing, \r\nthis sofa boasts a classic look and a color palette that will fit most any space. \r\n\r\n', 'black', 'sofas', 'b5f31722c686c0c_b11_sq.jpg', '48892ed9cd2944a_b3_w1.jpg', '46679ea8cbbd8c6_b5_w2.jpg', '177c75ee26e2735_b_sofa.jpg'),
(15, 'Dark red sofa', 150, 'sofas', '\r\nMahogany Sofa\r\nClassical antique styling meets modern day comfort.\r\n One of the most elegant of the type for its simplicity and clean lines,\r\n this Phyfe-style box sofa recreates the mid/late 18th to early 19th century \"Ormolu-Mounted\" look using polished brass architectural fittings on the Doric column \"arm supports.', 'dark red', 'sofas', 'a00dd30061eafe4_front.jpg', 'c2472cf0dc5805e_back.jpg', '9ecd5a90fce6c50_cm.jpg', '325752b187a796b_detail.jpg'),
(16, 'Handcrafted African Mahogany Vase', 150, 'decorations', '\r\nThe natural grain and features of the wood provide a unique,\r\n truly one of a kind piece of functional art.\r\n No two pieces are the same. This meticulously handcrafted vase is made out of the storied African Mahogany tree,\r\n sustainably sourced in East Africa.\r\n', 'Hazel', 'decorations', '66af5e24604a894_img_7377.jpg', '05e5b8ada808956_img_7416.jpg', '52726344b75cf96_img_7378.jpg', 'f08373ab53d45db_img_7391.jpg'),
(17, 'Mid Century Style Dinning Chair', 150, 'select category', '\r\nThis is Mosir dinning chair. The Mosir chair has firm roots in mid century design while also blending current design trends.\r\n The frames are cherry with a walnut backrest and black webbed seat. \r\nIts available in cherry, walnut, white oak, and ash. The seat can be webbed in cotton or leather. It can also have a danish chord.', 'dark blue', 'chairs', '5b6cc8d712be996_mosire_right.jpg', '915b7b3b2ecea2f_mosir_side.jpg', '9962797dce1e7b0_mosir.jpg', '9962797dce1e7b0_mosir.jpg'),
(18, 'Puzzle Piece Bookcase', 950, 'bookcases', '\r\nSleek lines, geometric forms, and functionality are the key ingredients for the Willow Glen Puzzle Bookcase.\r\n Full extension, soft closing glides, custom capabilities, numerous standard and limitless custom finishes. This Classic Mid-Century Modern furniture redefines Heirloom quality that will withstand the test of time and grow with your Baby to Child to Teen to Adult.\r\n', 'grey', 'bookcase', '377653.1075935.png', '377653.1075938.jpg', '377653.1075937.png', '377653.1075936.png'),
(19, 'Borge Bookcase', 1200, 'bookcases', '\r\nThis is a monster bookcase made of white oak. The sliding doors open to adjustable shelves.\r\n Its finished with water based matte polyurethane', 'white', 'bookcase', '327107.1142112.jpg', '327107.1142114.jpg', '327107.1142113.jpg', 'default.jpg'),
(20, 'Willow Glen Tall Bookcase', 850, 'bookcases', '\r\nSleek lines, geometric forms, and functionality are the key ingredients for the Willow Glen Collection.\r\n This bookcase has adjustable shelves as well as a single drawer below for storage. The drawer is fully finished and fitted with soft closing drawer slides.\r\n', 'beige', 'bookcase', '377653.1075928.png', '377653.1075932.png', '377653.1075930.png', '377653.1075934.jpg'),
(21, 'Dining Chair', 520, 'chairs', '\r\n\r\n33\"H x 19\"W x 19-3/4\"D. It is sculptured out of steam bent white oak with with leather insert.', 'brown', 'chair', '226727.532728.jpg', '226727.532729.jpg', '226727.532727.jpg', '226727.532730.jpg'),
(22, 'Modern Square Top Dining Chair', 380, 'chairs', '\r\nMade to outlast the maker, this chair is a modern take on a very old school chair design.\r\n The chair boasts a solid steel frame construction that can be made to order painted or left raw.\r\n The top and back of the chair is made out of one congruent piece of whatever wood you would like,\r\n and is finished with a plant based, all natural oil finish.\r\n', 'yellow', 'chair', '261410.956019.jpg', '261410.956020.jpg', '261410.956022.jpg', '261410.958576.jpg'),
(23, 'Dining Table Centerpiece Silk Floral Arrangement Tropical Coffee Table Decor Island Tropics', 70, 'decorations', '\r\nThis spectacular silk flower centerpiece might have a special allure for island lovers.\r\n A tropical garden paradise, artistically arranged in a vintage planter,\r\n that is sure to add elegance and beauty to any display setting. Dramatic and eye-catching,\r\n this gorgeous silk floral is bound to draw an abundance of lovely compliments wherever it\'s displayed in your home or office and can be showcased year-round.\r\n\r\n', 'green', 'decorations', '195455.521223.jpg', '195455.521222.jpg', '195455.521219.jpg', '195455.521224.jpg'),
(24, 'Rustic Picture Frames', 20, 'decorations', '\r\nHere is a sample of picture frames I\'ve made in the past. They include a variety of materials like barnwood, aspen logs,\r\n wood with metal insert and wood with cow hide insert.\r\n', 'brown', 'decorations', '247784.857601.jpg', '247784.857603.jpg', '247784.857607.jpg', 'default.jpg'),
(25, 'Mahogany Jackson Phyfe Sofa', 1200, 'sofas', '\r\nA beautiful Phyfe-type example of Empire Classical, this full-sized Mahogany sofa is plushly upholstered, \r\nand also features four detailed Brass lion\'s claw feet, \r\ntypical of the Empire Classical look. Classic book-matched veneering on the back rail gives the illusion of three dimensional depth.\r\n The interior seating is completed with 100% new', 'dark red', 'sofas', 'eee2f3bfccdb177_cellc.jpg', 'ad9f33e0adcc9e7_j_sq.jpg', '08398b78980f5ba_back.jpg', '55d9b99cba146b1_dscf9335.jpg'),
(26, 'Alice Sofa', 1500, 'sofas', '\r\nFrame made with Kiln dried hardwood\r\nResponsibly-sourced wood\r\nJoints Glued and Stapled\r\nHardwood Legs\r\nBenchmade\r\nSuspension Zig-Zag Springs\r\nGlue and Stains Water Based, Low-VOC', 'white', 'sofas', '399214.1103622.jpg', '399214.1103621.jpg', '399214.1103623.jpg', 'default.jpg'),
(27, 'Morello Guitar Pick Side Table In Walnut', 340, 'tables', '\r\nThis Mid Century end table is crafted from solid Walnut,\r\n and is finished with a hand rubbed oil/hardwax blend. The top is an elongated triangle meant to mimic the shape of a guitar pick.\r\n Both the legs and the top are hand shaped to achieve curves that set them apart from machine produced work.\r\n It is a perfect accent piece for both the Noll and Spicoli coffee tables.', 'beige', 'table', '2f1859534cae27e_modern_midcentury_mid_century_guitar_pick_triangle_1.jpg', '4022451793a6cdb_img_5927.jpg', 'b2e693188e46a68_img_5959.jpg', 'de6c0d4507dfacf_img_5952.jpg'),
(28, 'Live Edge Coffee Table Modern Coffee Table Coffee Table With Hairpin Legs Walnut Coffee Table', 350, 'tables', '\r\nOur live edge walnut coffee table is a perfect addition to your home.\r\n Each item is meticulously handcrafted using beautiful black walnut slabs, which looks perfect in modern, contemporary, rustic, \r\nor Scandinavian décor. Create a showpiece in your office, living room, or bedroom with this live edge coffee table', 'brown', 'table', 'c895bf018d717d0_custom_resized_45e05e3e_b01a_4c60_8c36_e4db7ecee990.jpg', '98719611b1e8672_custom_resized_17e7a5e7_34aa_47f5_bb0d_325f7955d4cc.jpg', 'd1d06462c09285a_custom_resized_3e924966_06d9_49f4_b94a_9b6f722d14bb.jpg', 'd9890c63f95b975_custom_resized_a5053910_908e_4c5f_8ea8_384b080e5f06.jpg'),
(29, ' Coffee Table With Metal Legs Farmhouse Rustic', 200, 'tables', '\r\nWe handcraft everything from scratch, in some cases drying the wood ourselves to be sure of its quality before it makes it into your home.\r\n We\'re a team of woodworkers that are passionate about creating bespoke furniture that is made to your specifications.\r\n We only use high end finishes and legs, because we believe in quality.', 'brown', 'table', '3c1c0a45e48a414_untitled_design_2021_01_24t115353613.jpg', '28ed3e5d64199c3_untitled_design_100.jpg', 'c7e239af132bb15_untitled_design_97.jpg', '98642d9e591b5af_untitled_design_96.jpg'),
(30, 'WALL HANGING', 15, 'decorations', 'Handwoven wall hanging featuring rural motifs.\r\n\r\n', 'blue', 'decorations', '17.jpg', 'default.jpg', 'default.jpg', 'default.jpg'),
(31, 'BAMBOO CHAIR  FEATHER Tassels  Large', 70, 'chairs', 'Bamboo chair with feather shaped tassels', 'beige', 'chair', '04-05366_img1.jpg', '04-05366_img2.jpg', '04-05366_img1.jpg', '04-05366_img2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(11) NOT NULL,
  `last_name` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` int(10) NOT NULL,
  `birthday` date NOT NULL,
  `password` varchar(40) NOT NULL,
  `image` varchar(60) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `birthday`, `password`, `image`, `role`) VALUES
(1, 'Amani', 'Hiary', 'amany@gmail.com', 2147483647, '1996-06-30', 'amani1831972', '122501304_3851538074864862_4157272799890146392_n.jpg', 'user'),
(2, 'majd', 'ibrahim', 'mjdhiary@gmail.com', 772359691, '1988-07-20', 'amani1831972', 'default.jpg', 'admin'),
(3, 'Sara', 'ibrahim', 'sara@gmail.com', 772359691, '1996-06-30', 'amani1831972', 'user_default.jpg', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
