<?php
# Connect to the database
include("config.php");

# Get the post values
$password = md5(mysql_real_escape_string(stripslashes($_POST["strPassword"])));
$username = mysql_real_escape_string(stripslashes($_POST["strUserName"]));
$charid = mysql_real_escape_string(stripslashes($_POST["charid"]));

# Check the username and password match the correct ones
$usercheck = mysql_query("SELECT * FROM zw_users WHERE username='$username' AND password='$password' LIMIT 1") or die (mysql_error());

if (mysql_num_rows($usercheck) != 1) {
	echo "&status=error";
	exit;
}

$character = mysql_query("SELECT * FROM zw_characters WHERE id='$charid' AND username='$username' ORDER BY id DESC LIMIT 1") or die (mysql_error());
$char = mysql_fetch_array($character);

if (mysql_num_rows($character) > 4) {
	echo "&status=error";
	exit;
} else {
	if ($username != $char["username"]) {
		echo "&status=error&reason=Character does not belong to the user.";
	}
	else {
		$delete_character = mysql_query("DELETE FROM zw_characters WHERE id = '$charid'") or die (mysql_error());
		$delete_items = mysql_query("DELETE FROM zw_items WHERE CharId = '$charid'") or die (mysql_error());
		echo("&status=success");
	}
	mysql_free_result($character);
}
?>