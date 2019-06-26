-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2010 at 06:47 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `zardwin`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zw_armors`
--

INSERT INTO `zw_armors` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `Price`, `SellPrice`, `Dropable`, `PowerLevel`, `ItemLevel`, `BuyType`, `Buyable`, `HoursOwned`, `Extra`, `ArmorFire`, `ArmorWater`, `ArmorIce`, `ArmorWind`, `ArmorEarth`, `ArmorEnergy`, `ArmorLight`, `ArmorDarkness`, `ArmorMelee`, `ArmorRanged`, `ArmorMagic`) VALUES
(1, 'Frogzard Hunter', 'The outfit of the League of Frogzard Hunters.  Wear it with pride!  Offers good earth defense and gives a damage bonus for fighting zards.', '0', 'None', 999999, 0, 0, 0, 0, 1, 0, 0, 'armor-zardhunter4.swf', -5, -5, -5, -5, -10, -5, -5, -5, 20, 20, 20);

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
  `gold` int(11) NOT NULL DEFAULT '10000',
  `tokens` int(11) NOT NULL DEFAULT '1000',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `zw_characters`
--

INSERT INTO `zw_characters` (`id`, `charname`, `level`, `exp`, `username`, `type`, `face`, `facecolors`, `class`, `chartype`, `gold`, `tokens`, `strength`, `dexterity`, `intelligence`, `charm`, `endurance`, `luck`, `race`, `subrace`, `clan`, `createdday`, `createddate`, `playedday`, `playeddate`, `armorcolors`, `staff`, `banned`, `extraweaponSlot`, `extraarmorSlot`, `extrashieldSlot`, `extraspellSlot`, `extrapetSlot`, `extramiscSlot`, `extrahouseSlot`, `wins`, `deaths`) VALUES
(1, 'Admin', 110, 0, 'admin', 3, 59, '0xEECC99,0xEE9966,0x663300,0x330000,0x663300', 'Adventurer', 'Guardian', 999999999, 1000, 250, 250, 250, 250, 250, 250, 'Human', 'None', 'Staff', 'Someday', '2009-10-25', 'Someday', 'Sometime', '0x333333,0xFFFFFF,0xFF0000', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `zw_items`
--

INSERT INTO `zw_items` (`CharId`, `AdjustId`, `ItemId`, `ItemCat`, `SortNumber`, `PetName`) VALUES
(1, 1, 1, 'weapon', 1, ''),
(1, 2, 1, 'armor', 1, ''),
(1, 3, 1, 'shield', 1, ''),
(1, 9, 2, 'weapon', 2, ''),
(2, 11, 1, 'armor', 1, ''),
(2, 12, 1, 'shield', 1, ''),
(2, 13, 2, 'weapon', 1, '');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zw_miscs`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(43, 'MotherZard', 'Zards have to come from somewhere! MotherZards are a breed of their own. They can give birth to Zards of all types depending on the environment they live in.', 30, 342, 80, 30, 25, 350, 25, 5, 20, 0, 50, 50, 'zard', '3', '1', 3, 13, 0, 100, 100, 100, 100, 100, 100, 100, 100, 15, 15, 10, 'monster-motherzard.swf', 'monster-motherzard-head.swf', 6, 'background-road2.swf', 1, 'Earth', 'Melee', 'road,plains');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zw_pets`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zw_shields`
--

INSERT INTO `zw_shields` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `Price`, `SellPrice`, `Dropable`, `PowerLevel`, `ItemLevel`, `BuyType`, `Buyable`, `HoursOwned`, `Extra`, `ArmorFire`, `ArmorWater`, `ArmorIce`, `ArmorWind`, `ArmorEarth`, `ArmorEnergy`, `ArmorLight`, `ArmorDarkness`, `ArmorMelee`, `ArmorRanged`, `ArmorMagic`) VALUES
(1, 'None', 'No shield', '0', 'None', 999999, 0, 0, 0, 0, 1, 0, 0, 'shield-001.swf', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `zw_shops`
--

CREATE TABLE IF NOT EXISTS `zw_shops` (
  `ShopId` int(11) NOT NULL DEFAULT '3',
  `ItemId` int(11) NOT NULL DEFAULT '2',
  `ShopBitmask` int(11) NOT NULL DEFAULT '1',
  `ItemCategory` varchar(225) NOT NULL DEFAULT 'weapon'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zw_shops`
--

INSERT INTO `zw_shops` (`ShopId`, `ItemId`, `ShopBitmask`, `ItemCategory`) VALUES
(1, 2, 1, 'weapon');

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
  `Extra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zw_spells`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `zw_users`
--

INSERT INTO `zw_users` (`id`, `username`, `password`, `email`, `secretcode`, `confirmed`) VALUES
(1, 'admin', '32250170a0dca92d53ec9624f336ca24', 'example@email.com', 1337, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `SellPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zw_weapons`
--

INSERT INTO `zw_weapons` (`ItemId`, `ItemName`, `ItemDesc`, `ItemElement`, `ItemType`, `ItemPowerLevel`, `ItemLevel`, `ItemPowerExp`, `Dropable`, `BuyType`, `HoursOwned`, `BaseDamage`, `RandomDamage`, `ItemBonus`, `Buyable`, `Extra`, `Price`, `SellPrice`) VALUES
(1, 'Long Sword', 'A sturdy yet simple blade with an ornately carved handle.', '3', 'Melee', 0, 0, 0, 0, 1, 0, 1, 18, 2, 0, 'weapon-001.swf', 0, 0),
(2, 'Battleaxe', 'A simple double bladed axe.', '3', 'Melee', 0, 0, 0, 1, 1, 0, 6, 10, 2, 1, 'weapon-battleaxe.swf', 20, 8);
