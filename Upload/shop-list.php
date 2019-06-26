<?php
# Connect to the database
include("config.php");

if (!isset($HTTP_RAW_POST_DATA)) {
   $HTTP_RAW_POST_DATA = file_get_contents("php://input");

   $doc = new DOMDocument();
   $doc->loadXML($HTTP_RAW_POST_DATA);

   # Get the shop ID via XML
   $Shop = $doc->getElementsByTagName('intShopId');
   $ShopId = mysql_real_escape_string(stripslashes($Shop->item(0)->nodeValue));

   header("Content-type: text/xml");
}
?>
<items status="success" xmlns:sql="urn:schemas-microsoft-com:xml-sql">
<?php   
    function my_sort($a, $b)
    {
        if ($a["ItemLevel"] == $b["ItemLevel"] ) {
            return 0;
        }
        return ($a["ItemLevel"] < $b["ItemLevel"]);
    }

   $vendorsinfo = mysql_query("SELECT * FROM zw_vendors WHERE id = '{$ShopId}'") or die(mysql_error());
   
   # Vendor information
   while($vendor = mysql_fetch_array($vendorsinfo)) {
   	echo "<vendor>";
   	echo "<idLore_Shops>{$vendor["id"]}</idLore_Shops>";
   	echo "<strShopName>{$vendor["ShopName"]}</strShopName>";
   	echo "<intVendorId>1</intVendorId>";
   	echo "<strVendorName>{$vendor["VendorName"]}</strVendorName>";
   	echo "<strVendorFile>{$vendor["VendorFile"]}</strVendorFile>";
   	echo "<intShopRaceId>{$vendor["ShopRaceId"]}</intShopRaceId>";
   	echo "<intShopGuildId>{$vendor["ShopGuildId"]}</intShopGuildId>";
   	echo "<intShopActive>{$vendor["ShopActive"]}</intShopActive>";
   	echo "<dateUpdated>2004-09-17T23:58:29.793</dateUpdated>";
   	echo "</vendor>";
   }
   
   $shopexists = mysql_query("SELECT * FROM zw_shops WHERE ShopId='{$ShopId}' ORDER BY ItemLevel ASC") or die(mysql_error());
   
   while($shop = mysql_fetch_array($shopexists)) {
   
   $item = mysql_query("SELECT * FROM zw_{$shop["ItemCategory"]}s WHERE ItemId='{$shop["ItemId"]}' ORDER BY ItemLevel asc") or die (mysql_error());
   
   # Shop items
    while($items = mysql_fetch_array($item)) {
   # foreach($items_new as $items) {
   	echo "<{$shop["ItemCategory"]}>";
   	echo "<intItemId>{$items["ItemId"]}</intItemId>";
   	echo "<intItemElement>{$items["ItemElement"]}</intItemElement>";
   	echo "<intItemLevel>{$items["ItemLevel"]}</intItemLevel>";
   	echo "<strItemName>{$items["ItemName"]}</strItemName>";
   	echo "<strItemType>{$items["ItemType"]}</strItemType>";
   	if ($shop["ItemCategory"] == "weapon" || $shop["ItemCategory"] == "pet") {
   		echo "<intItemBase>{$items["BaseDamage"]}</intItemBase>";
   		echo "<intItemRandom>{$items["RandomDamage"]}</intItemRandom>";
   	}
   	echo "<strItemDesc>{$items["ItemDesc"]}</strItemDesc>";
   	echo "<intItemPrice>{$items["Price"]}</intItemPrice>";
   	echo "<intItemSellPrice>{$items["SellPrice"]}</intItemSellPrice>";
  	echo "<intShopBitmask>{$shop["ShopBitmask"]}</intShopBitmask>";
   	echo "<strItemCategory>{$shop["ItemCategory"]}</strItemCategory>";
   	echo "<intBuyable>{$items["Buyable"]}</intBuyable>";
   	echo "<strExtra>{$items["Extra"]}</strExtra>";
   	echo "<strItemCat>{$shop["ItemCategory"]}</strItemCat>";
   	echo "</{$shop["ItemCategory"]}>";
   }
   
   mysql_free_result($item);
   
   }
   
   mysql_free_result($shopexists);
   mysql_free_result($vendorsinfo);
?>
</items>