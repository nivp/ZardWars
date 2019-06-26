-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: sql310.epizy.com
-- Generation Time: Jun 17, 2019 at 12:32 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epiz_23979745_zardgoggery`
--

-- --------------------------------------------------------

--
-- Table structure for table `zw_armors`
--

CREATE TABLE IF NOT EXISTS `zw_armors` (
  `ItemId` int(11) NOT NULL,
  `ItemName` varchar(225) NOT NULL,
  `ItemDesc` varchar(225) NOT NULL,
  `ItemElement` varchar(225) NOT NULL,
  `ItemType` varchar(225) NOT NULL DEFAULT 'Melee',
  `Price` int(11) NOT NULL DEFAULT '0',
  `SellPrice` int(11) NOT NULL DEFAULT '0',
  `Dropable` tinyint(1) NOT NULL,
  `PowerLevel` int(11) NOT NULL,
  `ItemLevel` int(11) NOT NULL,
  `BuyType` tinyint(1) NOT NULL,
  `Buyable` tinyint(1) NOT NULL DEFAULT '1',
  `HoursOwned` int(11) NOT NULL,
  `Extra` varchar(225) NOT NULL,
  `ArmorFire` int(11) NOT NULL,
  `ArmorWater` int(11) NOT NULL,
  `ArmorIce` int(11) NOT NULL,
  `ArmorWind` int(11) NOT NULL,
  `ArmorEarth` int(11) NOT NULL,
  `ArmorEnergy` int(11) NOT NULL,
  `ArmorLight` int(11) NOT NULL,
  `ArmorDarkness` int(11) NOT NULL,
  `ArmorMelee` int(11) NOT NULL,
  `ArmorRanged` int(11) NOT NULL,
  `ArmorMagic` int(11) NOT NULL,
  UNIQUE KEY `ItemId` (`ItemId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zw_armors`
--

INSERT INTO `zw_armors` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `Price`, `SellPrice`, `Dropable`, `PowerLevel`, `ItemLevel`, `BuyType`, `Buyable`, `HoursOwned`, `Extra`, `ArmorFire`, `ArmorWater`, `ArmorIce`, `ArmorWind`, `ArmorEarth`, `ArmorEnergy`, `ArmorLight`, `ArmorDarkness`, `ArmorMelee`, `ArmorRanged`, `ArmorMagic`) VALUES
(1, 'Frogzard Hunter', 'The outfit of the League of Frogzard Hunters.  Wear it with pride!  Offers good earth defense and gives a damage bonus for fighting zards.', '0', 'None', 999999, 0, 0, 0, 0, 1, 0, 0, 'armor-zardhunter4.swf', -5, -5, -5, -5, -10, -5, -5, -5, 20, 20, 20),
(10, 'Golden Plate of Ironborns', 'The armor of rulers!', '0', 'Neutral', 100000, 75000, 1, 50, 50, 1, 1, 0, 'armor-golden-unified.swf', -35, -35, -35, -35, -35, -35, -35, -35, 45, 45, 45),
(2, 'War', 'This armor once served as a vessel for the demipower of War himself! (Requested by Ironbork)', '0', 'None', 10000, 7500, 1, 20, 20, 1, 1, 0, 'armor-war2.swf', -9, 0, 0, 0, -9, -9, 0, -9, 31, 31, 31),
(3, 'Trash', 'Someone forgot to take out the trash.', '2', 'Water', 10, 1, 1, 0, 0, 0, 1, 0, 'armor-kindred8.swf', 99900, 99900, 99900, 99900, 99900, 99900, 99900, 99900, 1, 1, 1),
(4, 'Dreiko''s Deception', 'Dreiko has taught you some of his shapeshifting magic! This spell will transform you and give you Big Chin Energies!', '4', 'Ice', 15000, 11250, 1, 25, 25, 1, 1, 0, 'armor-Gogg.swf', 0, -10, -12, -10, -3, -3, -7, -7, 23, 30, 26),
(11, 'Earthen Plate', 'Constructed of crystallized organic matter, this plate offers excellent protection against earth element attacks, despite being weak against fire.', '3', 'Earth', 150, 112, 1, 0, 0, 1, 1, 0, 'armor-dynamic-standard.swf', 20, -5, 0, 10, -10, -5, 0, 0, 20, 10, 15),
(12, 'Wind Plate', 'Offers extra protection against wind, melee, and magic attacks.', '5', 'Wind', 200, 150, 1, 0, 0, 1, 1, 0, 'armor-dynamic-standard.swf', 0, 0, 0, -10, 0, 10, 0, 0, 23, 20, 25),
(5, 'Elite Frogzard Hunter', 'The outfit of the League of Frogzard Hunters.  Wear it with pride!  Offers good earth defense and gives a damage bonus for fighting zards.', '3', 'Earth', 20000, 15000, 1, 40, 40, 1, 1, 0, 'armor-zardhunter4.swf', -10, -10, -10, -10, -30, -10, -10, -10, 30, 30, 25),
(13, 'Energy Plate', 'Good protection against energy attacks, but can be shorted out by water.', '6', 'Energy', 200, 150, 1, 0, 0, 1, 1, 0, 'armor-dynamic-standard.swf', 0, 10, 5, 0, 0, -10, 0, 0, 20, 20, 20),
(14, 'Fire Plate', 'Enchanted armor with a raging hot surface that absorbs fire attacks but is weakened by ice.', '1', 'Fire', 200, 150, 1, 0, 0, 1, 1, 0, 'armor-dynamic-standard.swf', -10, 5, 10, 0, -5, 0, 0, 0, 20, 20, 30),
(15, 'Ice Plate', 'Ice frozen so hard it offers great protection. But beware fire...', '4', 'Ice', 200, 150, 1, 0, 0, 1, 1, 0, 'armor-dynamic-standard.swf', 10, -5, -10, 0, 0, 2, 2, 0, 30, 30, 10),
(16, 'Water Plate', 'Protects against water attacks and wet environments.', '2', 'Water', 200, 150, 1, 0, 0, 1, 1, 0, 'armor-dynamic-standard.swf', 5, -10, 5, 0, 0, 10, 0, 0, 30, 5, 30),
(18, 'Pumpkin Armor', 'Happy Mogloween! The elite armor of trick or treaters everywhere!', '2', 'Water', 20000, 15000, 1, 10, 10, 1, 1, 0, 'armor-pumpkin.swf', -10, -15, 5, 0, -10, 5, -5, -10, 25, 15, 15),
(17, 'Dark Plate', 'Hardened shadows create incredible fortitude verse evil magic and weapons.', '8', 'Darkness', 150, 112, 1, 0, 0, 1, 1, 0, 'armor-dynamic-standard.swf', 0, 0, 0, 0, 0, 0, 20, -20, 25, 25, 5),
(19, 'Frogzard Rider Armor', 'Ride a trained Frogzard into battle. Must be seen to be believed! Convert melee attacks into ranged attacks.', '3', 'Earth', 100, 75, 1, 0, 0, 1, 1, 0, 'armor-frogzardrider2.swf', 0, 0, 0, 0, 0, 0, 0, 0, 25, 25, 25),
(6, 'Flower Armor', 'Not for the faint-of-heart. Moderate defense against light, earth, wind and water.', '2', 'Water', 450, 337, 1, 25, 25, 1, 1, 0, 'armor-dynamic-standard.swf', 20, -15, 20, -15, -15, 20, -15, 20, 25, 25, 35),
(7, 'Breakneck Robe', 'Prepare yourself for learning the ways of Martial Arts combat. Channel your weapon''s attack damage through your hands and feet in a double melee attack! No element resistances with average defense bonuses.', '0', 'Neutral', 1111, 833, 1, 30, 30, 1, 1, 0, 'armor-battlerobe.swf', 0, 0, 0, 0, 0, 0, 0, 0, 27, 27, 27),
(8, 'Frogzilla Armor', 'A mutant crossbreed of human and zard!', '3', 'Earth', 3000, 2500, 1, 30, 30, 1, 1, 0, 'armor-FrogzardMutation3.swf', -5, -5, -5, -5, -5, -5, -5, -5, 30, 30, 30),
(9, 'Zombie Form', 'Take on the appearance of a zombie! +2 random damage, +2 hp regeneration with every melee attack!', '0', 'Neutral', 30000, 22500, 1, 35, 35, 1, 1, 0, 'armor-zombie.swf', 5, -5, -10, -5, -5, 5, 10, -25, 30, 35, 35),
(20, 'Invisibility Cloak', 'Your enemy won''t be able to see you... so this strong wind armor protects greatly against melee and ranged attacks!', '5', 'Wind', 2000, 1500, 1, 45, 45, 1, 1, 0, 'armor-invisibilitycloak2.swf', 0, 0, 0, -30, 0, 0, -10, -10, 40, 40, 10),
(21, 'Salamander Rider', 'One of Valencia''s rare trained mini salamanders (she calls them bonsailamanders) is here to help you! 2 hits!', '1', 'Fire', 99999, 74999, 1, 65, 65, 1, 1, 0, 'armor-salarider2.swf', -25, 10, 15, -5, -20, -5, -10, -5, 35, 45, 30),
(22, 'Werewolf Form', 'Become a Werewolf and rip your enemies to shreds with your bare hands! Defense against ice, earth, light and darkness. Wolves in your command will have higher attack damage.', '3', 'Earth', 150000, 112500, 1, 70, 70, 1, 1, 0, 'armor-Werewolf4.swf', 10, 5, -10, 5, -15, 5, -10, -10, 20, 20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `zw_characters`
--

CREATE TABLE IF NOT EXISTS `zw_characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charname` varchar(225) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `username` varchar(225) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '3',
  `face` int(11) NOT NULL,
  `facecolors` varchar(225) NOT NULL,
  `class` varchar(225) NOT NULL,
  `chartype` varchar(225) NOT NULL DEFAULT 'Guardian',
  `gold` int(11) NOT NULL DEFAULT '1000',
  `tokens` int(11) NOT NULL DEFAULT '100',
  `strength` int(11) NOT NULL DEFAULT '0',
  `dexterity` int(11) NOT NULL DEFAULT '0',
  `intelligence` int(11) NOT NULL DEFAULT '0',
  `charm` int(11) NOT NULL DEFAULT '0',
  `endurance` int(11) NOT NULL DEFAULT '0',
  `luck` int(11) NOT NULL DEFAULT '0',
  `race` varchar(225) NOT NULL DEFAULT 'Human',
  `subrace` varchar(225) NOT NULL DEFAULT 'None',
  `clan` varchar(225) NOT NULL DEFAULT 'None',
  `createdday` varchar(225) NOT NULL DEFAULT 'Someday',
  `createddate` varchar(225) NOT NULL DEFAULT 'Sometime',
  `playedday` varchar(225) NOT NULL DEFAULT 'Someday',
  `playeddate` varchar(225) NOT NULL DEFAULT 'Sometime',
  `armorcolors` varchar(225) NOT NULL DEFAULT '0x333333,0xFFFFFF,0xFF0000',
  `staff` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `extraweaponSlot` int(11) NOT NULL DEFAULT '0',
  `extraarmorSlot` int(11) NOT NULL DEFAULT '0',
  `extrashieldSlot` int(11) NOT NULL DEFAULT '0',
  `extraspellSlot` int(11) NOT NULL DEFAULT '0',
  `extrapetSlot` int(11) NOT NULL DEFAULT '0',
  `extramiscSlot` int(11) NOT NULL DEFAULT '0',
  `extrahouseSlot` int(11) NOT NULL DEFAULT '0',
  `wins` int(11) NOT NULL DEFAULT '0',
  `deaths` int(11) NOT NULL DEFAULT '0',
  `HPotion` int(11) DEFAULT '1',
  `MPotion` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `zw_characters`
--

INSERT INTO `zw_characters` (`id`, `charname`, `level`, `exp`, `username`, `type`, `face`, `facecolors`, `class`, `chartype`, `gold`, `tokens`, `strength`, `dexterity`, `intelligence`, `charm`, `endurance`, `luck`, `race`, `subrace`, `clan`, `createdday`, `createddate`, `playedday`, `playeddate`, `armorcolors`, `staff`, `banned`, `extraweaponSlot`, `extraarmorSlot`, `extrashieldSlot`, `extraspellSlot`, `extrapetSlot`, `extramiscSlot`, `extrahouseSlot`, `wins`, `deaths`, `HPotion`, `MPotion`) VALUES
(1, 'Admin', 0, 0, 'admin', 3, 59, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 1, 1, 250, 250, 250, 250, 250, 250, 'Human', 'None', 'Staff', 'Someday', '2009-10-25', 'Someday', 'Sometime', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(3, 'Niv', 5, 0, 'nivp', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 121, 1, 150, 150, 150, 150, 150, 150, 'Human', 'None', 'None', 'Friday', '2019-05-31', 'Sunday', '2019-06-09', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 3, 1, 1),
(25, 'Name', 5, 0, 'pg13you', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 770, 100, 0, 0, 20, 0, 0, 0, 'Human', 'None', 'None', 'Sunday', '2019-06-16', 'Sunday', '2019-06-16', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2, 1, 1),
(5, 'IcyNicey', 35, 1150, 'Koolcait', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 542, 100, 35, 35, 0, 50, 0, 25, 'Human', 'None', 'Donors', 'Friday', '2019-05-31', 'Tuesday', '2019-06-11', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 184, 8, 1, 1),
(6, 'Ironborn', 46, 0, 'JbotzDeafbot', 3, 59, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 57610, 100, 50, 40, 0, 30, 0, 40, 'Human', 'None', 'None', 'Friday', '2019-05-31', 'Monday', '2019-06-17', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 343, 7, 1, 1),
(7, 'Trundle Bogart', 35, 0, 'Fartko Fartrack', 3, 70, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 10914, 100, 50, 0, 0, 0, 10, 5, 'Human', 'None', 'Donors', 'Sunday', '2019-06-02', 'Friday', '2019-06-07', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 209, 15, 1, 1),
(8, 'Ateras ', 71, 29220, 'tarion647', 3, 59, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 60257, 100, 85, 85, 85, 85, 0, 0, 'Human', 'None', 'None', 'Sunday', '2019-06-02', 'Friday', '2019-06-14', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1086, 3, 1, 1),
(9, 'Phlox Lover', 1, 100, 'phlox lover', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 10043, 100, 0, 0, 0, 0, 0, 0, 'Human', 'None', 'None', 'Sunday', '2019-06-02', 'Someday', 'Sometime', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 1),
(10, 'LT Time', 49, 8410, 'Lt time', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 20928, 100, 65, 35, 30, 0, 0, 20, 'Human', 'None', 'None', 'Monday', '2019-06-03', 'Monday', '2019-06-17', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 377, 6, 1, 1),
(11, 'Andlu', 85, 225090, 'andlu', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 516739, 100, 100, 100, 100, 75, 10, 40, 'Human', 'None', 'None', 'Tuesday', '2019-06-04', 'Monday', '2019-06-17', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1966, 12, 1, 1),
(18, 'testchar', 120, 0, 'nivp', 3, 59, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 9975700, 100, 150, 0, 0, 0, 0, 0, 'Human', 'None', 'None', 'Thursday', '2019-06-06', 'Thursday', '2019-06-13', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 1),
(12, 'Sunkist', 1, 0, 'Therigon', 3, 70, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 9870, 100, 0, 0, 0, 0, 0, 0, 'Human', 'None', 'None', 'Tuesday', '2019-06-04', 'Someday', 'Sometime', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 1),
(22, 'Seijaku no Apostle\r', 0, 0, 'justpassingby', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 1000, 100, 0, 0, 0, 0, 0, 0, 'Human', 'None', 'None', 'Friday', '2019-06-14', 'Someday', 'Sometime', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(21, 'Dragonslayer\r', 70, 0, 'fighter100', 3, 59, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 164477, 100, 65, 30, 20, 20, 10, 10, 'Human', 'None', 'None', 'Thursday', '2019-06-13', 'Sunday', '2019-06-16', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 559, 6, 1, 1),
(20, 'Kyoi\r', 78, 91950, 'justpassingby', 3, 70, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 8486, 100, 100, 100, 115, 75, 0, 0, 'Human', 'None', 'None', 'Monday', '2019-06-10', 'Monday', '2019-06-17', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 19, 1, 1),
(23, 'Cat\r', 4, 0, 'Cat', 3, 59, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 234, 100, 0, 0, 0, 0, 0, 0, 'Human', 'None', 'None', 'Friday', '2019-06-14', 'Friday', '2019-06-14', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 1, 1),
(24, 'Warrior', 0, 0, '2048', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 980, 100, 0, 0, 0, 0, 0, 0, 'Human', 'None', 'None', 'Sunday', '2019-06-16', 'Someday', 'Sometime', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(26, 'Zippleclopper\r', 40, 0, 'zippleclopper', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 12617, 100, 30, 25, 5, 20, 0, 0, 'Human', 'None', 'None', 'Sunday', '2019-06-16', 'Monday', '2019-06-17', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 0, 1, 1),
(27, '774\r', 1, 0, 'pg13you', 3, 65, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 670, 100, 0, 0, 5, 0, 0, 0, 'Human', 'None', 'None', 'Sunday', '2019-06-16', 'Sunday', '2019-06-16', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zw_clans`
--

CREATE TABLE IF NOT EXISTS `zw_clans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `members` int(11) NOT NULL DEFAULT '0',
  `tokens` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '1000000',
  `online` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `zw_clans`
--

INSERT INTO `zw_clans` (`id`, `name`, `members`, `tokens`, `hp`, `online`) VALUES
(1, 'Staff', 1, 1000, 1000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `zw_items`
--

CREATE TABLE IF NOT EXISTS `zw_items` (
  `CharId` int(11) NOT NULL,
  `AdjustId` int(11) NOT NULL AUTO_INCREMENT,
  `ItemId` int(11) NOT NULL,
  `ItemCat` varchar(225) NOT NULL DEFAULT 'weapon',
  `SortNumber` int(11) NOT NULL,
  `PetName` varchar(225) NOT NULL,
  UNIQUE KEY `AdjustId` (`AdjustId`),
  UNIQUE KEY `AdjustId_2` (`AdjustId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=440 ;

--
-- Dumping data for table `zw_items`
--

INSERT INTO `zw_items` (`CharId`, `AdjustId`, `ItemId`, `ItemCat`, `SortNumber`, `PetName`) VALUES
(1, 1, 1, 'weapon', 1, ''),
(1, 2, 1, 'armor', 1, ''),
(1, 3, 1, 'shield', 1, ''),
(1, 9, 2, 'weapon', 2, ''),
(5, 195, 19, 'armor', 3, ''),
(18, 345, 1, 'pet', 1, 'My Bunny Rabbit'),
(5, 133, 6, 'weapon', 2, ''),
(3, 14, 1, 'weapon', 1, ''),
(3, 15, 1, 'armor', 1, ''),
(3, 16, 1, 'shield', 1, ''),
(20, 435, 15, 'shield', 2, ''),
(21, 404, 8, 'spell', 7, ''),
(20, 351, 15, 'spell', 4, ''),
(9, 64, 2, 'weapon', 2, ''),
(5, 21, 1, 'weapon', 1, ''),
(5, 22, 1, 'armor', 1, ''),
(5, 23, 1, 'shield', 1, ''),
(5, 143, 7, 'weapon', 6, ''),
(6, 25, 1, 'weapon', 1, ''),
(6, 26, 1, 'armor', 1, ''),
(6, 27, 1, 'shield', 1, ''),
(6, 393, 32, 'weapon', 5, ''),
(3, 146, 18, 'armor', 4, ''),
(6, 439, 5, 'armor', 8, ''),
(8, 51, 1, 'armor', 1, ''),
(18, 197, 11, 'armor', 2, ''),
(7, 33, 1, 'weapon', 1, ''),
(7, 34, 1, 'armor', 1, ''),
(7, 35, 1, 'shield', 1, ''),
(8, 50, 1, 'weapon', 1, ''),
(7, 37, 2, 'weapon', 2, ''),
(7, 46, 4, 'armor', 2, ''),
(3, 40, 3, 'armor', 3, ''),
(3, 171, 12, 'armor', 8, ''),
(8, 317, 18, 'weapon', 2, ''),
(7, 43, 3, 'weapon', 3, ''),
(3, 45, 4, 'armor', 4, ''),
(5, 140, 8, 'weapon', 2, ''),
(6, 410, 18, 'weapon', 8, ''),
(3, 49, 3, 'weapon', 2, ''),
(8, 52, 1, 'shield', 1, ''),
(9, 53, 1, 'weapon', 1, ''),
(9, 54, 1, 'armor', 1, ''),
(9, 55, 1, 'shield', 1, ''),
(10, 303, 18, 'weapon', 2, ''),
(5, 191, 2, 'pet', 1, 'My Daimyo'),
(7, 291, 15, 'weapon', 5, ''),
(10, 60, 1, 'weapon', 1, ''),
(10, 61, 1, 'armor', 1, ''),
(10, 62, 1, 'shield', 1, ''),
(6, 75, 4, 'weapon', 2, ''),
(12, 97, 1, 'armor', 1, ''),
(10, 69, 3, 'weapon', 2, ''),
(3, 71, 10, 'armor', 4, ''),
(5, 244, 11, 'shield', 5, ''),
(20, 338, 19, 'weapon', 4, ''),
(7, 78, 4, 'weapon', 4, ''),
(6, 79, 11, 'armor', 2, ''),
(3, 80, 11, 'armor', 4, ''),
(8, 312, 11, 'pet', 2, 'My Magical Egg'),
(5, 82, 4, 'weapon', 2, ''),
(18, 278, 13, 'spell', 1, ''),
(5, 246, 10, 'weapon', 7, ''),
(12, 96, 1, 'weapon', 1, ''),
(10, 88, 4, 'weapon', 2, ''),
(11, 89, 1, 'weapon', 1, ''),
(11, 90, 1, 'armor', 1, ''),
(11, 91, 1, 'shield', 1, ''),
(18, 343, 14, 'spell', 2, ''),
(21, 326, 1, 'weapon', 1, ''),
(8, 314, 14, 'shield', 4, ''),
(11, 95, 4, 'weapon', 2, ''),
(12, 98, 1, 'shield', 1, ''),
(12, 99, 11, 'armor', 2, ''),
(12, 100, 2, 'weapon', 2, ''),
(11, 395, 24, 'weapon', 8, ''),
(5, 271, 8, 'armor', 3, ''),
(11, 275, 11, 'spell', 1, ''),
(5, 142, 9, 'weapon', 2, ''),
(3, 137, 8, 'weapon', 5, ''),
(3, 136, 7, 'weapon', 4, ''),
(20, 350, 16, 'spell', 3, ''),
(18, 128, 1, 'shield', 1, ''),
(18, 127, 1, 'armor', 1, ''),
(18, 126, 1, 'weapon', 1, ''),
(20, 311, 18, 'spell', 1, ''),
(10, 124, 6, 'weapon', 2, ''),
(3, 123, 5, 'weapon', 3, ''),
(3, 141, 9, 'weapon', 6, ''),
(20, 337, 23, 'weapon', 3, ''),
(3, 145, 2, 'shield', 2, ''),
(3, 147, 10, 'shield', 3, ''),
(8, 302, 9, 'shield', 3, ''),
(8, 149, 10, 'shield', 2, ''),
(8, 292, 10, 'armor', 2, ''),
(6, 270, 8, 'armor', 2, ''),
(7, 153, 3, 'shield', 2, ''),
(7, 154, 5, 'shield', 3, ''),
(7, 155, 6, 'shield', 4, ''),
(7, 156, 2, 'shield', 5, ''),
(7, 157, 8, 'shield', 6, ''),
(7, 158, 7, 'shield', 7, ''),
(7, 159, 4, 'shield', 8, ''),
(5, 160, 10, 'shield', 2, ''),
(5, 161, 9, 'shield', 3, ''),
(5, 162, 3, 'shield', 4, ''),
(6, 310, 7, 'armor', 2, ''),
(6, 308, 30, 'weapon', 2, ''),
(18, 307, 30, 'weapon', 2, ''),
(11, 306, 10, 'armor', 2, ''),
(6, 389, 15, 'weapon', 2, ''),
(11, 322, 11, 'pet', 2, 'My Magical Egg'),
(3, 170, 15, 'armor', 4, ''),
(3, 172, 1, 'spell', 1, ''),
(3, 173, 1, 'pet', 1, 'My Bunny Rabbit'),
(6, 174, 19, 'armor', 2, ''),
(6, 175, 9, 'shield', 2, ''),
(6, 176, 2, 'pet', 1, 'My Daimyo'),
(11, 178, 2, 'pet', 1, 'My Daimyo'),
(11, 274, 8, 'spell', 1, ''),
(18, 344, 16, 'spell', 3, ''),
(6, 182, 17, 'armor', 2, ''),
(6, 394, 31, 'weapon', 6, ''),
(8, 309, 30, 'weapon', 2, ''),
(20, 256, 2, 'pet', 1, 'My Daimyo'),
(21, 400, 18, 'spell', 3, ''),
(20, 298, 11, 'pet', 2, 'My Magical Egg'),
(3, 218, 2, 'pet', 3, 'My Daimyo'),
(21, 328, 1, 'shield', 1, ''),
(8, 353, 24, 'weapon', 6, ''),
(11, 300, 18, 'weapon', 2, ''),
(8, 352, 23, 'weapon', 5, ''),
(21, 327, 1, 'armor', 1, ''),
(20, 253, 1, 'shield', 1, ''),
(6, 210, 2, 'armor', 2, ''),
(8, 211, 2, 'pet', 1, 'My Daimyo'),
(8, 321, 19, 'weapon', 4, ''),
(10, 290, 2, 'spell', 2, ''),
(3, 214, 4, 'pet', 1, 'My Raptor Duck'),
(20, 252, 1, 'armor', 1, ''),
(21, 333, 3, 'pet', 1, 'My Penguin'),
(10, 219, 2, 'pet', 1, 'My Daimyo'),
(10, 220, 4, 'pet', 2, 'My Raptor Duck'),
(10, 221, 9, 'shield', 2, ''),
(10, 222, 10, 'shield', 3, ''),
(10, 223, 19, 'armor', 2, ''),
(11, 320, 19, 'weapon', 2, ''),
(8, 286, 12, 'spell', 1, ''),
(10, 226, 8, 'spell', 1, ''),
(8, 318, 18, 'spell', 1, ''),
(10, 228, 11, 'spell', 1, ''),
(21, 335, 2, 'spell', 1, ''),
(10, 230, 8, 'weapon', 2, ''),
(6, 232, 10, 'weapon', 2, ''),
(20, 251, 1, 'weapon', 1, ''),
(8, 349, 19, 'spell', 6, ''),
(10, 283, 9, 'spell', 1, ''),
(11, 313, 18, 'spell', 4, ''),
(20, 325, 10, 'armor', 2, ''),
(8, 319, 8, 'spell', 1, ''),
(5, 241, 6, 'pet', 1, 'My Sparky'),
(5, 242, 5, 'pet', 1, 'My Parrot'),
(5, 243, 8, 'pet', 1, 'My Ice Vampragon'),
(10, 385, 13, 'spell', 8, ''),
(10, 250, 12, 'spell', 1, ''),
(20, 296, 18, 'weapon', 2, ''),
(20, 348, 19, 'spell', 2, ''),
(11, 277, 12, 'spell', 1, ''),
(21, 402, 11, 'spell', 5, ''),
(23, 366, 1, 'weapon', 1, ''),
(8, 346, 15, 'spell', 1, ''),
(8, 347, 16, 'spell', 1, ''),
(20, 354, 8, 'spell', 5, ''),
(20, 355, 12, 'spell', 6, ''),
(20, 356, 11, 'spell', 7, ''),
(22, 357, 1, 'weapon', 1, ''),
(22, 358, 1, 'armor', 1, ''),
(22, 359, 1, 'shield', 1, ''),
(11, 360, 15, 'spell', 5, ''),
(11, 361, 19, 'spell', 6, ''),
(11, 362, 16, 'spell', 7, ''),
(11, 363, 14, 'spell', 8, ''),
(11, 364, 23, 'weapon', 2, ''),
(11, 365, 25, 'weapon', 2, ''),
(23, 367, 1, 'armor', 1, ''),
(23, 368, 1, 'shield', 1, ''),
(21, 405, 11, 'pet', 3, 'My Magical Egg'),
(23, 370, 6, 'shield', 2, ''),
(23, 371, 16, 'armor', 2, ''),
(23, 372, 7, 'shield', 3, ''),
(23, 373, 5, 'shield', 4, ''),
(23, 374, 4, 'shield', 5, ''),
(23, 375, 14, 'armor', 3, ''),
(23, 376, 13, 'armor', 4, ''),
(23, 377, 3, 'spell', 1, ''),
(20, 378, 25, 'weapon', 5, ''),
(21, 403, 12, 'spell', 6, ''),
(21, 401, 16, 'spell', 4, ''),
(21, 381, 14, 'spell', 1, ''),
(21, 382, 2, 'pet', 2, 'My Daimyo'),
(10, 383, 15, 'spell', 3, ''),
(10, 384, 16, 'spell', 4, ''),
(21, 386, 18, 'weapon', 2, ''),
(11, 387, 27, 'weapon', 4, ''),
(11, 388, 15, 'shield', 2, ''),
(6, 390, 11, 'shield', 3, ''),
(18, 391, 31, 'weapon', 3, ''),
(18, 392, 32, 'weapon', 4, ''),
(20, 396, 27, 'weapon', 6, ''),
(6, 397, 6, 'pet', 2, 'My Sparky'),
(21, 398, 10, 'armor', 2, ''),
(21, 399, 14, 'shield', 2, ''),
(24, 406, 1, 'weapon', 1, ''),
(24, 407, 1, 'armor', 1, ''),
(24, 408, 1, 'shield', 1, ''),
(24, 409, 2, 'weapon', 2, ''),
(25, 411, 1, 'weapon', 1, ''),
(25, 412, 1, 'armor', 1, ''),
(25, 413, 1, 'shield', 1, ''),
(26, 414, 1, 'weapon', 1, ''),
(26, 415, 1, 'armor', 1, ''),
(26, 416, 1, 'shield', 1, ''),
(25, 417, 3, 'spell', 1, ''),
(25, 418, 4, 'spell', 2, ''),
(25, 419, 5, 'spell', 3, ''),
(25, 420, 6, 'spell', 4, ''),
(27, 421, 1, 'weapon', 1, ''),
(27, 422, 1, 'armor', 1, ''),
(27, 423, 1, 'shield', 1, ''),
(26, 424, 2, 'shield', 2, ''),
(27, 425, 3, 'spell', 1, ''),
(27, 426, 4, 'spell', 2, ''),
(27, 427, 5, 'spell', 3, ''),
(27, 428, 6, 'spell', 4, ''),
(26, 429, 5, 'weapon', 2, ''),
(26, 430, 4, 'weapon', 3, ''),
(26, 431, 1, 'spell', 1, ''),
(26, 432, 2, 'pet', 1, 'My Daimyo'),
(21, 436, 13, 'shield', 3, ''),
(21, 437, 25, 'weapon', 3, ''),
(21, 438, 23, 'weapon', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `zw_miscs`
--

CREATE TABLE IF NOT EXISTS `zw_miscs` (
  `ItemId` int(11) NOT NULL,
  `ItemName` varchar(225) NOT NULL,
  `ItemDesc` varchar(225) NOT NULL,
  `ItemElement` varchar(225) NOT NULL,
  `ItemType` varchar(225) NOT NULL DEFAULT 'Melee',
  `CostMP` int(11) NOT NULL,
  `CostSP` int(11) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT '0',
  `SellPrice` int(11) NOT NULL DEFAULT '0',
  `Dropable` tinyint(1) NOT NULL,
  `PowerLevel` int(11) NOT NULL,
  `ItemLevel` int(11) NOT NULL,
  `BuyType` tinyint(1) NOT NULL DEFAULT '1',
  `Buyable` tinyint(1) NOT NULL,
  `HoursOwned` int(11) NOT NULL,
  `Extra` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zw_monsters`
--

CREATE TABLE IF NOT EXISTS `zw_monsters` (
  `MonsterId` int(11) NOT NULL,
  `MonsterName` varchar(225) NOT NULL,
  `MonsterDesc` text NOT NULL,
  `Level` int(11) NOT NULL,
  `HP` int(11) NOT NULL,
  `MP` int(11) NOT NULL,
  `SP` int(11) NOT NULL,
  `Gold` int(11) NOT NULL,
  `Exp` int(11) NOT NULL,
  `Stre` int(11) NOT NULL,
  `Dext` int(11) NOT NULL,
  `Inte` int(11) NOT NULL,
  `Char` int(11) NOT NULL,
  `Endu` int(11) NOT NULL,
  `Luck` int(11) NOT NULL,
  `ExtraData` varchar(225) NOT NULL,
  `Elements` varchar(225) NOT NULL,
  `Types` varchar(225) NOT NULL,
  `BaseDamage` int(11) NOT NULL,
  `RandDamage` int(11) NOT NULL,
  `BonusToHit` int(11) NOT NULL,
  `ArmorFire` int(11) NOT NULL,
  `ArmorWater` int(11) NOT NULL,
  `ArmorIce` int(11) NOT NULL,
  `ArmorWind` int(11) NOT NULL,
  `ArmorEarth` int(11) NOT NULL,
  `ArmorEnergy` int(11) NOT NULL,
  `ArmorLight` int(11) NOT NULL,
  `ArmorDarkness` int(11) NOT NULL,
  `ArmorMelee` int(11) NOT NULL,
  `ArmorRanged` int(11) NOT NULL,
  `ArmorMagic` int(11) NOT NULL,
  `BodyFileName` varchar(225) NOT NULL,
  `HeadFileName` varchar(225) NOT NULL,
  `BackgroundId` int(11) NOT NULL,
  `BackgroundFileName` varchar(225) NOT NULL,
  `MaxPackSize` tinyint(1) NOT NULL,
  `WeaponElement` varchar(225) NOT NULL,
  `WeaponType` varchar(225) NOT NULL,
  `BackgroundTerrains` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zw_monsters`
--

INSERT INTO `zw_monsters` (`MonsterId`, `MonsterName`, `MonsterDesc`, `Level`, `HP`, `MP`, `SP`, `Gold`, `Exp`, `Stre`, `Dext`, `Inte`, `Char`, `Endu`, `Luck`, `ExtraData`, `Elements`, `Types`, `BaseDamage`, `RandDamage`, `BonusToHit`, `ArmorFire`, `ArmorWater`, `ArmorIce`, `ArmorWind`, `ArmorEarth`, `ArmorEnergy`, `ArmorLight`, `ArmorDarkness`, `ArmorMelee`, `ArmorRanged`, `ArmorMagic`, `BodyFileName`, `HeadFileName`, `BackgroundId`, `BackgroundFileName`, `MaxPackSize`, `WeaponElement`, `WeaponType`, `BackgroundTerrains`) VALUES
(1, 'Frogzard', 'Huge, strong and dumb as a rock this strange evolution of frog lizards are being pushed from their natural habitat in the Zamboo swamp region for some unknown reason, making them a threat to nearby towns and farms.', 0, 35, 0, 25, 20, 60, 0, 0, 0, 0, 0, 0, 'zard', '3', '1', 1, 5, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-frogzard.swf', 'monster-frogzard-head.swf', 2, 'Background-hillsmts-multi.swf', 2, 'Earth', 'Melee', 'hills,sand'),
(2, 'Icezard', 'The Zards are one of the most adaptable creatures on this world, and you will find their voracious jaws in every conceivable habitat...including the frozen reaches of the far north.', 0, 30, 0, 25, 23, 50, 0, 0, 0, 0, 0, 0, 'zard', '4', '3', 1, 5, 0, 120, 100, -10, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-icezard.swf', 'monster-icezard-head.swf', 3, 'background-ice-multi2.swf', 2, 'Ice', 'Magic', 'ice'),
(11, 'Darkzard', 'What first appeared to be a shadow is now leaping to eat you.  A race of FrogZard enchanted by the Wizards of Darkness and sent to wreak havoc on all.', 3, 50, 0, 25, 18, 100, 0, 0, 0, 0, 0, 15, 'zard', '8', '1', 1, 6, 0, 50, 50, 50, 50, 100, 50, 150, -10, 25, 25, 25, 'monster-darkzard.swf', 'monster-darkzard-head.swf', 21, 'background-darkforest.swf', 2, 'Darkness', 'Melee', 'forest,darkovia'),
(14, 'Firezard', 'Firezards tend to like the warmer climates of the world, including magma vents. Sometimes they lose their way...', 1, 50, 0, 25, 15, 60, 5, 0, 0, 0, 0, 0, 'zard', '1', '1', 1, 5, 0, 0, 120, 120, 90, 100, 90, 100, 100, 20, 20, 20, 'monster-firezard.swf', 'monster-firezard-head.swf', 10, 'background-volcano.swf', 3, 'Fire', 'Melee', 'volcano,fire'),
(15, 'Energyzard', 'Created by the Lord of Energy to power his massive weapon forges, some EnergyZards escaped their master''s stronghold and now run rampant.', 1, 50, 0, 25, 25, 60, 0, 10, 0, 0, 0, 0, 'zard', '6', '1', 1, 5, 0, 100, 120, 100, 100, 100, -10, 100, 110, 20, 20, 20, 'monster-energyzard.swf', 'monster-energyzard-head.swf', 2, 'Background-hillsmts-multi.swf', 2, 'Energy', 'Melee', 'hills,sand'),
(51, 'TadZard', 'Zards born into watery domains find themselves quickly adapting to their environment, and are soon able to survive, and feed, fully submerged or on dry land.', 3, 71, 100, 25, 20, 100, 0, 10, 0, 0, 5, 0, 'zard', '2', '1', 1, 8, 0, 0, -100, 10, 100, 100, 150, 110, 100, 10, 30, 15, 'monster-tadzard.swf', 'monster-tadzard-head.swf', 9, 'background-water.swf', 2, 'Water', 'Melee', 'underwater'),
(54, 'RayZard', 'More intelligent than most zards, the RayZard is the preferred pack animal for the dwarven miners of Oreia because they do not easily get lost in the maze of the mine shafts.', 6, 120, 136, 25, 20, 100, 5, 5, 20, 0, 0, 0, 'zard', '7', '1', 1, 8, 0, 100, 100, 100, 100, 100, 100, -100, 150, 25, 25, 15, 'monster-rayzard.swf', 'monster-rayzard-head.swf', 23, 'background-farmgarden.swf', 2, 'Light', 'Melee', 'forest'),
(55, 'Windzard', 'Windzards can''t fly, but they blast a spurt of 200 mile per hour wind that packs a wallop!  They also have very sharp beaks.', 7, 106, 100, 25, 20, 110, 10, 20, 0, 0, 5, 0, 'zard', '5', '1', 1, 8, 0, 100, 100, 100, -100, 100, 150, 50, 50, 15, 15, 15, 'monster-windzard.swf', 'monster-windzard-head.swf', 2, 'Background-hillsmts-multi.swf', 2, 'Wind', 'Melee', 'hills,sand'),
(43, 'MotherZard', 'Zards have to come from somewhere! MotherZards are a breed of their own. They can give birth to Zards of all types depending on the environment they live in.', 30, 335, 60, 30, 50, 1050, 25, 5, 20, 0, 50, 50, 'zard', '3', '1', 3, 13, 0, 100, 100, 100, 100, 100, 100, 100, 100, 15, 15, 10, 'monster-motherzard.swf', 'monster-motherzard-head.swf', 6, 'background-road2.swf', 1, 'Earth', 'Melee', 'road,plains'),
(56, 'BlizZard', 'This diabolical creation of the Zardmaster, crafted for war, has an icy disposition, and is all spike, all ice, and not very nice! Normally bound to arctic lands, it follows its master''s commands, hunting the cold wastelands in search of prey, often young adventurers.', 15, 105, 120, 25, 60, 450, 20, 15, 20, 0, 20, 0, 'zard', '4', '3', 3, 10, 2, 140, 100, 50, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-blizzard.swf', 'monster-icezard-head.swf', 2, 'Background-hillsmts-multi.swf', 3, 'Ice', 'Melee', 'hills,sand'),
(1776, 'Sir Lanceler', 'Sir Lanceler is one of the three trainers in Battleon.', 0, 35, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 'trainer', '0', '1', 1, 5, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'trainers/monster-lanceler7.swf', '', 2, 'background-blank.swf', 1, 'Earth', 'Melee', 'hills,sand'),
(1774, 'Neberon', 'Care to do a little training? I specialize in the arts of magic for more experienced adventurers. The options in battle will be different depending on which stat you strain. I can only train 5 points per battle. Good luck!', 0, 35, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 'trainer', '0', '1', 1, 5, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'trainers/monster-neberon7.swf', '', 2, 'background-blank.swf', 1, 'Water', 'Magic', 'hills,sand'),
(1775, 'Grimweld', 'Care to do a little training? I specialize in warrior training for more experienced adventurers. The options in battle will be different depending on which stat you train. I can only train 5 points per battle. Good luck!', 0, 35, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 'trainer', '0', '1', 1, 5, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'trainers/monster-grimweld7.swf', '', 2, 'background-blank.swf', 1, 'Earth', 'Melee', 'hills,sand'),
(57, 'Mermazon', 'An underwater race of astonishing agility, Mermazons serve the Lord of Water unquestioningly.', 5, 65, 100, 25, 60, 180, 0, 15, 0, 0, 10, 0, 'mermazon', '2', '1', 1, 8, 0, 110, -10, 60, 110, 100, 150, 100, 100, 25, 25, 25, 'monster-mermazonnew.swf', 'monster-mermazon-head.swf', 9, 'background-water.swf', 2, 'Water', 'Melee', 'underwater'),
(58, 'Mermazon', 'An underwater race of astonishing agility, Mermazons serve the Lord of Water unquestioningly.', 15, 160, 100, 25, 100, 360, 0, 15, 0, 0, 10, 0, 'mermazon', '2', '1', 3, 9, 1, 110, -10, 60, 110, 100, 150, 100, 100, 25, 25, 25, 'monster-mermazonnew.swf', 'monster-mermazon-head.swf', 9, 'background-water.swf', 2, 'Water', 'Melee', 'underwater'),
(3, 'Mermazon Archer', 'An underwater race of astonishing agility, Mermazons serve the Lord of Water unquestioningly. Mermazon Archers harness the dangerous element to propel their arrows.', 10, 105, 100, 25, 160, 300, 5, 30, 5, 0, 5, 5, 'mermazon', '2', '1', 2, 8, 2, 110, -10, 60, 110, 100, 150, 100, 100, 35, 15, 25, 'monster-mermazonarcher.swf', 'monster-mermazon-head.swf', 2, 'background-water.swf', 2, 'Water', 'Ranged', 'underwater'),
(4, 'Frogzard Hunter', 'Crikey!', 0, 50, 0, 25, 40, 150, 0, 0, 0, 0, 0, 0, 'zard, hunter', '3', '1', 1, 5, 0, 100, 100, 100, 100, 100, 100, 100, 100, 10, 20, 0, 'monster-frogzardhunter.swf', '', 2, 'Background-hillsmts-multi.swf', 2, 'Earth', 'Melee', 'hills,sand'),
(5, 'Razorwing', 'Razorwings patrol the world of Lore, the eyes of the Wind Lord. Normally remaining high above, this razorwing must think you''re an easy target...', 10, 150, 105, 25, 40, 300, 15, 25, 10, 0, 0, 0, 'flying', '5', '1', 2, 8, 2, 110, 90, 110, 80, 140, 130, 90, 90, 30, 25, 25, 'monster-razorwing.swf', 'monster-razorwing-head.swf', 2, 'Background-hillsmts-multi.swf', 2, 'Wind', 'Ranged', 'hills,sand'),
(6, 'Sickly Zombie', 'This zombie has lost his ability to drain life, making him especially weak.', 4, 105, 55, 25, 40, 225, 0, 5, 5, 0, 5, 5, 'undead', '8', '1', 1, 8, 0, 100, 80, 80, 100, 100, 100, 130, 100, 10, 20, 20, 'monster-sicklyzombie.swf', 'monster-zombie-head.swf', 2, 'background-darkcemetary.swf', 2, 'Darkness', 'Melee', 'darkovia'),
(7, 'Tiny Treasure Chest', 'This is your lucky day!', 5, 0, 0, 25, 100, 0, 0, 0, 0, 0, 0, 2000, 'reward', '0', '1', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-goldchest.swf', '', 9, 'Background-hillsmts-multi.swf', 2, 'Water', 'Melee', 'hills,sand'),
(8, 'Small Treasure Chest', 'This is your lucky day!', 15, 0, 0, 25, 250, 0, 0, 0, 0, 0, 0, 2000, 'reward', '0', '1', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-goldchest.swf', '', 9, 'Background-hillsmts-multi.swf', 1, 'Neutral', 'Melee', 'hills,sand'),
(12, 'Lesser Zombie', 'A Zombie is not someone who died and was reanimated-- it is someone who is haldway between life and death. They survive by sucking life from the fully living. This one has gone a long time without sucking life energy and is weakened.', 9, 70, 50, 25, 60, 300, 5, 10, 0, 5, 5, 20, 'undead', '8', '1', 2, 8, 0, 150, 100, 70, 100, 100, 100, 140, 60, 25, 25, 25, 'monster-zombie2.swf', 'monster-zombie-head.swf', 2, 'background-darkcemetary.swf', 2, 'Darkness', 'Melee', 'darkovia'),
(13, 'Fire Drakel Wizard', 'This lizard is an Infernomancer. All shall burn at his fett. Which is scary! Have you ever seen Drakel feet?', 10, 221, 155, 25, 44, 300, 0, 10, 40, 0, 0, 0, 'drakel', '1', '1', 2, 8, 2, 50, 125, 150, 100, 100, 100, 150, 50, 20, 20, 20, 'monster-firedrakelcaster.swf', '', 2, 'background-volcano.swf', 3, 'Fire', 'Magic', 'volcano,fire'),
(16, 'Zzott', 'No one knows (or remembers) the origins of Zzotts, and no one is ever sure of whose side they''re on, but many professors of anatomical science believe them to be overgrown and self-propagating cells discarded by the Energy Lord himself.', 4, 100, 100, 25, 40, 300, 5, 10, 0, 0, 5, 0, '', '6', '1', 2, 6, 0, 100, 140, 110, 90, 100, -50, 90, 90, 25, 25, 25, 'monster-zzott.swf', '', 9, 'Background-chasm.swf', 3, 'Energy', 'Melee', ''),
(17, 'Ganzard', 'Straight from the world of StickQuest comes the fabled Ganzard. It''s a tough opponent because stick monsters possess great durability when facing 3 dimensional enemies. Use the Stick Blade to beat the Ganzard off with a... stick?', 10, 200, 50, 25, 120, 600, 10, 10, 5, 10, 5, 10, 'zard', '1', '1', 2, 9, 2, 70, 70, 70, 70, 70, 70, 70, 70, 25, 25, 25, 'monster-ganzard.swf', '', 9, 'Background-hillsmts-multi.swf', 3, 'ElementX', 'Melee', 'hills,sand'),
(18, 'Frazzlhutch', 'A fungal creature who likes dark and dampl places, the frazzlhutch is a perfect spy for the darkness realm.', 12, 130, 100, 25, 40, 300, 30, 15, 0, 0, 15, 0, '', '8', '1', 2, 9, 3, 120, -40, 120, 110, 70, 100, 120, 20, 25, 25, 25, 'monster-frazzlhutch.swf', '', 9, 'background-swampy.swf', 3, 'Darkness', 'Melee', 'trees'),
(37, 'Quizzat', 'A bouncy creature with a desire to be left alone. It happens to be quite tasty though, despite its appearance, and is a favorite target for hunters.\r\n\r\n', 13, 165, 80, 25, 80, 390, 0, 5, 0, 0, 30, 30, '', '6', '1', 2, 9, 3, 100, 150, 100, 100, 80, -20, 80, 80, 30, 15, 30, 'monster-quizzat.swf', '', 9, 'background-swampy.swf', 3, 'Energy', 'Melee', 'trees'),
(19, 'CloudZard', 'Flying high, a bird like no other in the sky! The Cloudzard is a creation of the ZardMaster gone wrong. Seems instead of growing scales it grew feathers! His idea for this zard was to be a spy for all his mysterious plots of evil. Will he succeed?', 15, 100, 100, 25, 60, 450, 10, 50, 0, 0, 5, 10, 'zard', '4', '3', 3, 10, 2, 100, 100, 100, 50, 140, 100, 100, 100, 25, 25, 25, 'monster-cloudzard.swf', '', 2, 'background-mountain.swf', 3, 'Wind', 'Melee', 'hills,sand'),
(38, 'LightZard', 'The ZardMaster found some uncontrollable RayZards that were let go by dwarf miners. He bred them to be even more powerful and aggressive than before. Unlike other breeds, they seem to actively seek out humans as their main food source!', 15, 100, 100, 25, 60, 450, 20, 20, 10, 0, 0, 25, 'zard', '7', '3', 3, 10, 2, 100, 100, 100, 100, 100, 100, 50, 140, 25, 25, 25, 'monster-lightzard.swf', '', 2, 'background-mountain.swf', 3, 'Light', 'Melee', 'hills,sand'),
(21, 'NightZard', 'Huge, strong and dumb as a rock this estanged evolution of from lizards are being pushed from their natural habitat in the Zamboo swamp region for some unknown reason, making them a threat to nearby towns and farms.', 15, 100, 130, 25, 60, 450, 10, 25, 35, 0, 0, 5, 'zard', '8', '3', 3, 10, 2, 100, 100, 100, 100, 100, 100, 140, 50, 25, 25, 25, 'monster-nightzard.swf', '', 2, 'background-darkforest.swf', 3, 'Darkness', 'Melee', 'night'),
(22, 'Razorclaw', 'Although sometimes confused with werewolves, the elusive Razorclaws are actually wolves transformed by dark magic, to act as assassins for their sorcerous makers. Their skins are highly prized, because it usually costs several hunters their lives to get one.\r\n\r\n', 15, 205, 50, 25, 300, 450, 15, 15, 15, 0, 15, 15, '', '8', '1', 4, 8, 5, 180, 70, 70, 70, 70, 70, 100, 50, 35, 20, 25, 'monster-razorclaw.swf', '', 2, 'background-darkforest.swf', 3, 'Darkness', 'Melee', 'night'),
(20, 'StormZard', 'This shocking creation of the ZardMaster storms onto the scene! Their jaws deliver a powerful jolt of electricity through a victim, and they fire strong bolts of lightning from their mouths.', 15, 105, 110, 25, 60, 450, 10, 30, 15, 0, 10, 10, 'zard', '6', '3', 3, 10, 2, 100, 140, 100, 100, 100, 50, 100, 100, 25, 25, 25, 'monster-stormzard.swf', '', 2, 'background-mountain.swf', 3, 'Energy', 'Melee', 'hills,sand'),
(23, 'ToadZard', 'The ZardMaster created this creature with demonic horns and poison skin glands. Hikers are advised to use caution when traveling through Greenguard Forest, as ToadZards have been known to eat humans whole!', 15, 115, 100, 25, 60, 450, 35, 20, 0, 0, 20, 0, 'zard', '3', '3', 3, 10, 2, 100, 100, 100, 140, 50, 100, 100, 100, 25, 25, 25, 'monster-toadzard.swf', '', 2, 'background-swampy.swf', 3, 'Earth', 'Melee', ''),
(24, 'InfernoZard', 'Flying high, a bird like no other in the sky! The Cloudzard is a creation of the ZardMaster gone wrong. Seems instead of growing scales it grew feathers! His idea for this zard was to be a spy for all his mysterious plots of evil. Will he succeed?', 16, 215, 100, 25, 90, 525, 10, 25, 0, 0, 10, 30, 'zard', '1', '3', 3, 10, 2, 50, 100, 140, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-infernozard2.swf', '', 2, 'background-volcano.swf', 3, 'Fire', 'Melee', ''),
(25, 'Zeel', 'Zeels are the ghastly result of the energy sorceress Kreehana''s crossing of man with eel. Kreehana is still believed to be alive, and still up to her old tricks somewhere...', 18, 65, 100, 25, 40, 600, 25, 25, 0, 0, 20, 20, '', '6', '1', 4, 8, 5, 20, 70, 30, 30, 30, -100, 30, 30, 10, 10, 10, 'monster-zeel.swf', '', 2, 'Background-chasm.swf', 3, 'Energy', 'Melee', ''),
(26, 'Zard Ice Pack', 'This is a small group of very icy zards. Do they travel in packs to keep warm? Or to keep safe? You could ask them, but don''t get too close...', 20, 200, 65, 25, 150, 825, 30, 30, 10, 0, 0, 50, 'zard', '4', '3', 3, 10, 2, 120, 80, 25, 100, 100, 100, 110, 100, 25, 30, 30, 'monster-icezard-pack.swf', 'monster-icezard-head.swf', 2, 'background-frostvalvillage.swf', 3, 'Ice', 'Melee', ''),
(27, 'Zombie Commander', 'This zombie seems to be the one who commands all the others-- his power is vast. Stop him before he escapes to continue his reign of terror!', 20, 370, 60, 25, 200, 1200, 20, 20, 20, 20, 20, 0, 'undead', '8', '1', 4, 10, 0, 160, 100, 100, 100, 100, 160, 160, 90, 15, 15, 15, 'monster-zombiegiant.swf', 'monster-zombie-head.swf', 2, 'background-darkcemetary.swf', 2, 'Darkness', 'Melee', 'darkovia'),
(28, 'Zombie Knight', 'A half-living knight.', 20, 210, 55, 25, 120, 450, 20, 20, 20, 0, 20, 20, 'undead', '8', '1', 3, 10, 0, 100, 100, 80, 80, 60, 140, 130, 40, 25, 10, 25, 'monster-zombieknight.swf', 'monster-zombie-head.swf', 2, 'background-darkcemetary.swf', 3, 'Darkness', 'Melee', 'darkovia'),
(29, 'Kabroz', 'The brother of the Moglin Zorbak! Kabroz is Zorbak''s older brother. He doesn''t have Zorbak''s natural talent for dark magics, but he has learned much over the years. Kabroz invented Zombies and also turned his childhood home into a haunted village.', 25, 320, 420, 25, 300, 900, 15, 25, 50, 10, 15, 10, 'moglin', '8', '1', 3, 12, 10, 100, 100, 100, 100, 100, 100, 160, 80, 25, 25, 25, 'monster-kabroz2.swf', 'monster-kabroz-head.swf', 2, 'background-evilwoods.swf', 1, 'Darkness', 'Magic', ''),
(30, 'Grizzle', 'Grizzles are an enchanted race of energy creatures that dwell in the forests. Because of their low-level animal intelligence, they often become scared and force battle upon unwitting travelers.', 25, 215, 100, 25, 60, 600, 75, 0, 0, 0, 50, 0, '', '6', '1', 3, 12, 5, 80, 150, 80, 80, 70, -50, 80, 80, 30, 25, 35, 'monster-grizzle.swf', 'monster-grizzle-head.swf', 2, 'background-forest-multi.swf', 1, 'Energy', 'Magic', ''),
(31, 'Orc Wizard', 'These Orcs are smarter and stronger than their brutish ancestors.', 30, 250, 60, 25, 240, 900, 10, 10, 70, 10, 10, 40, 'orc', '1', '1', 5, 10, 5, 100, 100, 100, 100, 100, 100, 100, 100, 35, 30, 20, 'monster-orcwizard.swf', 'monster-orc-head.swf', 2, 'Background-burningtown2.swf', 3, 'Fire', 'Magic', ''),
(32, 'Pygmy Zombie', 'A pygmy tribesman who ran afould of a shaman, this poor little man has been... zombified! Because he''s small, he''s quick, and he can actually regenerate life more quickly than his bigger cousins.', 30, 180, 90, 25, 100, 600, 10, 40, 20, 0, 20, 10, 'undead', '8', '1', 5, 9, 5, 100, 100, 80, 20, 80, 100, 120, 50, 40, 40, 35, 'monster-pygmyzombie.swf', 'monster-zombie-head.swf', 2, 'background-darkcemetary.swf', 3, 'Darkness', 'Melee', ''),
(9, 'Treasure Chest', 'This is your lucky day! Wow!', 30, 0, 0, 25, 550, 0, 0, 0, 0, 0, 0, 2000, 'reward', '0', '1', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-goldchest.swf', '', 9, 'Background-hillsmts-multi.swf', 1, 'Neutral', 'Melee', 'hills,sand'),
(59, 'Tropical Mermazon', 'An underwater race of astonishing agility, Mermazons serve the Lord of Water unquestioningly. The Tropical Mermazons are the most specialized warriors.', 30, 345, 105, 25, 200, 660, 25, 25, 20, 25, 25, 30, 'mermazon', '2', '1', 3, 13, 10, 110, -10, 60, 110, 100, 150, 100, 100, 25, 25, 25, 'monster-tropicalmermazon.swf', 'monster-mermazon-head.swf', 9, 'background-water.swf', 2, 'Water', 'Ranged', 'underwater'),
(33, 'Zombie Commander', 'This zombie seems to be the one who commands all the others-- his power is vast. Stop him before he escapes to continue his reign of terror!', 40, 770, 125, 25, 400, 2100, 35, 35, 35, 30, 30, 25, 'undead', '8', '1', 5, 13, 5, 140, 90, 80, 80, 90, 140, 140, 50, 20, 20, 20, 'monster-zombiegiant.swf', 'monster-zombie-head.swf', 2, 'background-darkcemetary.swf', 2, 'Darkness', 'Melee', 'darkovia'),
(34, 'FrostyZard', 'A crazy, more powerful cousin of the IceZards. It really likes playing snow ball fights, and skiing at all the best winter resorts. They usually have a season pass at their favorite places and might just invite you along. But, oh... I think it''s hungry...', 38, 350, 60, 25, 130, 775, 75, 75, 0, 40, 0, 0, 'zard', '4', '3', 5, 13, 5, 100, -50, -300, 50, 50, 100, 100, 0, 25, 25, 25, 'monster-icezard.swf', 'monster-icezard-head.swf', 3, 'background-ice-multi2.swf', 3, 'Ice', 'Melee', 'ice'),
(35, 'FlameZard', 'More powerful than a normal FireZard, with some boosted resistances. It prefers warm places, like hot lava beds, sulfar springs, hot baths, and wrapped up in fresh human fur.', 35, 250, 50, 25, 100, 700, 35, 100, 0, 40, 0, 0, 'zard', '1', '1', 5, 13, 5, -300, 100, 100, -50, 100, -50, 50, 50, 20, 20, 20, 'monster-firezard.swf', 'monster-firezard-head.swf', 10, 'background-volcano.swf', 3, 'Fire', 'Melee', 'volcano,fire'),
(36, 'SparkZard', 'More powerful than the regular EnergyZard, with boosted resistances. It likes playing in dangerous electrical storms with kites, and drinking galloons of batter acid.', 36, 325, 60, 25, 120, 760, 105, 25, 25, 0, 0, 25, 'zard', '6', '1', 5, 13, 5, 50, 100, 50, -50, -50, -300, 50, 0, 20, 20, 20, 'monster-energyzard.swf', 'monster-energyzard-head.swf', 2, 'Background-hillsmts-multi.swf', 3, 'Energy', 'Melee', 'hills,sand'),
(60, 'Elite Mermazon', 'The Royal Guard of the Tropical Mermazon warrior class.', 60, 765, 170, 25, 400, 4950, 50, 100, 50, 50, 40, 10, 'mermazon', '2', '1', 8, 16, 10, 140, -10, 30, 100, 100, 140, 100, 70, 30, 25, 25, 'monster-tropicalmermazon.swf', 'monster-mermazon-head.swf', 9, 'background-water.swf', 3, 'Water', 'Melee', 'underwater'),
(61, 'Elite Frogzard', 'This Frogzard trained at the War Academy of Zardology. He''s been waiting for a chance to fight you.', 63, 340, 85, 25, 300, 1800, 75, 25, 20, 0, 70, 75, 'zard', '3', '1', 10, 20, 0, 75, 75, 75, 75, 75, 75, 75, 75, 25, 25, 50, 'monster-frogzard.swf', 'monster-frogzard-head.swf', 2, 'Background-hillsmts-multi.swf', 3, 'Earth', 'Melee', 'hills,sand'),
(63, 'Razorclaw', 'Although sometimes confused with werewolves, the elusive Razorclaws are actually wolves transformed by dark magic, to act as assassins for their sorcerous makers. Their skins are highly prized, because it usually costs several hunters their lives to get one.\r\n\r\n', 63, 700, 55, 25, 1500, 900, 45, 75, 10, 10, 75, 100, '', '8', '1', 9, 16, 10, 180, 70, 70, 70, 70, 70, 100, 50, 35, 20, 25, 'monster-razorclaw.swf', '', 2, 'background-darkforest.swf', 3, 'Darkness', 'Melee', 'night'),
(64, 'Pygmy Zombie', 'A pygmy tribesman who ran afould of a shaman, this poor little man has been... zombified! Because he''s small, he''s quick, and he can actually regenerate life more quickly than his bigger cousins.', 65, 350, 90, 25, 300, 1200, 25, 100, 25, 25, 50, 100, 'undead', '8', '1', 5, 18, 10, 120, 100, 50, 50, 100, 100, 120, 50, 50, 50, 30, 'monster-pygmyzombie.swf', 'monster-zombie-head.swf', 2, 'background-darkcemetary.swf', 3, 'Darkness', 'Melee', ''),
(65, 'Zard X-3', 'The ZardMaster''s chosen mutant zard leader, version 3.0.', 60, 450, 50, 25, 600, 1950, 50, 50, 50, 50, 50, 50, 'zard', '3', '1', 7, 14, 0, 100, 100, 100, 100, 100, 100, 100, 100, 35, 25, 35, 'monster-zardx3.swf', 'monster-frogzard-head.swf', 2, 'Background-hillsmts-multi.swf', 3, 'Earth', 'Melee', 'hills,sand'),
(66, 'Zard X-3', 'The ZardMaster''s chosen mutant zard leader, version 3.0.', 80, 715, 160, 25, 800, 2550, 75, 75, 50, 50, 75, 75, 'zard', '3', '1', 8, 20, 10, 100, 100, 100, 100, 100, 100, 100, 100, 35, 25, 35, 'monster-zardx3.swf', 'monster-frogzard-head.swf', 2, 'Background-hillsmts-multi.swf', 3, 'Earth', 'Melee', 'hills,sand'),
(67, 'Kabroz', 'The brother of the Moglin Zorbak! Kabroz is Zorbak''s older brother. He doesn''t have Zorbak''s natural talent for dark magics, but he has learned much over the years. Kabroz invented Zombies and also turned his childhood home into a haunted village.', 75, 815, 675, 25, 900, 2400, 25, 100, 150, 50, 25, 25, 'moglin', '8', '1', 10, 20, 10, 100, 100, 100, 100, 100, 100, 130, 20, 40, 35, 45, 'monster-kabroz2.swf', 'monster-kabroz-head.swf', 2, 'background-evilwoods.swf', 1, 'Darkness', 'Magic', ''),
(68, 'Pirrelvag the Blizzard Dragon', 'Pirrelvag is currently taking a holiday on a sunny beach. Plase don''t disturb her. Girls just want to have fun!', 69, 1355, 230, 25, 400, 2850, 70, 45, 60, 60, 40, 50, 'dragon', '4', '1', 6, 22, 10, 180, 120, 0, 20, 140, 180, 50, 0, 30, 25, 14, 'monster-froidrogdragon.swf', 'monster-froidrog-head.swf', 2, 'background-sea.swf', 1, 'Ice', 'Melee', ''),
(69, 'Umazen', 'One of a society of warrior women who are most feared on the battlefield, Umazen are trained from age 3 to fight. Their mission is to free those enslaved by tyrants. They then take payment for their deeds. It is rumored the Umazen men are slaves themselves.', 65, 728, 150, 25, 400, 1500, 50, 100, 50, 50, 50, 25, '', '7', '1', 6, 22, 5, 80, 80, 120, 100, 100, 120, 80, 120, 35, 25, 25, 'monster-umazen.swf', 'monster-umazen-head.swf', 2, 'background-swampy.swf', 3, 'Light', 'Melee', ''),
(70, 'MechaZombie', 'A mechanical undead who uses a chained arm to defeat foes. His origin is unknown and so is his power.', 68, 714, 400, 25, 800, 2400, 130, 120, 0, 0, 50, 40, 'undead', '8', '1', 6, 22, 5, 120, 80, 100, 120, 60, 80, 140, 0, 40, 50, 30, 'monster-mechazombie.swf', 'monster-mechazombie-head.swf', 2, 'Background-hillsmts-multi.swf', 3, 'Darkness', 'Melee', ''),
(71, 'Zombie Dragon', 'A zombified dragon, he breathes acid doing darkness and fire damage.', 70, 1725, 65, 25, 1000, 3750, 75, 75, 50, 50, 50, 50, 'undead', '8', '1', 7, 14, 5, 120, 90, 90, 70, 90, 120, 120, 60, 25, 25, 25, 'monster-dragonzombie.swf', 'monster-dragonzombie-head.swf', 2, 'Background-hillsmts-multi.swf', 1, 'Darkness', 'Melee', ''),
(10, 'Huge Treasure Chest', 'This is your lucky day! You''ll need a pack mule or something to load this haul home!', 60, 0, 0, 25, 1300, 30, 0, 0, 0, 0, 0, 2000, 'reward', '0', '1', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-goldchest.swf', '', 9, 'Background-hillsmts-multi.swf', 1, 'Neutral', 'Melee', 'hills,sand'),
(72, 'Elite Zeel', 'Zeels are the ghastly result of the energy sorceress Kreehana''s crossing of man with eel. This Zeel is older and stronger than most. Kreehana is still believed to be alive, and still up to her old tricks somewhere...', 85, 515, 55, 25, 900, 3600, 50, 100, 30, 50, 100, 120, '', '6', '1', 8, 22, 10, 30, 20, 20, 20, 30, -100, 30, 20, 40, 25, 15, 'monster-zeel.swf', '', 2, 'Background-chasm.swf', 3, 'Energy', 'Melee', ''),
(73, 'Elizabeth', 'If you are fighting Elizabeth, then you are too busy to read this description.', 75, 800, 135, 25, 800, 3000, 50, 75, 50, 50, 50, 100, 'ninja', '3', '1', 8, 22, 15, 80, 100, 80, 130, 100, 130, 140, 70, 25, 25, 25, 'monster-liz.swf', '', 2, 'Background-hillsmts-multi.swf', 1, 'Earth', 'Melee', ''),
(74, 'VorpalZard', 'Until now the VorpalZard has been but a legend. Perhaps nothing can sate its voracious appetite!', 90, 2055, 170, 25, 800, 6000, 120, 100, 80, 30, 30, 90, 'zard', '3', '1', 10, 26, 15, 200, 200, 200, 200, 200, 200, 200, 200, 25, 30, 25, 'monster-vorpalzard.swf', '', 2, 'background-mountain.swf', 3, 'Earth', 'Melee', ''),
(75, 'Narrviz', 'This being is a technowizard that has found a way to live forever: when he "dies" in combat his body seemingly discorporates into energy. But moments later, and perhaps a thousand miles away, the Narrviz re-forms.', 95, 1320, 400, 25, 900, 2265, 25, 120, 150, 50, 80, 50, '', '6', '1', 16, 26, 15, 100, 120, 100, 80, 90, -10, 90, 80, 40, 35, 35, 'monster-narrviz.swf', '', 2, 'background-evilwoods.swf', 3, 'Energy', 'Magic', ''),
(39, 'Junior Zard Pack', 'Crikey!', 40, 300, 55, 25, 300, 1800, 40, 60, 20, 60, 0, 20, 'zard', '3', '1', 5, 13, 5, 100, 100, 100, 100, 100, 100, 100, 100, 25, 40, 20, 'monster-zardlings-pack.swf', 'monster-frogzard-head.swf', 2, 'Background-hillsmts-multi.swf', 1, 'Earth', 'Melee', 'hills,sand'),
(40, 'Zadd the Golem Builder', 'Zadd specializes in making Golems of all types. He plans on taking over the Skraeling Desert with his army of Golems. Can you stop him? Discovered by Qwesh and Smashycomman.', 64, 470, 185, 25, 700, 2100, 85, 55, 105, 20, 0, 40, '', '3', '1', 8, 16, 10, 100, 120, 100, 120, 50, 100, 120, 100, 35, 20, 30, 'monster-golem-pack.swf', '', 2, 'Background-hillsmts-multi.swf', 1, 'Earth', 'Melee', 'hills,sand'),
(41, 'Treasure Hoard', 'Words fail to describe this loot. ', 75, 0, 0, 25, 1600, 600, 0, 0, 0, 0, 0, 2000, 'reward', '0', '1', 0, 0, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-goldchest.swf', '', 9, 'Background-hillsmts-multi.swf', 1, 'Neutral', 'Melee', 'hills,sand'),
(490, 'Sir Pwnsalot', 'Sir Pwnsalot used to train random stats for your money. For that, Death killed him and placed him in the middle of Nowhere. Now, Sir Pwnsalot has to atone for his annoying sins by un-training the same stats he once trained--for free. At least there''s no refunds of money.', 0, 35, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 'trainer,lean:1,power:1', '0', '1', 1, 5, 0, 100, 100, 100, 100, 100, 100, 100, 100, 25, 25, 25, 'monster-pwnsalot9.swf', 'monster-untrainer-head.swf', 2, 'background-blank.swf', 1, 'Earth', 'Melee', 'hills,sand');

-- --------------------------------------------------------

--
-- Table structure for table `zw_pets`
--

CREATE TABLE IF NOT EXISTS `zw_pets` (
  `ItemId` int(11) NOT NULL,
  `ItemName` varchar(225) NOT NULL,
  `ItemDesc` varchar(225) NOT NULL,
  `ItemElement` varchar(225) NOT NULL,
  `ItemType` varchar(225) NOT NULL DEFAULT 'Melee',
  `Charisma` int(11) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT '0',
  `SellPrice` int(11) NOT NULL DEFAULT '0',
  `Dropable` tinyint(1) NOT NULL,
  `PowerLevel` int(11) NOT NULL,
  `ItemLevel` int(11) NOT NULL,
  `BuyType` tinyint(1) NOT NULL DEFAULT '1',
  `Buyable` tinyint(1) NOT NULL,
  `HoursOwned` int(11) NOT NULL,
  `Extra` varchar(225) NOT NULL,
  `BaseHP` int(11) NOT NULL,
  `BaseDamage` int(11) NOT NULL,
  `RandomDamage` int(11) NOT NULL,
  `BonusToHit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zw_pets`
--

INSERT INTO `zw_pets` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `Charisma`, `Price`, `SellPrice`, `Dropable`, `PowerLevel`, `ItemLevel`, `BuyType`, `Buyable`, `HoursOwned`, `Extra`, `BaseHP`, `BaseDamage`, `RandomDamage`, `BonusToHit`) VALUES
(1, 'Bunny Rabbit', 'Widdle Bunny Wabbit', '5', 'Melee', 5, 100, 20, 1, 0, 0, 1, 1, 0, 'pet-bunny.swf', 1, 2, 1, 0),
(2, 'Daimyo', 'A noble little dog given special powers by the forces of good.', '3', 'Melee', 20, 100, 20, 1, 5, 5, 1, 1, 0, 'pet-daimyo.swf', 1, 4, 2, 0),
(3, 'Penguin', 'Cool Penguin', '4', 'Melee', 20, 250, 50, 1, 0, 0, 1, 1, 0, 'pet-penguin.swf', 1, 2, 2, 0),
(4, 'Raptor Duck', 'A mutant conjured by Jackel Sano!', '2', 'Ranged', 45, 500, 100, 1, 10, 10, 1, 1, 0, 'pet-raptorduck.swf', 1, 4, 10, 0),
(5, 'Parrot', 'Petey the Parrot', '2', 'Ranged', 15, 200, 40, 1, 20, 20, 1, 1, 0, 'pet-parrot.swf', 1, 2, 3, 0),
(6, 'Sparky', 'Sparky the Baby Red Dragon', '1', 'Magic', 25, 600, 120, 1, 20, 20, 1, 1, 0, 'pet-sparky.swf', 1, 4, 6, 0),
(7, 'Squidge', 'Little Squidge Thing', '3', 'Melee', 0, 0, 0, 1, 20, 20, 1, 0, 0, 'pet-squidge.swf', 1, 4, 10, 0),
(8, 'Ice Vampragon', 'What happens when a vampire bat is magically fused with a dragon? A Vampragon happens, that''s what! There are different breeds of them-- this one attacks with ice and heals you a little on its special attack!', '4', 'Magic', 10, 5000, 1000, 1, 30, 30, 1, 1, 0, 'pet-icevampragon.swf', 1, 8, 15, 0),
(9, 'Lilliputians', 'Lilliputian Sorcerer Army', '6', 'Magic', 50, 20000, 4000, 1, 60, 60, 1, 1, 0, 'pet-lilliputians.swf', 1, 6, 7, 5),
(10, 'Were-Hare', 'The evil conterpart of the helpful WereBunny.', '7', 'Melee', 30, 1000, 200, 1, 60, 60, 1, 1, 0, 'pet-werehare.swf', 1, 12, 17, 5),
(11, 'Magical Egg', 'What on Lore could be inside this strange-looking egg? Don''t eat it before you find out!', '7', 'Melee', 20, 1000, 200, 1, 60, 60, 1, 1, 0, 'pet-werebunny.swf', 1, 16, 20, 5),
(12, 'Pygmy Zombie Entourage', 'These pygmy zombies just keep following you everywhere. They must really want to be your friend!', '8', 'Melee', 20, 3000, 600, 1, 85, 85, 1, 1, 0, 'pet-PygmyZombieGroupies.swf', 1, 50, 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `zw_shields`
--

CREATE TABLE IF NOT EXISTS `zw_shields` (
  `ItemId` int(11) NOT NULL,
  `ItemName` varchar(225) NOT NULL,
  `ItemDesc` varchar(225) NOT NULL,
  `ItemElement` varchar(225) NOT NULL,
  `ItemType` varchar(225) NOT NULL DEFAULT 'Melee',
  `Price` int(11) NOT NULL DEFAULT '0',
  `SellPrice` int(11) NOT NULL DEFAULT '0',
  `Dropable` tinyint(1) NOT NULL,
  `PowerLevel` int(11) NOT NULL,
  `ItemLevel` int(11) NOT NULL,
  `BuyType` tinyint(1) NOT NULL DEFAULT '1',
  `Buyable` tinyint(1) NOT NULL,
  `HoursOwned` int(11) NOT NULL,
  `Extra` varchar(225) NOT NULL,
  `ArmorFire` int(11) NOT NULL,
  `ArmorWater` int(11) NOT NULL,
  `ArmorIce` int(11) NOT NULL,
  `ArmorWind` int(11) NOT NULL,
  `ArmorEarth` int(11) NOT NULL,
  `ArmorEnergy` int(11) NOT NULL,
  `ArmorLight` int(11) NOT NULL,
  `ArmorDarkness` int(11) NOT NULL,
  `ArmorMelee` int(11) NOT NULL,
  `ArmorRanged` int(11) NOT NULL,
  `ArmorMagic` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zw_shields`
--

INSERT INTO `zw_shields` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `Price`, `SellPrice`, `Dropable`, `PowerLevel`, `ItemLevel`, `BuyType`, `Buyable`, `HoursOwned`, `Extra`, `ArmorFire`, `ArmorWater`, `ArmorIce`, `ArmorWind`, `ArmorEarth`, `ArmorEnergy`, `ArmorLight`, `ArmorDarkness`, `ArmorMelee`, `ArmorRanged`, `ArmorMagic`) VALUES
(1, 'None', 'No shield', '0', 'None', 999999, 0, 0, 0, 0, 1, 0, 0, 'shield-001.swf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Shield of Darkness', 'Created from hardened shadows, this shield protects you strongly against all darkness based attacks but the price is increased sensitivity to light.', '8', 'Darkness', 100, 40, 1, 0, 0, 1, 1, 0, 'shield-darkness.swf', 0, 0, 0, 0, 0, 0, 10, -10, 0, 0, 0),
(2, 'Wooden Shield', 'This cleanly sliced section of a giant Kwaino tree will reduce the amount of damage you take from earth weapons. However it offers very little protection versus fire.', '3', 'Earth', 50, 25, 1, 0, 0, 1, 1, 0, 'shield-wooden.swf', 10, -5, 0, 5, -10, 0, 0, 0, 0, 0, 0),
(4, 'Energy Shield', 'If a bolt of lightning is coming your way, better have one of these.', '6', 'Energy', 100, 40, 1, 0, 0, 1, 1, 0, 'shield-energy.swf', 0, 5, 5, 0, 5, -10, -5, 0, 0, 0, 0),
(5, 'Fire Shield', 'This shield is great at blocking dragon breath and all other sources of fire. Many brave adventurers found this shield essential during the battle against the fire dragon Akriloth.', '1', 'Fire', 100, 40, 1, 0, 0, 1, 1, 0, 'shield-fire.swf', -10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Ice Shield', 'Fends off ice attacks. Don''t try to lick it.', '4', 'Ice', 100, 40, 1, 0, 0, 1, 1, 0, 'shield-ice.swf', 5, -5, -10, 0, 0, 5, 5, 0, 0, 0, 0),
(7, 'Water Shield', 'Easily absorbs water attacks. Watch out for energy attacks. That''ll hurt.', '2', 'Water', 100, 40, 1, 0, 0, 1, 1, 0, 'shield-water.swf', -5, -5, 0, 0, 0, 10, 0, 0, 0, 0, 0),
(8, 'Wind Shield', 'Crafted from the carapace of the massive mountaintop-dwelling wind beasts called Altidonts, this wind shield will definitely keep bugs out of your teeth.', '5', 'Wind', 100, 40, 1, 0, 0, 1, 1, 0, 'shield-wind.swf', 5, 0, 0, -10, 0, 5, 0, 0, 0, 0, 0),
(9, 'Dimensional', 'The Dimension shield is created by a magical guantlet that helps you greatly defend from all attack types by phasing you in and out of our dimension.', '0', 'Neutral', 100, 0, 1, 5, 5, 1, 1, 0, 'shield-dimensional.swf', -4, -4, -4, -4, -4, -4, -4, -4, 4, 4, 4),
(10, 'Ethos', 'A shield that helps you defend from ranged attacks. Its power comes from the beliefs of the user.', '0', 'Neutral', 100, 1, 1, 10, 10, 1, 1, 0, 'shield-ethos.swf', 0, 0, 0, 0, 0, 0, 0, 0, -5, 18, -5),
(11, 'Frogzard Shield', 'A good all-around shield, protects a little bit from everything except darkness.', '0', 'Neutral', 1500, 600, 1, 30, 30, 1, 1, 0, 'shield-frogzard.swf', -5, -5, -5, -5, -5, -5, -5, 10, 10, 0, 0),
(12, 'Logos', 'A shield that helps you defend from magic attacks. Its power comes from the intellect of the user.', '0', 'Neutral', 100, 1, 1, 45, 45, 1, 1, 0, 'shield-logos.swf', 0, 0, 0, 0, 0, 0, 0, 0, -5, -5, 18),
(13, 'Pathos', 'A shield that helps you defend from melee attacks. Its power comes from the emotions of its user.', '0', 'Neutral', 100, 1, 1, 70, 70, 1, 1, 0, 'shield-pathos.swf', 0, 0, 0, 0, 0, 0, 0, 0, 18, -5, -5),
(14, 'Monster Claw', 'Forged by the dark warrior Deader, this shield was imbued with powers of all elemental monsters before the great Elemental War.', '0', 'Neutral', 3500, 1000, 1, 60, 60, 1, 1, 0, 'shield-claw.swf', -5, -5, -5, -5, -5, -5, -5, -5, 6, 4, -2),
(15, 'Golden', 'The shield of rulers, it costs 300000 gold and adds greatly to all defenses.', '0', 'Neutral', 300000, 150000, 1, 75, 75, 1, 1, 0, 'shield-golden-unified.swf', -15, -15, -15, -15, -15, -15, -15, -15, 12, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `zw_shops`
--

CREATE TABLE IF NOT EXISTS `zw_shops` (
  `ShopId` int(11) NOT NULL DEFAULT '3',
  `ItemId` int(11) NOT NULL DEFAULT '2',
  `ShopBitmask` int(11) NOT NULL DEFAULT '1',
  `ItemCategory` varchar(225) NOT NULL DEFAULT 'weapon',
  `ItemLevel` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zw_shops`
--

INSERT INTO `zw_shops` (`ShopId`, `ItemId`, `ShopBitmask`, `ItemCategory`, `ItemLevel`) VALUES
(1, 2, 1, 'weapon', 0),
(1, 3, 1, 'armor', 0),
(1, 2, 1, 'armor', 20),
(1, 3, 1, 'weapon', 15),
(1, 10, 1, 'armor', 50),
(1, 4, 1, 'armor', 25),
(1, 4, 1, 'weapon', 5),
(1, 11, 1, 'armor', 0),
(1, 5, 1, 'armor', 40),
(1, 6, 1, 'weapon', 10),
(1, 5, 1, 'weapon', 5),
(1, 7, 1, 'weapon', 5),
(1, 8, 1, 'weapon', 10),
(1, 9, 1, 'weapon', 10),
(1, 2, 1, 'shield', 0),
(1, 3, 1, 'shield', 0),
(1, 4, 1, 'shield', 0),
(1, 5, 1, 'shield', 0),
(1, 6, 1, 'shield', 0),
(1, 7, 1, 'shield', 0),
(1, 8, 1, 'shield', 0),
(1, 9, 1, 'shield', 5),
(1, 10, 1, 'shield', 10),
(1, 18, 1, 'armor', 10),
(1, 12, 1, 'armor', 0),
(1, 13, 1, 'armor', 0),
(1, 14, 1, 'armor', 0),
(1, 15, 1, 'armor', 0),
(1, 16, 1, 'armor', 0),
(1, 17, 1, 'armor', 0),
(1, 19, 1, 'armor', 0),
(1, 1, 1, 'spell', 5),
(1, 2, 1, 'spell', 10),
(1, 3, 1, 'spell', 0),
(1, 4, 1, 'spell', 0),
(1, 5, 1, 'spell', 0),
(1, 6, 1, 'spell', 0),
(1, 2, 1, 'pet', 5),
(1, 1, 1, 'pet', 0),
(1, 3, 1, 'pet', 0),
(1, 4, 1, 'pet', 10),
(1, 10, 1, 'weapon', 20),
(1, 11, 1, 'weapon', 20),
(1, 7, 1, 'spell', 15),
(1, 8, 1, 'spell', 15),
(1, 9, 1, 'spell', 15),
(1, 10, 1, 'spell', 20),
(1, 11, 1, 'spell', 20),
(1, 5, 1, 'pet', 20),
(1, 6, 1, 'pet', 20),
(1, 7, 1, 'pet', 20),
(1, 6, 1, 'armor', 25),
(1, 7, 1, 'armor', 30),
(1, 8, 1, 'armor', 30),
(1, 11, 1, 'shield', 30),
(1, 13, 1, 'weapon', 27),
(1, 12, 1, 'spell', 25),
(1, 13, 1, 'spell', 30),
(1, 8, 1, 'pet', 30),
(1, 9, 1, 'armor', 35),
(1, 20, 1, 'armor', 45),
(1, 21, 1, 'armor', 65),
(1, 22, 1, 'armor', 70),
(1, 12, 1, 'shield', 45),
(1, 13, 1, 'shield', 70),
(1, 14, 1, 'shield', 60),
(1, 15, 1, 'shield', 75),
(1, 18, 1, 'weapon', 40),
(1, 26, 1, 'weapon', 65),
(1, 29, 1, 'weapon', 75),
(1, 9, 1, 'pet', 60),
(1, 10, 1, 'pet', 60),
(1, 11, 1, 'pet', 60),
(1, 12, 1, 'pet', 85),
(1, 14, 1, 'weapon', 32),
(1, 15, 1, 'weapon', 33),
(1, 16, 1, 'weapon', 45),
(1, 17, 1, 'weapon', 50),
(1, 12, 1, 'weapon', 40),
(1, 30, 1, 'weapon', 25),
(1, 18, 1, 'spell', 60),
(1, 19, 1, 'weapon', 50),
(1, 20, 1, 'weapon', 50),
(1, 21, 1, 'weapon', 60),
(1, 22, 1, 'weapon', 60),
(1, 23, 1, 'weapon', 65),
(1, 24, 1, 'weapon', 70),
(1, 25, 1, 'weapon', 70),
(1, 27, 1, 'weapon', 75),
(1, 28, 1, 'weapon', 89),
(1, 14, 1, 'spell', 35),
(1, 15, 1, 'spell', 40),
(1, 16, 1, 'spell', 40),
(1, 19, 1, 'spell', 65),
(1, 31, 1, 'weapon', 40),
(1, 32, 1, 'weapon', 30),
(1, 33, 1, 'weapon', 55),
(1, 34, 1, 'weapon', 57);

-- --------------------------------------------------------

--
-- Table structure for table `zw_spells`
--

CREATE TABLE IF NOT EXISTS `zw_spells` (
  `ItemId` int(11) NOT NULL,
  `ItemName` varchar(225) NOT NULL,
  `ItemDesc` varchar(225) NOT NULL,
  `ItemElement` varchar(225) NOT NULL,
  `ItemType` varchar(225) NOT NULL DEFAULT 'Melee',
  `Cost` int(11) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT '0',
  `SellPrice` int(11) NOT NULL DEFAULT '0',
  `Dropable` tinyint(1) NOT NULL,
  `PowerLevel` int(11) NOT NULL,
  `ItemLevel` int(11) NOT NULL,
  `BuyType` tinyint(1) NOT NULL DEFAULT '1',
  `Buyable` tinyint(1) NOT NULL,
  `HoursOwned` int(11) NOT NULL,
  `Extra` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zw_spells`
--

INSERT INTO `zw_spells` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `Cost`, `Price`, `SellPrice`, `Dropable`, `PowerLevel`, `ItemLevel`, `BuyType`, `Buyable`, `HoursOwned`, `Extra`) VALUES
(1, 'Avalanche Slide', '"On the twelfth day of Frostval my true love gave to me... a dozen magic hits against my enemy!"', '0', 'Magic', 3, 100, 75, 1, 5, 5, 1, 1, 0, 'spell-giftboxavalanche.swf'),
(2, 'Fire Bat Swarm', 'Summon several hell bats to assail your opponent with fiery vengeance.', '1', 'Magic', 5, 300, 225, 1, 10, 10, 1, 1, 0, 'spell-firebatswarm.swf'),
(3, 'Fireball', 'The one and only "great ball of fire". Ignite earth enemies, steam away water elementals, and melt ice monsters.', '1', 'Magic', 4, 50, 37, 1, 0, 0, 1, 1, 0, 'spell-fireball.swf'),
(4, 'Freeze', 'Chill your enemy to the core.', '4', 'Magic', 4, 150, 112, 1, 0, 0, 1, 1, 0, 'spell-freeze.swf'),
(5, 'Salad Shooter', 'Great for making potions out of Seed Spitters.', '3', 'Magic', 3, 150, 112, 1, 0, 0, 1, 1, 0, 'spell-saladshooter.swf'),
(6, 'Tendrils of Darkness', 'Whips of living shadow to strangle your enemy.', '8', 'Magic', 7, 100, 75, 1, 0, 0, 1, 1, 0, 'spell-tendrilsofdarkness.swf'),
(7, 'RainStorm', 'Summon a blasting shower of rain.', '2', 'Magic', 7, 300, 225, 1, 15, 15, 1, 1, 0, 'spell-rainstorm.swf'),
(8, 'Whirl Tide', 'A powerful series of swirling magical water attacks!', '2', 'Magic', 9, 400, 300, 1, 15, 15, 1, 1, 0, 'spell-whirltide.swf'),
(9, 'EarthStrike', 'Call forth a massive stalagmite to do you "dirty work".', '3', 'Magic', 7, 350, 262, 1, 15, 15, 1, 1, 0, 'spell-earthstrike.swf'),
(10, 'Burn', 'Generate the heat of a small star from the palm of your hand.', '1', 'Magic', 7, 400, 300, 1, 20, 20, 1, 1, 0, 'spell-burn.swf'),
(11, 'Daybreak', 'Summon the brightness of a dawn.', '7', 'Magic', 10, 500, 375, 1, 20, 20, 1, 1, 0, 'spell-daybreak.swf'),
(12, 'Current Event', 'Lightning to strike you enemy from all sides.', '6', 'Magic', 6, 400, 300, 1, 25, 25, 1, 1, 0, 'spell-currentevent.swf'),
(13, 'Heal Scratches', 'Bathe yourself in a nice green glow of healing magic. (Heals more than 25 hit points)', '0', 'Magic', 20, 1500, 1000, 1, 30, 30, 1, 1, 0, 'spell-heal2.swf'),
(18, 'Heal Wounds', 'Not feeling well? Bathe yourself in a nice blue glow of healing magic. (Heals more than 100 hit points)', '0', 'Magic', 60, 10000, 7500, 1, 60, 60, 1, 1, 0, 'spell-heal.swf'),
(15, 'Moglin War Party', 'A pack of moglins specially bred for war to attack your foe! Four good Earth Melee attacks. Spell by Shigity Shank.', '3', 'Magic', 10, 1000, 750, 1, 40, 40, 1, 1, 0, 'spell-moglinwarparty.swf'),
(14, 'Summon Pixie', 'Summon a cute flying Pixie to join you as a guest. Costs 15 MP per turn during the battle to keep her with you. Cast again to send her away. The Pixie has both a good Magic Light attack, and a pocket full of healing dust.', '7', 'Magic', 1, 3000, 2250, 1, 35, 35, 1, 1, 0, 'spell-summon-pixie.swf'),
(16, 'Summon Skull', 'Summon a flaming skull to join you as a guest. Costs 20 MP per turn during the battle to keep it bound it you. Cast again to send skull away. The skull has a powerful Magic Fire attack.', '1', 'Magic', 1, 1000, 750, 1, 40, 40, 1, 1, 0, 'spell-summon-skull.swf'),
(19, 'Avalanche Extreme', '"On the twelfth day of Frostval my true love gave to me... a dozen magic hits against my enemy!"', '0', 'Magic', 9, 3000, 225, 1, 65, 65, 1, 1, 0, 'spell-giftboxavalanche.swf');

-- --------------------------------------------------------

--
-- Table structure for table `zw_users`
--

CREATE TABLE IF NOT EXISTS `zw_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `secretcode` int(11) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `zw_users`
--

INSERT INTO `zw_users` (`id`, `username`, `password`, `email`, `secretcode`, `confirmed`) VALUES
(1, 'admin', '32250170a0dca92d53ec9624f336ca24', 'example@email.com', 1337, 3),
(2, 'nivp', '4671d6e20b9d4108889e1b14e217c3f9', 'lordgavers@gmail.com', 9790, 3),
(3, 'justpassingby', '926c578dd10e4007a38a1f2b9ccb3fc7', 'into_oblivion@gmx.at', 2634, 3),
(4, 'koolcait', '906c3d936d1b2f2f8b663788e607d5ca', 'shadowpwn1994@gmail.com', 8757, 3),
(5, 'JbotzDeafbot', 'b2603b701aaf8de014b23f6628fa07c7', 'biozxombie@gmail.com', 5753, 3),
(6, 'Fartko Fartrack', '48d2936b19770447c95dca95519ac62f', 'none', 7420, 3),
(7, 'tarion647', '9e0d50b35c58d022029c2031c4aa8862', 'tarion647@gmail.com', 1278, 3),
(8, 'phlox lover', 'b3482447e3ac4f1ca2e1efb1840e7a52', 'none', 1400, 3),
(9, 'Lt Time', 'f2b79ca7263dc72b6e1470a486eeb119', 'juxicor666@gmail.com', 1571, 3),
(10, 'Zephyr2000', 'f523803bb09f36fa98f20d1278ed8537', 'dragon_99@live.co.uk', 3781, 3),
(11, 'Andlu', '3c6e656a66b91c225633fbe194cd111d', 'Andluskarner@gmail.com', 5566, 3),
(12, 'Therigon', '855a57d86d2e14bafffd076cc72e35d1', 'none', 4427, 3),
(13, 'fighter100', '74d90cd0d6bf802707eaa08dec70f67b', 'saygeblackmon@yahoo.com', 1214, 3),
(14, 'Cat', 'cfd7d7850c50cab341d638d5472d8ff6', 'none', 4203, 3),
(15, '2048', '5f4dcc3b5aa765d61d8327deb882cf99', 'none', 8661, 3),
(16, 'pg13you', '25f9e794323b453885f5181f1b624d0b', 'none', 2088, 3),
(17, 'Zippleclopper', 'a8c8729211ae2be593eb29baccb20acf', 'none', 9986, 3);

-- --------------------------------------------------------

--
-- Table structure for table `zw_vendors`
--

CREATE TABLE IF NOT EXISTS `zw_vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ShopName` varchar(225) NOT NULL,
  `VendorName` varchar(225) NOT NULL,
  `VendorFile` varchar(225) NOT NULL,
  `ShopRaceId` int(11) NOT NULL,
  `ShopGuildId` int(11) NOT NULL,
  `ShopActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `zw_vendors`
--

INSERT INTO `zw_vendors` (`id`, `ShopName`, `VendorName`, `VendorFile`, `ShopRaceId`, `ShopGuildId`, `ShopActive`) VALUES
(1, 'Frogzard Hunter''s Shop', 'Frogzard Hunter', 'vendor-hunter.swf', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zw_weapons`
--

CREATE TABLE IF NOT EXISTS `zw_weapons` (
  `ItemId` int(11) NOT NULL,
  `ItemName` varchar(225) NOT NULL,
  `ItemDesc` varchar(225) NOT NULL,
  `ItemElement` varchar(225) NOT NULL,
  `ItemType` varchar(225) NOT NULL,
  `ItemPowerLevel` int(11) NOT NULL,
  `ItemLevel` int(11) NOT NULL,
  `ItemPowerExp` int(11) NOT NULL,
  `Dropable` tinyint(1) NOT NULL DEFAULT '1',
  `BuyType` tinyint(1) NOT NULL DEFAULT '1',
  `HoursOwned` int(11) NOT NULL DEFAULT '0',
  `BaseDamage` int(11) NOT NULL,
  `RandomDamage` int(11) NOT NULL,
  `ItemBonus` int(11) NOT NULL,
  `Buyable` tinyint(1) NOT NULL DEFAULT '1',
  `Extra` varchar(225) NOT NULL,
  `Price` int(11) NOT NULL,
  `SellPrice` int(11) NOT NULL,
  `proc` int(11) DEFAULT NULL,
  `procframe` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zw_weapons`
--

INSERT INTO `zw_weapons` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `ItemPowerLevel`, `ItemLevel`, `ItemPowerExp`, `Dropable`, `BuyType`, `HoursOwned`, `BaseDamage`, `RandomDamage`, `ItemBonus`, `Buyable`, `Extra`, `Price`, `SellPrice`, `proc`, `procframe`) VALUES
(1, 'Long Sword', 'A sturdy yet simple blade with an ornately carved handle.', '3', 'Melee', 0, 0, 0, 0, 1, 0, 1, 18, 2, 0, 'weapon-001.swf', 0, 0, 0, '0'),
(2, 'Battleaxe', 'A simple double bladed axe.', '3', 'Melee', 0, 0, 0, 1, 1, 0, 6, 10, 2, 1, 'weapon-battleaxe.swf', 20, 8, 0, '0'),
(3, 'War''s Edge', 'This heavy blade doesn''t cut your opponent so much as crush them. War likes his salsa chunky. (Requested by Rafiq)', '8', 'Melee', 15, 15, 0, 1, 1, 0, 6, 14, 2, 1, 'weapon-war.swf', 320, 241, 0, '0'),
(4, 'Energy Flail', 'A ball''n''chain that sizzles with electricity.', '6', 'Melee', 5, 5, 0, 1, 1, 0, 7, 19, 2, 1, 'weapon-Energyflail.swf', 150, 75, 0, '0'),
(5, 'Fire Throwing Knives', 'Throw two fire knives at your opponent for two hits per attack turn.', '1', 'Ranged', 5, 5, 0, 1, 1, 0, 2, 10, 5, 1, 'weapon-firethrowingknives.swf', 75, 56, 100, 'Fire'),
(6, 'Deadly Wind Staff', 'Better bring a jacket...', '5', 'Magic', 10, 10, 0, 1, 1, 0, 6, 24, 5, 1, 'weapon-windstaff.swf', 300, 225, 0, '0'),
(7, 'Boomerang', 'Look out, mate!', '3', 'Ranged', 5, 5, 0, 1, 1, 0, 3, 10, 0, 1, 'weapon-boomerang2.swf', 150, 112, 100, 'Fire'),
(8, 'Icebolt Crossbow', 'Send a deadly accurate bolt of ice directly into the heart of your enemy!', '4', 'Ranged', 10, 10, 0, 1, 1, 0, 3, 24, 0, 1, 'weapon-IceboltCrossbow2.swf', 300, 225, 100, 'Fire'),
(10, 'Darkthorn', 'A pulsing blade of midnight blue.', '8', 'Melee', 20, 20, 0, 1, 1, 0, 3, 22, 7, 1, 'weapon-darkthorn.swf', 300, 225, 0, '0'),
(9, 'BoomBoomerang', 'A boomerang with a special magical fire kick!', '1', 'Ranged', 10, 10, 0, 1, 1, 0, 3, 9, 0, 1, 'weapon-BoomBoomerang2.swf', 350, 262, 100, 'Fire'),
(11, 'Holy Water', 'Blessed by a priest or priestess, holy water can be deadly to dark and unholy creatures, especially...vampires.', '7', 'Magic', 20, 20, 0, 1, 1, 0, 8, 13, 3, 1, 'weapon-holywater.swf', 350, 262, 100, 'Fire'),
(13, 'Wave Striker', 'A blue cyrstalline sword (idea by David Keller) that can summon a huge wave.', '2', 'Magic', 27, 27, 0, 1, 1, 0, 7, 27, 1, 1, 'weapon-wavestriker.swf', 1200, 900, 35, 'Waves'),
(18, 'ZardBane', 'A fairly powerful light weapon constructed by Zhilo. But when it encounters zard monsters it deals Element X damage, plus 3 base and 5 random. Re-equip it at start of each battle for Element X damage to work.', '7', 'Melee', 40, 40, 0, 1, 1, 0, 7, 28, 0, 1, 'weapon-zardbane.swf', 5000, 3750, 0, ''),
(26, 'Unlucky Sword', 'Ever wonder what happens to all of the lucky swords that end up at the bottom of the pile, and all of their luck drains out? This is it.', '3', 'Melee', 65, 65, 0, 1, 1, 0, 25, 0, 0, 1, 'weapon-luckysword.swf', 42000, 31500, 0, ''),
(29, 'Golden Axe', 'The weapon of rulers, this axe costs 700000 gold!', '7', 'Melee', 75, 75, 0, 1, 1, 0, 15, 45, 10, 1, 'weapon-goldenaxe-unified.swf', 700000, 525000, 20, 'Special'),
(14, 'Pzycho Blade', 'A sword that focuses the hidden berserker rage inside the warrior who wields it, first discovered by Pzycho himself.', '1', 'Melee', 32, 32, 0, 1, 1, 0, 1, 42, 10, 1, 'weapon-pzychonew.swf', 1500, 1125, 10, 'special'),
(15, 'Hammer of Unity', 'If I had a hammer/I''d hammer in the morning/ I''d hammer in the evening...all over this land/ I''d hammer out danger/I''d hammer out a warning/ I''d hammer out love between all of my brothers and my sisters/ All over this land.', '1', 'Melee', 35, 35, 0, 1, 1, 0, 7, 33, 5, 1, 'weapon-hammer.swf', 1500, 1125, 66, 'Special'),
(16, 'Siren Spear', 'A weapon that belong to the long-lost race of Sirens, this spear can call forth a "perfect storm" of its own that does 1-10 wind and 15-49 water damage.', '5', 'Magic', 45, 45, 0, 1, 1, 0, 3, 27, 2, 1, 'weapon-sirenspear.swf', 650, 487, 35, 'siren spear'),
(17, 'Eye of the Sphinx', 'An ancient blade that can call forth the spirit of a powerful Sphinx from the sands of time, first found by Kaley.', '5', 'Magic', 50, 50, 0, 1, 1, 0, 6, 36, 2, 1, 'weapon-sphinxblade.swf', 10000, 7500, 25, 'sphinx'),
(12, 'Pumpkin Carver', 'Happy Mogloween! The perfect tool for a fun night of pumpkin smashing!', '1', 'Melee', 40, 40, 0, 1, 1, 0, 5, 25, 5, 1, 'weapon-pumpkinblade2.swf', 12000, 9000, 30, 'Special'),
(30, 'Shovel of Doom', 'A gift from the Moglins with a massively powerful ranged earth special. (This item was created by Ironborn)', '3', 'Melee', 25, 25, 0, 1, 1, 0, 3, 27, 0, 1, 'weapon-doomshovel.swf', 900, 675, 25, 'Special'),
(19, 'HeartBreaker (L50)', 'Level 50 plus version of the HeartBreaker. A unique magic weapon with a powerful fire and light special attack.', '1', 'Magic', 50, 50, 0, 1, 1, 0, 8, 45, 0, 1, 'weapon-heartbreaker.swf', 1000, 750, 25, 'Special'),
(20, 'Ultimate Crossbow', 'A magical crossbow that can hit with either melee water, magic fire, or ranged earth.', '2', 'Ranged', 50, 50, 0, 1, 1, 0, 2, 36, 3, 1, 'weapon-ultimatecrossbow2.swf', 9000, 6750, 100, 'Fire'),
(21, 'Zhilo''s Axe', 'The massive axe of the great warrior Zhilo.', '5', 'Melee', 60, 60, 0, 1, 1, 0, 12, 40, -5, 1, 'weapon-zhiloaxe.swf', 100000, 75000, 25, 'gust'),
(22, 'Red Vengeance', 'A staff powered by a matrix of small fire orbs fashioned by the legendary Drakonnan, who was defeated in the Great Fire War!', '1', 'Magic', 60, 60, 0, 1, 1, 0, 8, 42, 5, 1, 'weapon-redvengeance.swf', 100000, 75000, 11, 'Portal'),
(23, 'Dragonfang Scimitar', 'Forged by Carcharas, the founder of the Order of the Dragonslayers, 1500 years ago. The Dragonfang Scimitar was held in the hoard of the Fear Drake until it was liberated in a great assault on Mount Fear.', '5', 'Magic', 65, 65, 0, 1, 1, 0, 8, 45, 5, 1, 'weapon-dragonfangscimitar.swf', 1600, 1200, 18, 'Special'),
(24, 'Big 100K', 'An ultimate weapon because of superb damage, bonus to hit, and a special ability: it''s darkness blade, but if it senses you are fighting an undead or zombie, it becomes a light weapon!', '8', 'Magic', 70, 70, 0, 1, 1, 0, 12, 45, 15, 1, 'weapon-RetroBig100k3.swf', 100000, 75000, 50, 'Special'),
(25, 'Ice Blade of Calladus', 'A mighty blade of the Dragon Master Calladus.', '4', 'Melee', 70, 70, 0, 1, 1, 0, 12, 36, 10, 1, 'weapon-calladus2.swf', 1500, 1125, 25, 'Special'),
(27, 'Therion''s Spike', 'A hardened iron edge that is blessed and can materialize a paladin''s avatar to stike the enemy.', '7', 'Melee', 75, 75, 0, 1, 1, 0, 8, 49, 5, 1, 'weapon-weavingbladeofchaos.swf', 14000, 10500, 50, 'Special'),
(28, 'Rhublade', 'A mighty weapon for a great pirate! Floyd was supposed to be guarding it, but the Sheep Biter stole it while Floyd was watching cartoons. Robina lifted it from him, and sold it to the Frogzard Hunter.', '3', 'Melee', 89, 89, 0, 1, 1, 0, 5, 30, 0, 1, 'weapon-rhublade.swf', 250000, 150000, 20, 'Special'),
(31, 'Stick Blade', 'Pulled straight from the world of StickQuest comes.. the stick blade!! It has a special power versus the stick monsters called Ganzards.', '4', 'Melee', 40, 40, 0, 1, 1, 0, 6, 27, 20, 1, 'weapon-stickblade.swf', 1000, 225, 0, ''),
(32, 'Skinscraper', 'This expertly crafted weapon has been given extra might by Frostval Moglin magic.', '5', 'Melee', 30, 30, 0, 1, 1, 0, 5, 22, 5, 1, 'weapon-skinscraper.swf', 1200, 1125, 30, 'Special'),
(33, 'Razorscale', 'This dangerous scythe was found among the rare possessions of Bradakhans armory. It is said that this weapon can summon 4 different draconic spirits... ', '1', 'Melee', 55, 55, 0, 1, 1, 0, 8, 52, 5, 1, 'weapon-razorscale.swf', 1000, 750, 20, 'Special'),
(34, 'Frozen Flagpole', 'Someone double-dog dared Twig to touch his tongue to this frozen flagpole, and of course he did. Now he is stuck, and he has become something special to pummel your enemies with!', '4', 'Melee', 57, 57, 0, 1, 1, 0, 16, 26, 0, 1, 'weapon-flagpole2.swf', 1500, 1125, 10, 'Special');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
