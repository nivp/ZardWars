<?php
# Connect to the database
include("config.php");

# Start the section
session_start();
ob_start();

if (!isset($HTTP_RAW_POST_DATA)) {
   $HTTP_RAW_POST_DATA = file_get_contents("php://input");
   $doc = new DOMDocument();
   $doc->loadXML($HTTP_RAW_POST_DATA);

   # Get the character date via XML
   $Char = $doc->getElementsByTagName('intCharacterId');
   $CharId = mysql_real_escape_string(stripslashes($Char->item(0)->nodeValue));

   $Mob = $doc->getElementsByTagName('intMonsterId');
   $MobId = mysql_real_escape_string(stripslashes($Mob->item(0)->nodeValue));

   $Res = $doc->getElementsByTagName('strResolution');
   $Result = mysql_real_escape_string(stripslashes($Res->item(0)->nodeValue));

   $Pass = $doc->getElementsByTagName('strPassword');
   $Password = md5(mysql_real_escape_string(stripslashes($Pass->item(0)->nodeValue)));

   # Mysql queries
   $monster2 = mysql_query("SELECT * FROM zw_monsters WHERE MonsterId='{$MobId}'") or die (mysql_error());
   $mon2 = mysql_fetch_array($monster2);
   
   $character = mysql_query("SELECT * FROM zw_characters WHERE id='{$CharId}'") or die (mysql_error());
   $chr = mysql_fetch_array($character);

   $username = mysql_query("SELECT * FROM zw_users WHERE username='{$chr["username"]}' AND password='{$Password}'") or die (mysql_error());

   $message = "You have lost the battle.";

   # Record the battle result
   if ($Result == "win") {
	$message = "You have won the battle.";
   	$monster = mysql_query("SELECT * FROM zw_monsters WHERE MonsterId='{$MobId}'") or die (mysql_error());

   	$mon = mysql_fetch_array($monster);
	
	# if ($chr["level"] < 35) {
		$gain = mysql_query("UPDATE zw_characters SET wins=wins+1, exp=exp+{$mon["Exp"]}, gold=gold+{$mon["Gold"]} WHERE id='{$CharId}'") or die (mysql_error());
	# }
	# else {
	# 	$gain = mysql_query("UPDATE zw_characters SET wins=wins+1, gold=gold+{$mon["Gold"]} WHERE id='{$CharId}'") or die (mysql_error());
	# }

   	$character1 = mysql_query("SELECT * FROM zw_characters WHERE id='{$CharId}'") or die (mysql_error());
   	$chr1 = mysql_fetch_array($character1);
       
    # Update "Last Played"
    $date = date('Y-m-d');
    mysql_query("UPDATE zw_characters SET playeddate='{$date}' where id='{$CharId}'");
    $day = date('l');
    mysql_query("UPDATE zw_characters SET playedday='{$day}' where id='{$CharId}'");

   	$required = floor(pow(1.100000E+000, ($chr1["level"] + 1)) * 100);

   	if ($chr1["exp"] >= $required) { 
		$level = mysql_query("UPDATE zw_characters SET level=level+'1', exp='0' WHERE id='{$CharId}'") or die (mysql_error());
		$message = "You have gained a level.";
   	}
   } else {
   	$gain = mysql_query("UPDATE zw_characters SET deaths = deaths+1 WHERE id = '{$CharId}'") or die (mysql_error());
   }

   setcookie("monid", "x", time() - 776000);
   header("Content-type: text/xml");
}

?>

<data status="<?php echo ($error == 1) ? "error" : "success"; ?>" message="<?php echo $message; ?>">

</data>

<user status="<?php echo ($error == 1) ? "error" : "success"; ?>" message="<?php echo $message; ?>">