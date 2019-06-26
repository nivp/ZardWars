<?php
include("config.php");

if (!isset($HTTP_RAW_POST_DATA))
   $HTTP_RAW_POST_DATA = file_get_contents("php://input");


   $doc = new DOMDocument();
   $doc->loadXML($HTTP_RAW_POST_DATA);
   
   $Adjust = $doc->getElementsByTagName('intItemAdjustId');
   $AdjustId = mysql_real_escape_string(stripslashes($Adjust->item(0)->nodeValue));
   
   $Pass = $doc->getElementsByTagName('strPassword');
   $Password = md5(mysql_real_escape_string(stripslashes($Pass->item(0)->nodeValue)));
   
   $Char = $doc->getElementsByTagName('intCharacterId');
   $CharId = mysql_real_escape_string(stripslashes($Char->item(0)->nodeValue));
   
   $character = mysql_query("SELECT * FROM zw_characters WHERE id='{$CharId}'") or die(mysql_error());
   $item = mysql_query("SELECT * FROM zw_items WHERE AdjustId='{$AdjustId}'") or die(mysql_error());
   $itm = mysql_fetch_array($item) or die(mysql_error());
   $info = mysql_query("SELECT * FROM zw_{$itm["ItemCat"]}s WHERE ItemId='{$itm["ItemId"]}'") or die(mysql_error());
   $inf = mysql_fetch_array($info) or die(mysql_error());
   $ex = mysql_fetch_array($character);
   
   $username = mysql_query("SELECT * FROM zw_users WHERE username='{$ex["username"]}' AND password='{$Password}'");
   
   $slot1 = mysql_query("SELECT * FROM zw_items WHERE CharId='{$itm["CharId"]}' AND ItemCat='{$itm["ItemCat"]}' AND SortNumber > '{$itm["SortNumber"]}'");
   
   if($inf["Dropable"] == 0){
   $error = 1;
   $message = "You can't sell that item.";
   }
   if(mysql_num_rows($character) == 0){
   $error = 1;
   $message = "Error loading character.";
   }
   if(mysql_num_rows($username) == 0){
   $error = 1;
   $message = "Error loading character.";
   }
   if(mysql_num_rows($item) == 0){
   $error = 1;
   $message = "You don't have the item.";
   }
   
   if($error != 1){
   while($slot = mysql_fetch_array($slot1)){
   $newslot = mysql_query("UPDATE zw_items SET SortNumber=SortNumber-1 WHERE CharId='{$itm["CharId"]}' AND ItemCat='{$itm["ItemCat"]}' AND SortNumber > '{$itm["SortNumber"]}'");
   }
   
   $message = "You sold {$inf["ItemName"]} for {$inf["SellPrice"]} gold.";
   
   $gold = mysql_query("UPDATE zw_characters SET gold=gold+{$inf["SellPrice"]} WHERE id='{$itm["CharId"]}'") or die(mysql_error());
   $sell = mysql_query("DELETE FROM zw_items WHERE AdjustId='{$AdjustId}'") or die(mysql_error());
   }
   
   header("Content-type: text/xml");
?>
<data status="<?php echo ($error == 1) ? "error" : "success"; ?>">
<message><?php echo $message; ?></message>
</data>