<?php
# Connect to the database
include("config.php");

# Get the post values
$password = md5(mysql_real_escape_string(stripslashes($_POST["strPassword"])));
$username = mysql_real_escape_string(stripslashes($_POST["strUserName"]));
$face = mysql_real_escape_string(stripslashes($_POST["intFace"]));
$facecolors = mysql_real_escape_string(stripslashes($_POST["strFaceColors"]));
$charname = mysql_real_escape_string(stripslashes($_POST["strCharactername"]));

# Check the username and password match the correct ones
$usercheck = mysql_query("SELECT * FROM zw_users WHERE username='$username' AND password='$password' LIMIT 1") or die (mysql_error());

if (mysql_num_rows($usercheck) != 1) {
	echo "&status=error";
	exit;
}

# Check the number of characters is below 5
$chars = mysql_query("SELECT * FROM zw_characters WHERE username='$username'") or die (mysql_error());

if (mysql_num_rows($chars) > 4) {
	echo "&status=error";
	exit;
} else {
	# Insert the character details
    $day = date('l');
	$insert = mysql_query("INSERT INTO zw_characters (charname, username, type, face, facecolors, class, createddate,createdday, HPotion, MPotion)VALUES('$charname','$username','3','$face','$facecolors','Adventurer',CURDATE(),DAYNAME(CURDATE()),1,1)") or die (mysql_error());
	$character = mysql_query("SELECT * FROM zw_characters WHERE charname='$charname' AND username='$username' AND face='$face' AND facecolors='$facecolors' ORDER BY id DESC LIMIT 1") or die (mysql_error());
	$id = mysql_fetch_array($character);

	$wepslot = mysql_query("SELECT * FROM zw_items WHERE CharId='{$id["id"]}' AND ItemCat='weapon'") or die (mysql_error());
	$wslot = mysql_num_rows($wepslot) + 1;
	$armslot = mysql_query("SELECT * FROM zw_items WHERE CharId='{$id["id"]}' AND ItemCat='armor'") or die (mysql_error());
	$aslot = mysql_num_rows($armslot) + 1;
	$sheslot = mysql_query("SELECT * FROM zw_items WHERE CharId='{$id["id"]}' AND ItemCat='shield'") or die (mysql_error());
	$sslot = mysql_num_rows($sheslot) + 1;

	$wep = mysql_query("INSERT INTO zw_items (CharId, ItemId, ItemCat, SortNumber, PetName)VALUES('{$id["id"]}', 1, 'weapon', '$wslot', '')") or die (mysql_error());
	$arm = mysql_query("INSERT INTO zw_items (CharId, ItemId, ItemCat, SortNumber, PetName)VALUES('{$id["id"]}', 1, 'armor', '$aslot', '')") or die (mysql_error());
	$she = mysql_query("INSERT INTO zw_items (CharId, ItemId, ItemCat, SortNumber, PetName)VALUES('{$id["id"]}', 1, 'shield', '$sslot', '')") or die (mysql_error());

	echo "&status=success";

	mysql_free_result($character);
}
?>