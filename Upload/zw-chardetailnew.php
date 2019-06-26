<?php
# Connect to the database
include("config.php");

# Get the character ID
$charid = mysql_real_escape_string(stripslashes($_GET["temp"]));

# Mysql query
$character = mysql_query("SELECT * FROM zw_characters WHERE id='{$charid}' LIMIT 1");

# Check for errors
if (empty($charid)) {
	$error = 1;
}
if (mysql_num_rows($character) == 0) {
	$error = 1;
}
if ($error == 1) {
	Header("Location: index.php");
}

$chr = mysql_fetch_array($character);

# Load face
switch ($chr["face"]) {

case 3:
  $face = "&strFaceSideFileName=head-003-side2.swf";
break;
case 54:
  $face = "&strFaceSideFileName=anime/head-anime-girl1.swf";
break;
case 55:
  $face = "&strFaceSideFileName=anime/head-anime-girl2.swf";
break;
case 56:
  $face = "&strFaceSideFileName=anime/head-anime-girl3.swf";
break;
case 57:
  $face = "&strFaceSideFileName=anime/head-anime-girl4.swf";
break;
case 58:
  $face = "&strFaceSideFileName=anime/head-anime-boy1.swf";
break;
case 59:
  $face = "&strFaceSideFileName=anime/head-anime-boy2.swf";
break;
case 60:
  $face = "&strFaceSideFileName=anime/head-anime-boy3.swf";
break;
case 61:
  $face = "&strFaceSideFileName=anime/head-anime-boy4.swf";
break;
case 63:
  $face = "&strFaceSideFileName=anime/head-anime-boy5.swf";
break;
case 64:
  $face = "&strFaceSideFileName=anime/head-anime-boy6.swf";
break;
case 65:
  $face = "&strFaceSideFileName=anime/head-anime-boy7.swf";
break;
case 66:
  $face = "&strFaceSideFileName=anime/head-anime-boy8.swf";
break;
case 67:
  $face = "&strFaceSideFileName=anime/head-anime-girl5.swf";
break;
case 68:
  $face = "&strFaceSideFileName=anime/head-anime-girl6.swf";
break;
case 69:
  $face = "&strFaceSideFileName=anime/head-anime-girl7.swf";
break;
case 70:
  $face = "&strFaceSideFileName=anime/head-anime-girl8.swf";
break;
case 71:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale01.swf";
break;
case 72:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale02.swf";
break;
case 73:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenFemale01.swf";
break;
case 74:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenFemale02.swf";
break;
case 75:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenFemale03.swf";
break;
case 76:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenFemale04.swf";
break;
case 77:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenFemale05.swf";
break;
case 78:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale03.swf";
break;
case 79:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale05.swf";
break;
case 80:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale04.swf";
break;
case 81:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale06.swf";
break;
case 82:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenFemale06.swf";
break;
case 83:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenFemale07.swf";
break;
case 91:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale08.swf";
break;
case 92:
  $face = "&strFaceSideFileName=anime/head-anime-ArklenMale10.swf";
break;
case 300:
  $face = "&strFaceSideFileName=head-bunny.swf";
break;

}
# Load Character
?>
<HTML>
<HEAD>
<TITLE><?php echo $chr["charname"]; ?></TITLE>
	<meta name="Author" content="WinQuest" />
	<link href="images/css/chardetail.css" rel="stylesheet" type="text/css" />
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<style>
	A {color: #660000; text-decoration:underline;}	
	A:hover {color: #0000EE; text-decoration:underline;}
	.normal {color: #000000;}
	.token  {color: #3300FF;}
	.guardian {color: #DD0000;}
	.heading { 
		font-size: 16px;
		font-weight: bold;
	}	
	</style>
</HEAD>
<BODY>


<TABLE WIDTH="671" BORDER="0" align="center" CELLPADDING="0" CELLSPACING="0">
	<TR>
		<TD><IMG SRC="images/scroll/Page-Scroll_01.jpg" WIDTH="37" HEIGHT="130"/></TD>
		<TD><IMG SRC="images/scroll/Page-Scroll_02.jpg" WIDTH="600" HEIGHT="130"/></TD>
		<TD><IMG SRC="images/scroll/Page-Scroll_03.jpg" WIDTH="34" HEIGHT="130"/></TD>
	</TR>
	<TR>

		<TD>&nbsp;</TD>
		<TD width="600" align="left" valign="top" bgcolor="#EACEA6">
		 <table width="600" border="0" cellpadding="10" cellspacing="0">
          <tr align="center">
            <td colspan="2">
				<p>
					<span class="style1"><?php echo $chr["charname"]; ?></span><br>
					<b>Level <?php echo $chr["level"]; ?>, <?php echo $chr["class"]; ?></b>

				</p>
			</td>
          </tr>
          <tr>
<?php
$slot1 = mysql_query("SELECT * FROM zw_items WHERE CharId='{$charid}' AND ItemCat='weapon'");
$slot2 = mysql_query("SELECT * FROM zw_items WHERE CharId='{$charid}' AND ItemCat='armor'");
$slot3 = mysql_query("SELECT * FROM zw_items WHERE CharId='{$charid}' AND ItemCat='shield'");

if(mysql_num_rows($slot1) > 1){
$currentwep = mysql_query("SELECT * FROM zw_items WHERE ItemCat='weapon' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 1, 1");
} else {
$currentwep = mysql_query("SELECT * FROM zw_items WHERE ItemCat='weapon' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 1");
}
$w = mysql_fetch_array($currentwep);
$currentw = mysql_query("SELECT * FROM zw_weapons WHERE ItemId='{$w["ItemId"]}'");
$curw = mysql_fetch_array($currentw);

if(mysql_num_rows($slot2) > 1){
$currentarm = mysql_query("SELECT * FROM zw_items WHERE ItemCat='armor' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 1, 1");
} else {
$currentarm = mysql_query("SELECT * FROM zw_items WHERE ItemCat='armor' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 1");
}
$a = mysql_fetch_array($currentarm);
$currenta = mysql_query("SELECT * FROM zw_armors WHERE ItemId='{$a["ItemId"]}'");
$cura = mysql_fetch_array($currenta);

if(mysql_num_rows($slot3) == 0){
$currentsld = mysql_query("SELECT * FROM zw_shields WHERE ItemId='1' LIMIT 1");
} else if(mysql_num_rows($slot3) > 0) {
$currentsld = mysql_query("SELECT * FROM zw_items WHERE ItemCat='shield' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 1");
} else if(mysql_num_rows($slot3 > 1)){
$currentsld = mysql_query("SELECT * FROM zw_items WHERE ItemCat='shield' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 1, 1");
}
$s = mysql_fetch_array($currentsld);
$currents = mysql_query("SELECT * FROM zw_shields WHERE ItemId='{$s["ItemId"]}'");
$curs = mysql_fetch_array($currents);
?>
            <td width="400" align="left" valign="top">
				<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" 
					codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="420" height="370">
				  <param name="movie" value="ArmorHolder4.swf"/>
				  <param name="FlashVars" value="<?php echo $face;?>&strFaceColors=<?php echo $chr["facecolors"]; ?>&strArmorFileName=<?php echo $cura["Extra"]; ?>&strArmorCustomSkinFileName=<?php echo $chr["armorcolors"]; ?>&strWeaponFileName=<?php echo $curw["Extra"]; ?>&strShieldFileName=<?php echo $curs["Extra"]; ?>"/>
				  <param name="quality" value="high"/>

				  <param name="scale" value="noborder"/>
				  <embed src="ArmorHolder4.swf" FlashVars="<?php echo $face;?>&strFaceColors=<?php echo $chr["facecolors"]; ?>&strArmorFileName=<?php echo $cura["Extra"]; ?>&strArmorCustomSkinFileName=<?php echo $chr["armorcolors"]; ?>&strWeaponFileName=<?php echo $curw["Extra"]; ?>&strShieldFileName=<?php echo $curs["Extra"]; ?>" width="420" height="370" quality="high" 
					pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="noborder"></embed>
				</object>
            </td>

            <td align="left" valign="top">
            
				<br/>
				<p>
            	  <b>STR:</b> <?php echo $chr["strength"]; ?><br/>

		          <b>DEX:</b> <?php echo $chr["dexterity"]; ?><br/>
	              <b>INT:</b> <?php echo $chr["intelligence"]; ?><br/>
				  <b>CHA:</b> <?php echo $chr["charm"]; ?><br/>
				  <b>END:</b> <?php echo $chr["endurance"]; ?><br/>

				  <b>LUK:</b> <?php echo $chr["luck"]; ?><br/>
				</p>
				<p>
					<b>Account Type:</b><span class="style5">
					
						<?php echo $chr["chartype"]; ?>
					
					</span>
				  <br />

 				  <b>Clan: </b> <?php echo $chr["clan"]; ?><br/>
				  <b>Race: </b> <?php echo $chr["race"]; ?><br/>
 				  <b>Subrace: </b> <?php echo $chr["subrace"]; ?><br/>
                  <b>Gold:</b> <?php echo $chr["gold"]; ?><br/>
                  <b>Z-Tokens:</b> <?php echo $chr["tokens"]; ?><br/>

                  <br/>
				  
				  <b>ID#</b> <?php echo $charid; ?><br>
               
                  
                    <a href="mailto:yourfriend@email.com?subject=AdventureQuest Character Sheet&body=The link to my character is: http://divi.hobo-studios.org/charview.php?id=<?php echo $charid; ?>" class="style2"><b>Email this to a friend</b></a>
                  
                </p>
            </td>

        </tr>
		<tr>
		<td>
		  <blockquote>
			<b>Journal:</b><br/>
				Born on <?php echo $chr["createdday"]; ?>, <?php echo $chr["createddate"]; ?><br/>
				
				Last Played on <?php echo $chr["playedday"]; ?>, <?php echo $chr["playeddate"]; ?><br/><br/>
			</blockquote>
			<?php if ($chr["staff"] != 1 && $chr["banned"] != 1) { ?>
			<blockquote>
			<b>Ranking:</b><br/>
				Rank <b><?php $levelrank = mysql_query("SELECT count(*) FROM zw_characters WHERE staff != 1 AND banned != 1 AND level > (SELECT level FROM zw_characters WHERE id='$charid' LIMIT 1)"); $levelrank2 = mysql_fetch_array($levelrank); echo $levelrank2['count(*)']+1; ?></b> in Level/EXP.<br/>

				Rank <b><?php $goldrank = mysql_query("SELECT count(*) FROM zw_characters WHERE staff != 1 AND banned != 1 AND gold > (SELECT gold FROM zw_characters WHERE id='$charid' LIMIT 1)"); $goldrank2 = mysql_fetch_array($goldrank); echo $goldrank2['count(*)']+1; ?></b> in Gold.<br/>

				Rank <b><?php $tokenrank = mysql_query("SELECT count(*) FROM zw_characters WHERE staff != 1 AND banned != 1 AND tokens > (SELECT tokens FROM zw_characters WHERE id='$charid' LIMIT 1)"); $tokenrank2 = mysql_fetch_array($tokenrank); echo $tokenrank2['count(*)']+1; ?></b> in Tokens.<br/>
			</blockquote>
			<?php }; ?>
		</td>
		<td>
           
		</td>
	</tr>          
		       

      <tr>
        <td colspan="2" align="left" valign="top">
		<table width="450" cellspacing="0" cellpadding="6" align="center">
		<tr> 
		  <td colspan="2">&nbsp;</td>
		</tr>

		<tr valign="top"> 
		  <td width="205">
			<table width="200" cellpadding="2">
				<tr>
					<td class="heading"><a target="_blank" href="http://www.battleon.com/info/aq-weapon-list.asp">Weapons</a></td>
				</tr>
				<?php
				$weapons = mysql_query("SELECT * FROM zw_items WHERE ItemCat='weapon' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8");
				
				while($wep = mysql_fetch_array($weapons)){
				$information = mysql_query("SELECT * FROM zw_weapons WHERE ItemId='{$wep["ItemId"]}'");
				$i = mysql_fetch_array($information);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b><?php echo $i["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						Storage:</td>

				</tr>
				<?php
				$weaponsw2 = mysql_query("SELECT * FROM zw_items WHERE ItemCat='weapon' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8, 10");
				
				while($wepw2 = mysql_fetch_array($weaponsw2)){
				$informationw2 = mysql_query("SELECT * FROM zw_weapons WHERE ItemId='{$wepw2["ItemId"]}'");
				$iw2 = mysql_fetch_array($informationw2);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b>&nbsp;<?php echo $iw2["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
			
			</table>

		  </td>
		  <td width="205">
			<table width="200" cellpadding="2"> 
				<tr>
					<td class="heading"><a target="_blank" href="http://www.battleon.com/info/aq-armor-list.asp">Armors</a></td>
				</tr>
			
				<?php
				$armors = mysql_query("SELECT * FROM zw_items WHERE ItemCat='armor' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8");
				
				while($arm = mysql_fetch_array($armors)){
				$information1 = mysql_query("SELECT * FROM zw_armors WHERE ItemId='{$arm["ItemId"]}'");
				$i1 = mysql_fetch_array($information1);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b><?php echo $i1["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						Storage:</td>

				</tr>
				<?php
				$armorsa2 = mysql_query("SELECT * FROM zw_items WHERE ItemCat='armor' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8, 10");
				
				while($arma2 = mysql_fetch_array($armorsa2)){
				$information1a2 = mysql_query("SELECT * FROM zw_armors WHERE ItemId='{$arma2["ItemId"]}'");
				$i1a2 = mysql_fetch_array($information1a2);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b>&nbsp;<?php echo $i1a2["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
			
			
			</table>
		  </td>
		</tr>
		<tr> 
		  <td colspan=2>&nbsp;</td>

		</tr>
		<tr valign="top"> 
		  <td width="205">
			<table width="200" cellpadding="2">
				<tr>
					<td class="heading"><a target="_blank" href="http://www.battleon.com/info/aq-shield-list.asp">Shields</a></td>
				</tr>
								<?php
				$shields = mysql_query("SELECT * FROM zw_items WHERE ItemCat='shield' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8");
				
				while($sld = mysql_fetch_array($shields)){
				$information2 = mysql_query("SELECT * FROM zw_shields WHERE ItemId='{$sld["ItemId"]}'");
				$i2 = mysql_fetch_array($information2);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b><?php echo $i2["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						Storage:</td>

				</tr>
								<?php
				$shieldss2 = mysql_query("SELECT * FROM zw_items WHERE ItemCat='shield' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8, 10");
				
				while($slds2 = mysql_fetch_array($shieldss2)){
				$information2s2 = mysql_query("SELECT * FROM zw_shields WHERE ItemId='{$slds2["ItemId"]}'");
				$i2s2 = mysql_fetch_array($information2s2);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b>$nbsp;<?php echo $i2s2["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
			</table>
		</td>

		<td width="205">
			<table width="200" cellpadding="2"> 
				<tr>
				  <td colspan="2" class="heading"><a target="_blank" href="http://www.battleon.com/info/aq-spell-list.asp">Spells</a></td>
				</tr>
												<?php
				$spells = mysql_query("SELECT * FROM zw_items WHERE ItemCat='spell' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8");
				
				while($spl = mysql_fetch_array($spells)){
				$information3 = mysql_query("SELECT * FROM zw_spells WHERE ItemId='{$spl["ItemId"]}'");
				$i3 = mysql_fetch_array($information3);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b><?php echo $i3["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						Storage:</td>

				</tr>
												<?php
				$spellss2 = mysql_query("SELECT * FROM zw_items WHERE ItemCat='spell' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8, 10");
				
				while($spls2 = mysql_fetch_array($spellss2)){
				$information3s2 = mysql_query("SELECT * FROM zw_spells WHERE ItemId='{$spls2["ItemId"]}'");
				$i3s2 = mysql_fetch_array($information3s2);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b>&nbsp;<?php echo $i3s2["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
			</table>
  		  </td>
		</tr>
		<tr> 
		  <td colspan=2>&nbsp;</td>

		</tr>
		<tr valign="top"> 
		  <td width="205">
			<table width="200" cellpadding="2">
				<tr>
				  <td class="heading"><a target="_blank" href="http://www.battleon.com/info/aq-pet-list.asp">Pets</a></td>
				</tr>
												<?php
				$pets = mysql_query("SELECT * FROM zw_items WHERE ItemCat='pet' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8");
				
				while($pet = mysql_fetch_array($pets)){
				$information4 = mysql_query("SELECT * FROM zw_pets WHERE ItemId='{$pet["ItemId"]}'");
				$i4 = mysql_fetch_array($information4);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b><?php echo $i4["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						Storage:</td>

				</tr>
												<?php
				$petsp2 = mysql_query("SELECT * FROM zw_items WHERE ItemCat='pet' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8, 10");
				
				while($petp2 = mysql_fetch_array($petsp2)){
				$information4p2 = mysql_query("SELECT * FROM zw_pets WHERE ItemId='{$petp2["ItemId"]}'");
				$i4p2 = mysql_fetch_array($information4p2);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b>&nbsp;<?php echo $i4p2["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
			</table>
		</td>

		<td width="205">
			<table width="200" cellpadding="2"> 
				<tr>
				  <td class="heading"><a target="_blank" href="http://www.battleon.com/info/aq-misc-list.asp">Miscellaneous Items</a></td>
				</tr>
																<?php
				$miscs = mysql_query("SELECT * FROM zw_items WHERE ItemCat='misc' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8");
				
				while($misc = mysql_fetch_array($miscs)){
				$information5 = mysql_query("SELECT * FROM zw_miscs WHERE ItemId='{$misc["ItemId"]}'");
				$i5 = mysql_fetch_array($information5);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b><?php echo $i5["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						Storage:</td>

				</tr>
																<?php
				$miscsm2 = mysql_query("SELECT * FROM zw_items WHERE ItemCat='misc' AND CharId='{$charid}' ORDER BY SortNumber ASC LIMIT 8, 10");
				
				while($miscm2 = mysql_fetch_array($miscsm2)){
				$information5m2 = mysql_query("SELECT * FROM zw_miscs WHERE ItemId='{$miscm2["ItemId"]}'");
				$i5m2 = mysql_fetch_array($information5m2);
				?>
				<tr align="left" valign="top"> 
					<td class="normal" nowrap>
						
						<b>&nbsp;<?php echo $i5m2["ItemName"]; ?></b></td>

				</tr>
      <?php
       }
      ?>
			</table>
		</td>			
	</tr>

		<tr> 
		  <td colspan=2>&nbsp;</td>

		</tr>
		<tr valign="top"> 
		  <td width="205">
			<table width="200" cellpadding="2">
				<tr>
				  <td class="heading"><a target="_blank" href="http://www.battleon.com/info/aq-painting-list.asp">House Paintings</a></td>
				</tr>
				
			</table>
		</td>

		<td width="205">
			<table width="200" cellpadding="2"> 
				<tr>
				  <td class="heading"><u>House Guards</u></td>
				</tr>
				
			</table>
		</td>			
	</tr>

	</table>

	</td>
	</tr>

	</table>
</td>
<td>&nbsp;</td>
</tr>
<TR>
	<TD><IMG SRC="images/scroll/Page-Scroll_07.gif" WIDTH="37" HEIGHT="100"/></TD>
	<TD><IMG SRC="images/scroll/Page-Scroll_08.gif" WIDTH="600" HEIGHT="100"/></TD>
	<TD><IMG SRC="images/scroll/Page-Scroll_09.gif" WIDTH="34" HEIGHT="100"/></TD>

</TR>
</TABLE>
<br/>
<br/>
</BODY>
</HTML>