<?php
$dhost = "sql310.epizy.com"; # Usually localhost or the IP address of the host
$dusername = "epiz_23979745"; # Database username
$dpassword = "nDQUSvFU"; # Database password
$ddatabase = "epiz_23979745_zardgoggery"; # Database name

$con = mysql_connect($dhost, $dusername, $dpassword) or die ("Cannot connect to the database"); 
mysql_select_db($ddatabase, $con) or die ("Cannot select the table");
?>
