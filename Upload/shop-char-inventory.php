<?php
# Connect to the database
include("config.php");

if (!isset($HTTP_RAW_POST_DATA)) {
   $HTTP_RAW_POST_DATA = file_get_contents("php://input");

   $doc = new DOMDocument();
   $doc->loadXML($HTTP_RAW_POST_DATA);

   # Get the character data via XML
   $Char = $doc->getElementsByTagName('intCharacterId');
   $CharId = mysql_real_escape_string(stripslashes($Char->item(0)->nodeValue));
   
   # Mysql Queries
   $character = mysql_query("SELECT * FROM zw_characters WHERE id='{$CharId}'");

   $weapon = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemCat='weapon' ORDER BY SortNumber ASC");
   $armor = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemCat='armor' ORDER BY SortNumber ASC");
   $spell = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemCat='spell' ORDER BY SortNumber ASC");
   $shield = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemCat='shield' ORDER BY SortNumber ASC");
   $pets = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemCat='pet' ORDER BY SortNumber ASC");
   $miscs = mysql_query("SELECT * FROM zw_items WHERE CharId='{$CharId}' AND ItemCat='misc' ORDER BY SortNumber ASC");
   
   header("Content-type: text/xml");
}
?>
<player xmlns:sql="urn:schemas-microsoft-com:xml-sql">
<?php
  $c = mysql_fetch_array($character);
  
  # Character info
  echo "<character>";
  echo "<intGold>{$c["gold"]}</intGold>";
  echo "<intLevel>{$c["level"]}</intLevel>";
  echo "<intExp>{$c["exp"]}</intExp>";
  echo "<intTokens>{$c["tokens"]}</intTokens>";
  echo "<intSlotsWeapon>{$c["extraweaponSlot"]}</intSlotsWeapon>";
  echo "<intSlotsArmor>{$c["extraarmorSlot"]}</intSlotsArmor>";
  echo "<intSlotsShield>{$c["extrashieldSlot"]}</intSlotsShield>";
  echo "<intSlotsSpell>{$c["extraspellSlot"]}</intSlotsSpell>";
  echo "<intSlotsPet>{$c["extrapetSlot"]}</intSlotsPet>";
  echo "<intSlotsMisc>{$c["extramiscSlot"]}</intSlotsMisc>";
  echo "<intHouseSlots>0</intHouseSlots>";
  echo "</character>";
  
  $i = 1;
  
  while($inf = mysql_fetch_array($weapon)){
  $item = mysql_query("SELECT * FROM zw_weapons WHERE ItemId='{$inf["ItemId"]}' LIMIT 1");
  $wep = mysql_fetch_array($item);
  
  # Weapons
  echo "<weapon>";
  echo "<intAdjustId>{$inf["AdjustId"]}</intAdjustId>";
  echo "<intItemId>{$wep["ItemId"]}</intItemId>";
  echo "<strItemName>{$wep["ItemName"]}</strItemName>";
  echo "<strItemType>{$wep["ItemType"]}</strItemType>";
  echo "<intItemElement>{$wep["ItemElement"]}</intItemElement>";
  echo "<intItemSellPrice>{$wep["SellPrice"]}</intItemSellPrice>";
  echo "<intDropable>{$wep["Dropable"]}</intDropable>";
  echo "<strItemCat>{$inf["ItemCat"]}</strItemCat>";
  echo "<intPowerLevel>{$wep["ItemPowerLevel"]}</intPowerLevel>";
  echo "<strExtra>{$wep["Extra"]}</strExtra>";
  echo "<intBuyType>{$wep["BuyType"]}</intBuyType>";
  echo "<intBuyPrice>{$wep["Price"]}</intBuyPrice>";
  echo "<intHoursOwned>{$wep["HoursOwned"]}</intHoursOwned>";
  echo "<intSortOrder>{$i}</intSortOrder>";
  echo "<intItemLevel>{$wep["ItemLevel"]}</intItemLevel>";
  echo "</weapon>";
  
  mysql_free_result($item);
  $i++;
  }
  
  $s = 1;
  
  while($inf1 = mysql_fetch_array($armor)){
  $item1 = mysql_query("SELECT * FROM zw_armors WHERE ItemId='{$inf1["ItemId"]}' LIMIT 1");
  $arm = mysql_fetch_array($item1);
  
  # Armours
  echo "<armor>";
  echo "<intAdjustId>{$inf1["AdjustId"]}</intAdjustId>";
  echo "<intItemId>{$arm["ItemId"]}</intItemId>";
  echo "<strItemName>{$arm["ItemName"]}</strItemName>";
  echo "<strItemType>{$arm["ItemType"]}</strItemType>";
  echo "<intItemElement>{$arm["ItemElement"]}</intItemElement>";
  echo "<intItemSellPrice>{$arm["SellPrice"]}</intItemSellPrice>";
  echo "<intDropable>{$arm["Dropable"]}</intDropable>";
  echo "<strItemCat>{$inf1["ItemCat"]}</strItemCat>";
  echo "<intPowerLevel>{$arm["PowerLevel"]}</intPowerLevel>";
  echo "<strExtra>{$arm["Extra"]}</strExtra>";
  echo "<intBuyType>{$arm["BuyType"]}</intBuyType>";
  echo "<intBuyPrice>{$arm["Price"]}</intBuyPrice>";
  echo "<intHoursOwned>{$arm["HoursOwned"]}</intHoursOwned>";
  echo "<intSortOrder>{$s}</intSortOrder>";
  echo "<intItemLevel>{$arm["ItemLevel"]}</intItemLevel>";
  echo "</armor>";
  
  mysql_free_result($item1);
  $s++;
  }
  
  $e = 1;
  
  while($inf2 = mysql_fetch_array($spell)){
  $item2 = mysql_query("SELECT * FROM zw_spells WHERE ItemId='{$inf2["ItemId"]}' LIMIT 1");
  $sp = mysql_fetch_array($item2);
  
  # Spells
  echo "<spell>";
  echo "<intAdjustId>{$inf2["AdjustId"]}</intAdjustId>";
  echo "<intItemId>{$sp["ItemId"]}</intItemId>";
  echo "<strItemName>{$sp["ItemName"]}</strItemName>";
  echo "<strItemType>{$sp["ItemType"]}</strItemType>";
  echo "<intItemElement>{$sp["ItemElement"]}</intItemElement>";
  echo "<intItemSellPrice>{$sp["SellPrice"]}</intItemSellPrice>";
  echo "<intDropable>{$sp["Dropable"]}</intDropable>";
  echo "<strItemCat>{$inf2["ItemCat"]}</strItemCat>";
  echo "<intPowerLevel>{$sp["PowerLevel"]}</intPowerLevel>";
  echo "<strExtra>{$sp["Extra"]}</strExtra>";
  echo "<intBuyType>{$sp["BuyType"]}</intBuyType>";
  echo "<intBuyPrice>{$sp["Price"]}</intBuyPrice>";
  echo "<intHoursOwned>{$sp["HoursOwned"]}</intHoursOwned>";
  echo "<intSortOrder>{$e}</intSortOrder>";
  echo "<intItemLevel>{$sp["ItemLevel"]}</intItemLevel>";
  echo "</spell>";
  
  mysql_free_result($item2);
  $e++;
  }
  
  $u = 1;
  
  while($inf3 = mysql_fetch_array($shield)){
  $item3 = mysql_query("SELECT * FROM zw_shields WHERE ItemId='{$inf3["ItemId"]}' LIMIT 1");
  $sh = mysql_fetch_array($item3);
  
  # Shields
  echo "<shield>";
  echo "<intAdjustId>{$inf3["AdjustId"]}</intAdjustId>";
  echo "<intItemId>{$sh["ItemId"]}</intItemId>";
  echo "<strItemName>{$sh["ItemName"]}</strItemName>";
  echo "<strItemType>{$sh["ItemType"]}</strItemType>";
  echo "<intItemElement>{$sh["ItemElement"]}</intItemElement>";
  echo "<intItemSellPrice>{$sh["SellPrice"]}</intItemSellPrice>";
  echo "<intDropable>{$sh["Dropable"]}</intDropable>";
  echo "<strItemCat>{$inf3["ItemCat"]}</strItemCat>";
  echo "<intPowerLevel>{$sh["PowerLevel"]}</intPowerLevel>";
  echo "<strExtra>{$sh["Extra"]}</strExtra>";
  echo "<intBuyType>{$sh["BuyType"]}</intBuyType>";
  echo "<intBuyPrice>{$sh["Price"]}</intBuyPrice>";
  echo "<intHoursOwned>{$sh["HoursOwned"]}</intHoursOwned>";
  echo "<intSortOrder>{$u}</intSortOrder>";
  echo "<intItemLevel>{$sh["ItemLevel"]}</intItemLevel>";
  echo "</shield>";
  
  mysql_free_result($item3);
  $u++;
  }
  
  $a = 1;
  
  while($inf4 = mysql_fetch_array($pets)){
  $item4 = mysql_query("SELECT * FROM zw_pets WHERE ItemId='{$inf4["ItemId"]}' LIMIT 1");
  $pet = mysql_fetch_array($item4);
  
  # Pets
  echo "<pet>";
  echo "<intAdjustId>{$inf4["AdjustId"]}</intAdjustId>";
  echo "<intItemId>{$pet["ItemId"]}</intItemId>";
  echo "<strItemName>{$pet["ItemName"]}</strItemName>";
  echo "<strItemType>{$pet["ItemType"]}</strItemType>";
  echo "<intItemElement>{$pet["ItemElement"]}</intItemElement>";
  echo "<intItemSellPrice>{$pet["SellPrice"]}</intItemSellPrice>";
  echo "<intDropable>{$pet["Dropable"]}</intDropable>";
  echo "<strItemCat>{$inf4["ItemCat"]}</strItemCat>";
  echo "<intPowerLevel>{$pet["PowerLevel"]}</intPowerLevel>";
  echo "<strExtra>{$inf4["PetName"]}</strExtra>";
  echo "<intBuyType>{$pet["BuyType"]}</intBuyType>";
  echo "<intBuyPrice>{$pet["Price"]}</intBuyPrice>";
  echo "<intHoursOwned>{$pet["HoursOwned"]}</intHoursOwned>";
  echo "<intSortOrder>{$a}</intSortOrder>";
  echo "<intItemLevel>{$pet["ItemLevel"]}</intItemLevel>";
  echo "</pet>";
  
  mysql_free_result($item4);
  $a++;
  }
  
  $b = 1;
  
  while($inf5 = mysql_fetch_array($miscs)){
  $item5 = mysql_query("SELECT * FROM zw_miscs WHERE ItemId='{$inf5["ItemId"]}' LIMIT 1");
  $misc = mysql_fetch_array($item5);
  
  # Miscs
  echo "<misc>";
  echo "<intAdjustId>{$inf5["AdjustId"]}</intAdjustId>";
  echo "<intItemId>{$misc["ItemId"]}</intItemId>";
  echo "<strItemName>{$misc["ItemName"]}</strItemName>";
  echo "<strItemType>{$misc["ItemType"]}</strItemType>";
  echo "<intItemElement>{$misc["ItemElement"]}</intItemElement>";
  echo "<intItemSellPrice>{$misc["SellPrice"]}</intItemSellPrice>";
  echo "<intDropable>{$misc["Dropable"]}</intDropable>";
  echo "<strItemCat>{$inf5["ItemCat"]}</strItemCat>";
  echo "<intPowerLevel>{$misc["PowerLevel"]}</intPowerLevel>";
  echo "<strExtra>{$misc["Extra"]}</strExtra>";
  echo "<intBuyType>{$misc["BuyType"]}</intBuyType>";
  echo "<intBuyPrice>{$misc["Price"]}</intBuyPrice>";
  echo "<intHoursOwned>{$misc["HoursOwned"]}</intHoursOwned>";
  echo "<intSortOrder>{$b}</intSortOrder>";
  echo "<intItemLevel>{$misc["ItemLevel"]}</intItemLevel>";
  echo "</misc>";
  
  mysql_free_result($item5);
  $b++;
  }
  
  # Free the results
  mysql_free_result($character);
  mysql_free_result($weapon);
  mysql_free_result($armor);
  mysql_free_result($spell);
  mysql_free_result($shield);
  mysql_free_result($pets);
  mysql_free_result($miscs);
?>
</player>