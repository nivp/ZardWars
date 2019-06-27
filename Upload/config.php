<?php
$dhost = "localhost"; # Usually localhost or the IP address of the host
$dusername = "username"; # Database username
$dpassword = "password"; # Database password
$ddatabase = "database_name"; # Database name

$con = mysql_connect($dhost, $dusername, $dpassword) or die ("Cannot connect to the database"); 
mysql_select_db($ddatabase, $con) or die ("Cannot select the table");
?>
