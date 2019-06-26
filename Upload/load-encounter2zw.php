<?php
# Connect to the database
include("config.php");

# Start the session
session_start();
ob_start();

# Get the monster ID, character ID, username and password
$monsterid = mysql_real_escape_string(stripslashes($_POST["id"]));
$characterid = mysql_real_escape_string(stripslashes($_POST["charid"]));
$username = mysql_real_escape_string(stripslashes($_POST["strUserName"]));
$password = md5(mysql_real_escape_string(stripslashes($_POST["strPassword"])));

setcookie("monid", $monsterid, time()+776000);

$getuser = mysql_query("SELECT * FROM zw_users WHERE username='{$username}' AND password='{$password}'");
$getmon = mysql_query("SELECT * FROM zw_monsters WHERE MonsterId='{$monsterid}' LIMIT 1") or die (mysql_error());
$getchar = mysql_query("SELECT * FROM zw_characters WHERE id='{$characterid}' LIMIT 1") or die (mysql_error());

# Grab the player level.
$p = mysql_fetch_array($getchar);

# Get the level of the strongest monster.
$topmon = mysql_query("SELECT * FROM zw_monsters ORDER BY Level DESC LIMIT 1") or die (mysql_error());
$gettopmon = mysql_fetch_array($topmon);

# Make sure the player has something to fight.
$max_level = $gettopmon["Level"];
$p_level = $p["level"];
if ($p_level > $max_level) {
    $p_level = $max_level;
}

# Select a monster between two levels
$lev1 = $p_level - 15;
$lev2 = $p_level + 15;

if ($lev1 < 0) {
    $lev1 = 0;
}

# Select a monster between two levels - In the example there are no monsters needed to be scaled, so between 0 and 200 selects all monsters for picking
# $lev1 = 0;
# $lev2 = 200;

if($monsterid == 0 || mysql_num_rows($getmon) == 0){
	$count = mysql_query("SELECT COUNT(*) FROM zw_monsters WHERE level >= {$lev1} AND level <= {$lev2} AND ExtraData != 'trainer'");
	$cnt = mysql_fetch_array($count);
	$offset = rand(0, $cnt[0]-1);
	
	//$monq = mysql_query("SELECT * FROM zw_monsters WHERE level >= {$lev1} AND level <= {$lev2} AND ExtraData != 'trainer' ORDER BY RAND() LIMIT 1"); # or die (mysql_error());
	$monq = mysql_query("SELECT * FROM zw_monsters WHERE level >= {$lev1} AND level <= {$lev2} AND ExtraData != 'trainer' LIMIT 1 OFFSET {$offset}");
    if (mysql_num_rows($monq) == 0) {
        $monq = mysql_query("SELECT * FROM zw_monsters WHERE MonsterId='{$monsterid}' LIMIT 1") or die (mysql_error());
        echo "&eyy={$monq["MonsterId"]}";
        echo $max_level;
    }
} else {
	$monq = mysql_query("SELECT * FROM zw_monsters WHERE MonsterId='{$monsterid}' LIMIT 1") or die (mysql_error());
}

$m = mysql_fetch_array($monq);

# Check for errors
if(mysql_num_rows($getuser) == 0) {
	$error = 1;
}
if(mysql_num_rows($getchar) == 0) {
	$error = 1;
}

echo ("&expected_id=".$monsterid);

echo "&actiontype=loadmonster";
echo "&status=";
echo ($error == 1) ? "error" : "success";

# Load the monster
if($error != 1){
	echo "&idLore_Monsters={$m["MonsterId"]}";
	echo "&intLoadStatus=0";
	echo "&strMonsterName={$m["MonsterName"]}";
	echo "&strDescription={$m["MonsterDesc"]}";
	echo "&intLevel={$m["Level"]}";
	echo "&intBaseHP={$m["HP"]}";
	echo "&intBaseMP={$m["MP"]}";
	echo "&intBaseSP={$m["SP"]}";
	echo "&intGold={$m["Gold"]}";
	echo "&intExp={$m["Exp"]}";
	echo "&intSTR={$m["Stre"]}";
	echo "&intDEX={$m["Dext"]}";
	echo "&intINT={$m["Inte"]}";
	echo "&intCHA={$m["Char"]}";
	echo "&intEND={$m["Endu"]}";
	echo "&intLUK={$m["Luck"]}";
	echo "&strExtraData={$m["ExtraData"]}";
	echo "&idLore_Elements={$m["Elements"]}";
	echo "&idLore_WeaponTypes={$m["WeaponType"]}";
	echo "&intWeaponBaseDamage={$m["BaseDamage"]}";
	echo "&intWeaponRandDamage={$m["RandDamage"]}";
	echo "&intWeaponBonusToHit={$m["BonusToHit"]}";
	echo "&intArmorFIRE={$m["ArmorFire"]}";
	echo "&intArmorWATER={$m["ArmorWater"]}";
	echo "&intArmorICE={$m["ArmorIce"]}";
	echo "&intArmorWIND={$m["ArmorWind"]}";
	echo "&intArmorEARTH={$m["ArmorEarth"]}";
	echo "&intArmorENERGY={$m["ArmorEnergy"]}";
	echo "&intArmorDARKNESS={$m["ArmorDarkness"]}";
	echo "&intArmorLIGHT={$m["ArmorLight"]}";
	echo "&intArmorMELEE={$m["ArmorMelee"]}";
	echo "&intArmorRANGED={$m["ArmorRanged"]}";
	echo "&intArmorMAGIC={$m["ArmorMagic"]}";
	echo "&strBodyFileName={$m["BodyFileName"]}";
	echo "&strHeadFileName={$m["HeadFileName"]}";
	echo "&intMonsterFrozen=0";
	echo "&intMonsterParalyzed=0";
	echo "&idLore_Background={$m["BackgroundId"]}";
	echo "&strBackgroundFileName={$m["BackgroundFileName"]}";
	echo "&intQuantity=1";
	echo "&intMaxPackSize={$m["MaxPackSize"]}";
	echo "&strWeaponElement={$m["WeaponElement"]}";
	echo "&strWeaponType={$m["WeaponType"]}";
	echo "&strBackgroundTerrain={$m["BackgroundTerrains"]}";
	echo "&strDateTime=".time();
}

?>