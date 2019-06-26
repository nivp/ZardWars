<?php
# Connect to the database
include("config.php");

if (!isset($HTTP_RAW_POST_DATA))
   $HTTP_RAW_POST_DATA = file_get_contents("php://input");

   $doc = new DOMDocument();
   $doc->loadXML($HTTP_RAW_POST_DATA);
   
   # Get the character data via XML
   $Char = $doc->getElementsByTagName('intCharacterId');
   $CharId = mysql_real_escape_string(stripslashes($Char->item(0)->nodeValue));
   
   $Item = $doc->getElementsByTagName('intItemId');
   $ItemId = mysql_real_escape_string(stripslashes($Item->item(0)->nodeValue));
   
   $Shop = $doc->getElementsByTagName('intShopId');
   $ShopId = mysql_real_escape_string(stripslashes($Shop->item(0)->nodeValue));
   
   $Type = $doc->getElementsByTagName('strItemType');
   $ItemType = mysql_real_escape_string(stripslashes($Type->item(0)->nodeValue));
   
   $Pass = $doc->getElementsByTagName('strPassword');
   $Password = md5(mysql_real_escape_string(stripslashes($Pass->item(0)->nodeValue)));
   
   # Mysql Queries
   $character = mysql_query("SELECT * FROM zw_characters WHERE id='{$CharId}'") or die(mysql_error());
   $itemexists = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemId='{$ItemId}' AND ItemCat='{$ItemType}'") or die(mysql_error());
   $shop = mysql_query("SELECT * FROM zw_shops WHERE ShopId='{$ShopId}' AND ItemId='{$ItemId}'") or die(mysql_error());
   $item = mysql_query("SELECT * FROM zw_{$ItemType}s WHERE ItemId='{$ItemId}'") or die(mysql_error());
   
   $ex = mysql_fetch_array($character);
   $itm = mysql_fetch_array($item);
   
   # Setup variables
   $username = mysql_query("SELECT * FROM zw_users WHERE username='{$ex["username"]}' AND password='{$Password}'");
   $extraslot = $ex["extra{$ItemType}Slot"];
   $slot = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemCat='{$ItemType}'") or die(mysql_error());
   $chr = mysql_fetch_array($username);

   # Check for errors
   if (mysql_num_rows($character) == 0) {
   	$error = 1;
   	$message = "Error loading character.";
   }
   
   if (mysql_num_rows($item) == 0) {
   	$error = 1;
   	$message = "This item does not exist.";
   }
   
   if (mysql_num_rows($username) == 0) {
   	$error = 1;
   	$message = "Error loading character.";
   }
   
   if (mysql_num_rows($slot) == $extraslot + 8) {
   	$error = 1;
   	$message = "All of your {$ItemType} slots have been used.";
   }
   
   if (mysql_num_rows($itemexists) > 0) {
   	$error = 1;
   	$message = "You already have this item.";
   }
   
   if ($ex["gold"] - $itm["Price"] < 0) {
   	$error = 1;
   	$message = "You don't have enough money to buy this item.";
   }

   if ($ex["level"] < $itm["ItemLevel"]) {
   	$error = 1;
   	$message = "You are not level {$itm["ItemLevel"]}.";
   }
   
   if (($itm["Buyable"] != 1) && ($ex["staff"] != 1)) {
   	$error = 1;
   	$message = "This item is unavailable.";
   }

  # Buy the item
  if($error != 1){
   	header("Content-type: text/xml");
  
   	$SlotNew = mysql_num_rows($slot) + 1;
   	$PetName = ($ItemType == "pet") ? "My {$itm["ItemName"]}" : "";
   
   	$buy = mysql_query("INSERT INTO zw_items (CharId, ItemId, ItemCat, SortNumber, PetName) VALUES ('{$CharId}','{$ItemId}','{$ItemType}','{$SlotNew}', '{$PetName}')") or die(mysql_error());
  	$money = mysql_query("UPDATE zw_characters SET gold = gold - {$itm["Price"]} WHERE id = '{$CharId}'") or die(mysql_error());
   
   	$message = "You bought {$itm["ItemName"]} for {$itm["Price"]} gold.";
   }
   ?>
   <data status="<?php echo ($error == 1) ? "error" : "success"; ?>">
<message><?php echo $message; ?></message>
</data>