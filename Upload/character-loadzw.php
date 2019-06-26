<?php

# Connect to the database by including the database configuration file
include("config.php");

# Start the session
session_start();
ob_start();

# Get the username, password and character ID
$user = mysql_real_escape_string(stripslashes($_POST["strUserName"])); # Username
$password = md5(mysql_real_escape_string(stripslashes($_POST["strPassword"]))); # Password
$charid = mysql_real_escape_string(stripslashes($_POST["charid"])); # Character ID

# Set the cookie to the character ID
setcookie("charid", $charid, time()+776000);

# Mysql Queries
$character = mysql_query("SELECT * FROM zw_characters WHERE id = '$charid' AND username = '{$user}'"); # Select character
$char = mysql_fetch_array($character); # Fetch character information

$username = mysql_query("SELECT * FROM zw_users WHERE username = '{$user}' AND password = '{$password}'"); # Select user
$user = mysql_fetch_array($username); # Fetch user information

# Check for errors
if ($user["banned"] == 1){ # Banned
  $error = 1;
}
if (mysql_num_rows($character) == 0){ # Character doesn't exist
  $error = 1;
}
if (mysql_num_rows($username) == 0){ # User doesn't exist
  $error = 1;
}
if (empty($charid)){ # Character ID is empty
  $error = 1;
}

# If no errors, load the character
if($error != 1){
  echo "&status=success";

  echo "&idLore_Characters={$char["id"]}";
  echo "&idLore_Users={$user["id"]}";
  echo "&intUserId={$user["id"]}";

  echo "&strCharacterName={$char["charname"]}";
  echo "&strCharType={$char["chartype"]}";
  echo "&intCharType={$char["type"]}";
  echo "&intAccessLevel=20";

  echo "&strClassName={$char["class"]}";
  echo "&strRaceName={$char["race"]}";
  echo "&strSubRaceName={$char["subrace"]}";
  echo "&strGuildName={$char["clan"]}";
  echo "&intStaff={$char["staff"]}";

  echo "&intLevel={$char["level"]}";
  echo "&intGold={$char["gold"]}";
  echo "&intTokens={$char["tokens"]}";
  echo "&intExp={$char["exp"]}";

  echo "&intSTR={$char["strength"]}";
  echo "&intDEX={$char["dexterity"]}";
  echo "&intINT={$char["intelligence"]}";
  echo "&intEND={$char["endurance"]}";
  echo "&intCHA={$char["charm"]}";
  echo "&intLUK={$char["luck"]}";
  
  echo "&intPotionHealth={$char["HPotion"]}";
  echo "&intPotionMana={$char["MPotion"]}";

  echo "&intArmorMELEE=50";
  echo "&intArmorRANGED=50";
  echo "&intArmorMAGIC=50";

  echo "&intArmorFIRE=0";
  echo "&intArmorWATER=0";
  echo "&intArmorWIND=0";
  echo "&intArmorICE=0";
  echo "&intArmorEARTH=0";
  echo "&intArmorENERGY=0";
  echo "&intArmorLIGHT=0";
  echo "&intArmorDARKNESS=0";

  echo "&idLore_Faces={$char["face"]}";


  # Load the face
  switch ($char["face"]){

    case 1:
      echo "&strFaceFrontFileName=anime/Bunnyhead.swf";
      echo "&strFaceSideFileName=anime/Bunnyhead.swf";
    break;
    case 3:
      echo "&strFaceFrontFileName=head-003-front.swf";
      echo "&strFaceSideFileName=head-003-side2.swf";
    break;
    case 54:
      echo "&strFaceFrontFileName=anime/head-anime-girl1.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl1.swf";
    break;
    case 55:
      echo "&strFaceFrontFileName=anime/head-anime-girl2.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl2.swf";
    break;
    case 56:
      echo "&strFaceFrontFileName=anime/head-anime-girl3.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl3.swf";
    break;
    case 57:
      echo "&strFaceFrontFileName=anime/head-anime-girl4.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl4.swf";
    break;
    case 58:
      echo "&strFaceFrontFileName=anime/head-anime-boy1.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy1.swf";
    break;
    case 59:
      echo "&strFaceFrontFileName=anime/head-anime-boy2.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy2.swf";
    break;
    case 60:
      echo "&strFaceFrontFileName=anime/head-anime-boy3.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy3.swf";
    break;
    case 61:
      echo "&strFaceFrontFileName=anime/head-anime-boy4.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy4.swf";
    break;
    case 63:
      echo "&strFaceFrontFileName=anime/head-anime-boy5.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy5.swf";
    break;
    case 64:
      echo "&strFaceFrontFileName=anime/head-anime-boy6.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy6.swf";
    break;
    case 65:
      echo "&strFaceFrontFileName=anime/head-anime-boy7.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy7.swf";
    break;
    case 66:
      echo "&strFaceFrontFileName=anime/head-anime-boy8.swf";
      echo "&strFaceSideFileName=anime/head-anime-boy8.swf";
    break;
    case 67:
      echo "&strFaceFrontFileName=anime/head-anime-girl5.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl5.swf";
    break;
    case 68:
      echo "&strFaceFrontFileName=anime/head-anime-girl6.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl6.swf";
    break;
    case 69:
      echo "&strFaceFrontFileName=anime/head-anime-girl7.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl7.swf";
    break;
    case 70:
      echo "&strFaceFrontFileName=anime/head-anime-girl8.swf";
      echo "&strFaceSideFileName=anime/head-anime-girl8.swf";
    break;
    case 71:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale01.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale01.swf";
    break;
    case 72:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale02.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale02.swf";
    break;
    case 73:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenFemale01.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenFemale01.swf";
    break;
    case 74:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenFemale02.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenFemale02.swf";
    break;
    case 75:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenFemale03.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenFemale03.swf";
    break;
    case 76:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenFemale04.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenFemale04.swf";
    break;
    case 77:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenFemale05.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenFemale05.swf";
    break;
    case 78:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale03.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale03.swf";
    break;
    case 79:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale05.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale05.swf";
    break;
    case 80:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale04.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale04.swf";
    break;
    case 81:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale06.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale06.swf";
    break;
    case 82:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenFemale06.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenFemale06.swf";
    break;
    case 83:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenFemale07.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenFemale07.swf";
    break;
    case 91:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale08.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale08.swf";
    break;
    case 92:
      echo "&strFaceFrontFileName=anime/head-anime-ArklenMale10.swf";
      echo "&strFaceSideFileName=anime/head-anime-ArklenMale10.swf";
    break;
    case 300:
      echo "&strFaceFrontFileName=head-bunny.swf";
      echo "&strFaceSideFileName=head-bunny.swf";
    break;

}

  echo "&strFaceColors={$char["facecolors"]}";
  echo "&intFace={$char["face"]}";

  echo "&intShowAd=0";

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
	echo "&intWeaponProcRate$i={$weapon["proc"]}";
	echo "&strWeaponSpecialEffect$i={$weapon["procframe"]}";
}

# Load Shields
$e = 0;

$armorsid = mysql_query("SELECT * FROM zw_items WHERE CharId = '$charid' AND ItemCat = 'armor' ORDER BY SortNumber ASC");

while($arm = mysql_fetch_array($armorsid)) {

	$e++;

	$armorsinfo = mysql_query("SELECT * FROM zw_armors WHERE ItemId = '{$arm["ItemId"]}'");
	$armor = mysql_fetch_array($armorsinfo);
	mysql_free_result($armorsinfo);
	
	if ($armor["ItemLevel"] > $char["level"]) {
		$e--;
		continue;
	}

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
	
	switch($pet["ItemElement"]) {
		case 1:
  			$petelement = "Fire";
			break;
		case 2:
 			$petelement = "Water";
			break;
		case 3:
		  	$petelement = "Earth";
			break;
		case 4:
  			$petelement = "Ice";
			break;
		case 5:
  			$petelement = "Wind";
			break;
		case 6:
  			$petelement = "Energy";
			break;
		case 7:
  			$petelement = "Light";
			break;
		case 8:
  			$petelement = "Darkness";
			break;
		case 9:
  			$petelement = "X";
			break;
	}

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
	echo "&strPetElement$p=$petelement";
  	echo "&intPetWeaponType$p={$pet["ItemType"]}";
  	echo "&intPetPowerLevel$p={$pet["PowerLevel"]}";
  	echo "&intPetLevel$p={$pet["ItemLevel"]}";
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