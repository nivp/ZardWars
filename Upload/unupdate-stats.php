<?php
# Connect to the database
include("config.php");

if (!isset($HTTP_RAW_POST_DATA))
   $HTTP_RAW_POST_DATA = file_get_contents("php://input");

   $doc = new DOMDocument();
   $doc->loadXML($HTTP_RAW_POST_DATA);
   
   # Load the character data via XML
   $CharId = $_COOKIE["charid"];
   
   $St = $doc->getElementsByTagName('strStat');
   $Stat = mysql_real_escape_string(stripslashes($St->item(0)->nodeValue));

   $character = mysql_query("SELECT * FROM zw_characters WHERE id='{$CharId}'");
   $charquery = mysql_fetch_array($character);

   # Calculate the price
   // if ($Stat == "intSTR") {
	// $PriceG = ($charquery["strength"]*$charquery["strength"]*0.8);
   // } else
   // if ($Stat == "intDEX") {
	// $PriceG = ($charquery["dexterity"]*$charquery["dexterity"]*0.8);
   // } else
   // if ($Stat == "intINT") {
	// $PriceG = ($charquery["intelligence"]*$charquery["intelligence"]*0.8);
   // } else
   // if ($Stat == "intEND") {
	// $PriceG = ($charquery["endurance"]*$charquery["endurance"]*0.8);
   // } else
   // if ($Stat == "intCHA") {
	// $PriceG = ($charquery["charm"]*$charquery["charm"]*0.8);
   // } else
   // if ($Stat == "intLUK") {
	// $PriceG = ($charquery["luck"]*$charquery["luck"]*0.8);
   // }
   
   # Check for errors
   // if($charquery["gold"] - $PriceG < 0){
   	// $error = 1;
   	// $message = "You do not have enough gold to train this stat.";
   // }

   # Update the stat
   header("Content-type: text/xml");
   // if($error != 1) {
   	if ($Stat == "intSTR") {
   		$update = mysql_query("UPDATE zw_characters SET strength=strength-5 WHERE id='$CharId'");
		$message = "You have untrainer 5 points of strength.";
   	} else
	if ($Stat == "intDEX") {
   		$update = mysql_query("UPDATE zw_characters SET dexterity=dexterity-5 WHERE id='$CharId'");
		$message = "You have untrainer 5 points of dexterity.";
   	} else
	if ($Stat == "intINT") {
   		$update = mysql_query("UPDATE zw_characters SET intelligence=intelligence-5 WHERE id='$CharId'");
		$message = "You have untrainer 5 points of intelligence.";
   	} else
	if ($Stat == "intEND") {
   		$update = mysql_query("UPDATE zw_characters SET endurance=endurance-5 WHERE id='$CharId'");
		$message = "You have untrainer 5 points of endurance.";
   	} else
	if ($Stat == "intCHA") {
   		$update = mysql_query("UPDATE zw_characters SET charm=charm-5 WHERE id='$CharId'");
		$message = "You have untrainer 5 points of charisma.";
   	} else
	if ($Stat == "intLUK") {
   		$update = mysql_query("UPDATE zw_characters SET luck=luck-5 WHERE id='$CharId'");
		$message = "You have untrainer 5 points of luck.";
   	}
   // }
   ?>
   <data status="<?php echo ($error == 1) ? "error" : "success"; ?>">
  <message><?php echo $message; ?></message>
  </data>