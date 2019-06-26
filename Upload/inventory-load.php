<?php
# Connect to the database
include("config.php");

# Start the session
session_start();
ob_start();

# Get the username, password and character name
$user = mysql_real_escape_string(stripslashes($_POST["strUserName"]));
$password = md5(mysql_real_escape_string(stripslashes($_POST["strPassword"])));
$charname = mysql_real_escape_string(stripslashes($_POST["strCharacterName"]));

# Mysql queries
$character = mysql_query("SELECT * FROM zw_characters WHERE charname='$charname' AND username='{$user}'");
$char = mysql_fetch_array($character);

$username = mysql_query("SELECT * FROM zw_users WHERE username='{$user}' AND password='{$password}'");
$user = mysql_fetch_array($username);

$charid = $char["id"];

# Check for errors
if (mysql_num_rows($character) == 0) {
$error = 1;
}
if (mysql_num_rows($username) == 0) {
$error = 1;
}
if (empty($charname) ){
$error = 1;
}

if($error != 1) {
echo "&status=success&actiontype=loadequipment";

# Load weapons
$i = 0;
$weaponsid = mysql_query("SELECT * FROM zw_items WHERE CharId = '$charid' AND ItemCat = 'weapon' ORDER BY SortNumber ASC");

while($wep = mysql_fetch_array($weaponsid)) {
	$i++;

	$weaponsinfo = mysql_query("SELECT * FROM zw_weapons WHERE ItemId = '{$wep["ItemId"]}'");
	$weapon = mysql_fetch_array($weaponsinfo);
	mysql_free_result($weaponsinfo);

	switch($weapon["ItemType"]){
		case "Melee":
  			$weapontype = "1";
			break;
		case "Ranged":
  			$weapontype = "2";
			break;
		case "Magic":
  			$weapontype = "3";
			break;
	}

	switch($weapon["ItemElement"]) {
		case 1:
  			$weaponelement = "Fire";
			break;
		case 2:
 			$weaponelement = "Water";
			break;
		case 3:
		  	$weaponelement = "Earth";
			break;
		case 4:
  			$weaponelement = "Ice";
			break;
		case 5:
  			$weaponelement = "Wind";
			break;
		case 6:
  			$weaponelement = "Energy";
			break;
		case 7:
  			$weaponelement = "Light";
			break;
		case 8:
  			$weaponelement = "Darkness";
			break;
		case 9:
  			$weaponelement = "X";
			break;
	}

	echo "&idLore_Adj_Weapons$i={$wep["AdjustId"]}";
	echo "&intWeaponSortOrder$i=$i";
	echo "&idLore_Weapons$i={$weapon["ItemId"]}";
	echo "&charid$i={$wep["AdjustId"]}";
	echo "&strWeaponName$i={$weapon["ItemName"]}";
	echo "&strWeaponDescription$i={$weapon["ItemDesc"]}";
	echo "&intWeaponElement$i={$weapon["ItemElement"]}";
	echo "&intWeaponType$i=$weapontype";
	echo "&intWeaponPowerLevel$i=10";
	echo "&intWeaponLevel$i=10";
	echo "&intWeaponPowerExp$i=0";
	echo "&intWeaponBaseDamage$i={$weapon["BaseDamage"]}";
	echo "&intWeaponRandDamage$i={$weapon["RandomDamage"]}";
	echo "&intWeaponBonusToHit$i={$weapon["ItemBonus"]}";
	echo "&strWeaponElement$i=$weaponelement";
	echo "&strWeaponType$i={$weapon["ItemType"]}";
	echo "&strWeaponPassword$i=";
	echo "&strWeaponFileName$i={$weapon["Extra"]}";
}

# Load Shields
$e = 0;

$armorsid = mysql_query("SELECT * FROM zw_items WHERE CharId = '$charid' AND ItemCat = 'armor' ORDER BY SortNumber ASC");

while($arm = mysql_fetch_array($armorsid)) {

	$e++;

	$armorsinfo = mysql_query("SELECT * FROM zw_armors WHERE ItemId = '{$arm["ItemId"]}'");
	$armor = mysql_fetch_array($armorsinfo);
	mysql_free_result($armorsinfo);

	echo "&idLore_Adj_Armors$e={$arm["AdjustId"]}";
	echo "&intArmorSortOrder$e=$e";
	echo "&idLore_Armors$e={$armor["ItemId"]}";
	echo "&charid$e={$arm["AdjustId"]}";
	echo "&strArmorName$e={$armor["ItemName"]}";
	echo "&strArmorDescription$e={$armor["ItemDesc"]}";
	echo "&intArmorElement$e={$armor["ItemElement"]}";
	echo "&intArmorLevel$e=10";
	echo "&intArmorPowerLevel$e=10";
	echo "&intArmorPowerExp$e=0";
	echo "&strArmorCustomSkinFileName$e={$char["armorcolors"]}";
	echo "&strArmorSkinFileName$e=";
	echo "&strArmorPassword$e=";
	echo "&strArmorFileName$e={$armor["Extra"]}";
	echo "&intArmorFIRE$e={$armor["ArmorFire"]}";
	echo "&intArmorWATER$e={$armor["ArmorWater"]}";
	echo "&intArmorICE$e={$armor["ArmorIce"]}";
	echo "&intArmorWIND$e={$armor["ArmorWind"]}";
	echo "&intArmorEARTH$e={$armor["ArmorEarth"]}";
	echo "&intArmorENERGY$e={$armor["ArmorEnergy"]}";
	echo "&intArmorLIGHT$e={$armor["ArmorLight"]}";
	echo "&intArmorDARKNESS$e={$armor["ArmorDarkness"]}";
	echo "&intArmorMELEE$e={$armor["ArmorMelee"]}";
	echo "&intArmorRANGED$e={$armor["ArmorRanged"]}";
	echo "&intArmorMAGIC$e={$armor["ArmorMagic"]}";
}

# Load Spells
$r = 0;

$spellsid = mysql_query("SELECT * FROM zw_items WHERE CharId = '$charid' AND ItemCat = 'spell' ORDER BY SortNumber ASC");

while($spl = mysql_fetch_array($spellsid)) {

	$r++;

	$spellsinfo = mysql_query("SELECT * FROM zw_spells WHERE ItemId = '{$spl["ItemId"]}'");
	$spell = mysql_fetch_array($spellsinfo);
	mysql_free_result($spellsinfo);

	echo "&idLore_Adj_Spells$r={$spl["AdjustId"]}";
	echo "&intSpellSortOrder$r=$r";
	echo "&idLore_Spells$r={$spl["ItemId"]}";
	echo "&charid$r={$spell["ItemId"]}";
	echo "&strSpellName$r={$spell["ItemName"]}";
	echo "&strSpellDescription$r={$spell["ItemDesc"]}";
	echo "&intSpellCost$r={$spell["Cost"]}";
	echo "&intSpellElement$r={$spell["ItemElement"]}";
	echo "&intSpellPowerLevel$r=10";
	echo "&intSpellLevel$r=10";
	echo "&intSpellPowerExp$r=0";
	echo "&strSpellPassword$r=";
	echo "&strSpellFileName$r={$spell["Extra"]}";
}

# Load Shields
$s = 0;

$shieldsid = mysql_query("SELECT * FROM zw_items WHERE CharId = '$charid' AND ItemCat = 'shield' ORDER BY SortNumber ASC");

while($sld = mysql_fetch_array($shieldsid)) {

	$s++;

	$shieldsinfo = mysql_query("SELECT * FROM zw_shields WHERE ItemId = '{$sld["ItemId"]}'");
	$shield = mysql_fetch_array($shieldsinfo);
	mysql_free_result($shieldsinfo);

	echo "&idLore_Adj_Shields$s={$sld["AdjustId"]}";
	echo "&intShieldSortOrder$s=$s";
	echo "&idLore_Shields$s={$sld["ItemId"]}";
	echo "&charid$s={$shield["ItemId"]}";
	echo "&strShieldName$s={$shield["ItemName"]}";
	echo "&strShieldDescription$s={$shield["ItemDesc"]}";
	echo "&intShieldElement$s={$shield["ItemElement"]}";
	echo "&intShieldPowerLevel$s=10";
	echo "&strShieldCustomSkinFileName$s={$char["armorcolors"]}";
	echo "&strShieldSkinFileName$s=";
	echo "&intShieldLevel$s=10";
	echo "&intShieldPowerExp$s=0";
	echo "&strShieldPassword$s=";
	echo "&strShieldFileName$s={$shield["Extra"]}";

	echo "&intShieldFIRE$s={$shield["ArmorFire"]}";
	echo "&intShieldWATER$s={$shield["ArmorWater"]}";
	echo "&intShieldICE$s={$shield["ArmorIce"]}";
	echo "&intShieldWIND$s={$shield["ArmorWind"]}";
	echo "&intShieldEARTH$s={$shield["ArmorEarth"]}";
	echo "&intShieldENERGY$s={$shield["ArmorEnergy"]}";
	echo "&intShieldLIGHT$s={$shield["ArmorLight"]}";
	echo "&intShieldDARKNESS$s={$shield["ArmorDarkness"]}";
	echo "&intShieldMELEE$s={$shield["ArmorMelee"]}";
	echo "&intShieldRANGED$s={$shield["ArmorRanged"]}";
	echo "&intShieldMAGIC$s={$shield["ArmorMagic"]}";
}

# Load Pets
$p = 0;

$petsid = mysql_query("SELECT * FROM zw_items WHERE CharId = '$charid' AND ItemCat = 'pet' ORDER BY SortNumber ASC");

while($pets = mysql_fetch_array($petsid)) {

	$p++;

	$petsinfo = mysql_query("SELECT * FROM zw_pets WHERE ItemId = '{$pets["ItemId"]}'");
	$pet = mysql_fetch_array($petsinfo);
	mysql_free_result($petsinfo);

  	echo "&idLore_Adj_Pets$p={$pets["AdjustId"]}";
  	echo "&intSpellSortOrder$p=$p";
  	echo "&idLore_Pets$p={$pets["ItemId"]}";
  	echo "&charid$p={$pet["ItemId"]}";
  	echo "&strPetName$p={$pet["ItemName"]}";
  	echo "&strPetNamed$p={$pets["PetName"]}";
  	echo "&strPetDescription$p={$pet["ItemDesc"]}";
  	echo "&intPetCharisma$p={$pet["Charisma"]}";
  	echo "&strPetTraining$p={$pet["Charisma"]}";
  	echo "&intPetElement$p={$pet["ItemElement"]}";
  	echo "&intPetType$p={$pet["ItemType"]}";
  	echo "&intPetPowerLevel$p=10";
  	echo "&intPetLevel$p=10";
  	echo "&intPetPowerExp$p=0";
  	echo "&strPetPassword$p=";
  	echo "&strPetFileName$p={$pet["Extra"]}";
  	echo "&intPetWeaponBaseDamage$p={$pet["BaseDamage"]}";
  	echo "&intPetWeaponRandDamage$p={$pet["RandomDamage"]}";
  	echo "&intPetWeaponBonusToHit$p={$pet["BonusToHit"]}";
}

# Load Miscs
$m = 0;

$miscsid = mysql_query("SELECT * FROM zw_items WHERE CharId = '$charid' AND ItemCat = 'misc' ORDER BY SortNumber ASC");

while($miscs = mysql_fetch_array($miscsid)) {

	$m++;

	$miscsinfo = mysql_query("SELECT * FROM zw_miscs WHERE ItemId = '{$miscs["ItemId"]}'");
	$misc = mysql_fetch_array($miscsinfo);
	mysql_free_result($miscsinfo);

  	echo "&idLore_Adj_Misc$m={$miscs["AdjustId"]}";
  	echo "&intSpellSortOrder$m=$m";
  	echo "&idLore_Misc$m={$miscs["ItemId"]}";
  	echo "&charid$m={$misc["ItemId"]}";
  	echo "&strMiscName$m={$misc["ItemName"]}";
  	echo "&strMiscDescription$m={$misc["ItemDesc"]}";
  	echo "&intMiscElement$m={$misc["ItemElement"]}";
  	echo "&intMiscType$m={$misc["ItemType"]}";
  	echo "&intMiscPowerLevel$m=10";
  	echo "&intMiscLevel$m=10";
  	echo "&intMiscPowerExp$m=0";
 	echo "&strMiscPassword$m=";
  	echo "&strMiscFileName$m={$misc["Extra"]}";
  	echo "&intMiscCostMP$m={$misc["CostMP"]}";
  	echo "&intMiscCostSP$m={$misc["CostSP"]}";
}

echo "&intActiveSpell=0";
echo "&intSpellsNum=$r";

echo "&intActiveShield=1";
echo "&intShieldsNum=$s";

echo "&intActiveWeapon=1";
echo "&intWeaponsNum=$i";

echo "&intActiveArmor=1";
echo "&intArmorsNum=$e";

echo "&intActivePet=0";
echo "&intPetsNum=$p";

echo "&intActiveMisc=0";
echo "&intMiscNum=$m";

echo "&strPet=none";
echo "&strGuest=none";

echo "&intShopBitmask=1";

# Free the queries
mysql_free_result($weaponsid);
mysql_free_result($armorsid);
mysql_free_result($spellsid);
mysql_free_result($shieldsid);
mysql_free_result($petsid);
mysql_free_result($miscsid);

} else {
	echo "&status=error";
}

# Free the queries
mysql_free_result($character);
mysql_free_result($username);
?>