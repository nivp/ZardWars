<?php
# Connect to the database
include("config.php");

# Get the username and password
$username = mysql_real_escape_string(stripslashes($_POST["u"]));
$password = mysql_real_escape_string(stripslashes($_POST["p"]));

# Checks for the username
$usercheck1 = mysql_query("SELECT * FROM zw_users WHERE username='$username' LIMIT 1");
$charcheck1 = mysql_query("SELECT * FROM zw_characters WHERE username='$username' ORDER BY id ASC LIMIT 5");

$numuser = mysql_num_rows($usercheck1);
$uinfo = mysql_fetch_array($usercheck1);

# Logs the IP of the user
if ($_SERVER['HTTP_X_FORWARD_FOR']) {
	$ip = $_SERVER['HTTP_X_FORWARD_FOR'];
} else {
	$ip = $_SERVER['REMOTE_ADDR'];
}

if ($numuser != 1) {
	# No user found with that username
	echo "&status=usernotfound";
} else if ($uinfo["banned"] == 1) {
	# Banned
	echo "&status=badpassword";
} else if (md5($password) != $uinfo["password"]) {
	# Incorrect password
	echo "&status=badpassword";
} else {
	$i=1;
	echo "&status=success&";
	while ($chr = mysql_fetch_array($charcheck1)) {
		# Loop through the characters and send their information
		echo "char".$i."=".$chr["charname"]."&";
		echo "level".$i."=".$chr["level"]."&";
		echo "id".$i."=".$chr["id"]."&";
		echo "intCharType".$i."=".$chr["type"]."&";
		$i++;
	}
	echo "intCanEmail=".$uinfo["confirmed"]."&";
	echo "intUserId=".$uinfo["id"]."&";
	echo "idLore_Users=".$uinfo["id"];
	# Log the IP into the database
	$insertip = mysql_query("UPDATE zw_users SET loginip='$ip' WHERE username='$username'");
}
mysql_free_result($usercheck1);
mysql_free_result($charcheck1);
?>