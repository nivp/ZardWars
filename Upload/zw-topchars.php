<?php
# Connect to the database
include("config.php");
?>
<HTML>
<HEAD>
<TITLE>ZardGoggery - Top Characters</TITLE>
<link rel="stylesheet" type="text/css" href="/images/css/winquest.css" />
<style type="text/css"> A { text-decoration:none; } A:hover { text-decoration:underline; } </style>	
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<link href="game.css" rel="stylesheet" type="text/css"/>
</HEAD>
<BODY bgcolor="#333333" text="#FFFFFF" link="#EE0000" vlink="#CC0000" alink="#EE0000">

<table width="548" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td align="left" valign="top" height="173"> 
      <p>
		<font size="3"><b>Top 100 Characters</b></font>
      </p>
      <p>This is a list of the top 100 characters in ZardWin. Well done guys!
      </p>
        
      <table width="548" border="1" cellspacing="0" cellpadding="5" bordercolor="#000000">
        <tr bgcolor="#330000" bordercolor="#000000">
          <td class='top10Heading'>#</td>
          <td class='top10Heading'>Name</td>

          <td class='top10Heading'>Level</td>
        </tr>
<?php
# Don't select staff or banned characters, and select the top 100 by level in descending (Highest to lowest) order
$character = mysql_query("SELECT * FROM zw_characters WHERE staff != 1 AND banned != 1 ORDER BY level DESC LIMIT 100");

$i = 0;

while($chr = mysql_fetch_array($character)){
$i = $i + 1;
?>
<tr bgcolor="#CCCC66" bordercolor="#000000">
<td class='top10'><?php echo $i; ?></td>
<td class='top10Name'><a href="zw-chardetailnew.php?temp=<?php echo $chr["id"]; ?>"><?php echo $chr["charname"]; ?></a></td>
<td class='top10'><?php echo $chr["level"]; ?></td>
</tr>
<?php
}
?>
      </table>
      <p>&nbsp;</p>
    </td>
  </tr>

</table>
</BODY>
</HTML>

