<?php
# Connect to the database
include("config.php");

# Get the user data
$username = mysql_real_escape_string(stripslashes($_POST["strUserName"]));
$password = md5($_POST["strPassword"]);
$email = mysql_real_escape_string(stripslashes($_POST["strEmail"]));
$secretcode = mysql_real_escape_string(stripslashes($_POST["strSecretCode"]));

# Mysql queries
$user = mysql_query("SELECT * FROM zw_users WHERE username='$username'");
$userch = mysql_num_rows($user);

# Check for errors
if(empty($username)) {
	$wrong = "error";
	$error = 1;
}
if($userch != 0) {
	$wrong = "taken";
	$error = 1;
}

# Create the account
if($error != 1) {
	$insert = mysql_query("INSERT INTO zw_users (username, password, email, secretcode) VALUES ('$username','$password','$email','$secretcode')");
	echo "&status=success";
} else {
	echo "&status=$wrong";
}
?>