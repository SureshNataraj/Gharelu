<%@ language="vbscript"%>
<!-- #include file="header.asp"-->
<html>
<head>
<script language="javascript" src="includes/chk.js"> </script>
<style>

#n1{position:absolute; left:400px; top:77px; width:300px; height:20px;  visibility:hidden; z-index:0;}
#n2{position:absolute; left:450px; top:126px; width:200px; height:20px;  visibility:hidden; z-index:0;}
#n3{position:absolute; left:500px; top:194px; width:290px; height:20px;  visibility:hidden; z-index:0;}
#n4{position:absolute; left:455px; top:263px; width:350px; height:20px;  visibility:hidden; z-index:0;}
#n5{position:absolute; left:400px; top:318px; width:300px; height:20px;  visibility:hidden; z-index:0;}

</style>
<script language="javascript">
<!--
function showall(x)
{
	net=document.layers
	iexp=document.all
	id='n'+x
	if(net)
	{
	document.layers[id].visibility="show"
	}
	else
	 {
	  document.all[id].style.visibility="visible"
	
	 }
 }
  
 function hide()
 {
  net=document.layers
  iexp=document.all
  
  for(i=1;i<6;i++)
	{
	  li=0
	  li='n'+i
		  if(net)
		   {
		   document.layers[id].visibility="hide"
		   }
	      else
	      {
	       document.all[id].style.visibility="hidden"
	      }
	    
      }
  } 
//-->
</script>
<script language="javascript">
function check_search()
{
	if(document.form1.q.value=="")
	{
		alert("You have not entered a search term!!!");
		document.form1.q.focus;
		return false;
	}
}
</script>
<link rel="stylesheet" href="includes/sty.css" type="text/css">
<title>GhareluTips - The world's largest collection of household tips on the net!!!</title>
<meta name="keywords" content="household tips, tips, household, health tips, beauty tips, kitchen tips, cooking tips, garden tips, plumbing tips, surfing, computer,tips, india , bangalore">
<meta name="description" content="The best  site for household tips including tips on health, kitchen, housekeeping , gardening, beauty and much more.">
</head>

<body bgcolor="#fffecb" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onLoad="init();" text="#5e4d1f" link="#5e4d1f" vlink="#5e4d1f" alink="#5e4d1f">
<div id="n1"><table border="1" cellspacing="0" cellpadding="0"><tr><td bgcolor="#fffecb"><font face="verdana" size="1">Chosen over hundreds of tips sent 
    today.</font></td></tr></table></div>
<div id="n2"><table border="1" cellspacing="0" cellpadding="0"><tr><td bgcolor="#fffecb"><font face="verdana" size="1">Send a tip and win surprise 
    gifts.</font></td></tr></table></div>
<div id="n3"><table border="1" cellspacing="0" cellpadding="0"><tr><td bgcolor="#fffecb"><font face="verdana" size="1">Subscribe to get the best tips of the 
            week.</font></td></tr></table></div>
<div id="n4"><table border="1" cellspacing="0" cellpadding="0"><tr><td bgcolor="#fffecb"><font face="verdana" size="1">Ask away. Our panelists will reply at the 
            earliest.</font></td></tr></table></div>
<div id="n5"><table border="1" cellspacing="0" cellpadding="0"><tr><td bgcolor="#fffecb"><font face="verdana" size="1">See who has sent the best tips of the 
            week.</font></td></tr></table></div>
<div id="testmenu" class="menu"></div>
<script language="javascript">
	var _version = 'Pre 1.2'; 
</script>
<script language="javascript1.2">
 var _version = '1.2'; 
</script>
<script language="javascript" src="includes/browdet.js"> </script>
<script language="javascript" src="includes/menu.js"> </script>

<!-- THE MASTER TABLE STARTS HERE --->
	<table border="0" cellpadding="0" cellspacing="0" width="780" height="216">
	<tr>
		<!-- GHARELUTIPS LOGO (THE ONE WITH THE GHAR) -->
		<td width="234" height="1">
			<img src="images/logo.gif" alt="Logo" width="205" height="72" border="0">
		</td>
		<!-- END OF GHARELUTIPS LOGO -->
		
		<!-- THE SRUSHTI BANNER STARTS HERE -->
		<td height="1" colspan="2" align="middle" width="545">
        <img src="images/srushti.gif" alt="Banner" width="400" height="60" border="1">
		</td>
		
	</tr>
	<tr>
	
	<!-- THIS IS THE START OF THE TABLE CONTAINING MAIN MENU AND TELL A FRIEND -->
	<td width="234" height="280" valign="top">
	<table border="0" cellpadding="0" cellspacing="0" height="226" width="202">
		<tr>
		
		<!-- GHARELUTIPS SLOGAN COMES HERE -->
		<td width="232" valign="top" height="20">
			<img src="images/Slogan.gif" width="208" height="30"> 
		</td>
		</tr>
		<!-- SLOGAN ENDS HERE -->
		<tr>
			<td width="232" valign="top" height="20">
				<a href="#" onMouseOver="activateMenu(1,100);window.status='Health';return true;" onMouseOut="window.status='';return true;">
					<font face="Verdana" size="2">Health</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="#" onMouseOver="activateMenu(2,120);window.status='Kitchen';return true" onMouseOut="window.status='';return true">
					<font face="Verdana" size="2">Kitchen</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="#" onMouseOver="activateMenu(3,140);window.status='Housekeeping';return true" onMouseOut="window.status='';return true">
					<font face="Verdana" size="2">Housekeeping</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="#" onMouseOver="activateMenu(4, 160);window.status='Garden';return true" onMouseOut="window.status='';return true">
					<font face="Verdana" size="2">Garden</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="#" onMouseOver="activateMenu(5, 180);window.status='Pests';return true" onMouseOut="window.status='';return true">
					<font face="Verdana" size="2">Pests</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="#" onMouseOver="activateMenu(6, 200);window.status='Personal';return true" onMouseOut="window.status='';return true">
					<font face="Verdana" size="2">Personal</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="#" onMouseOver="activateMenu(7,220);window.status='Computers';return true" onMouseOut="window.status='';return true">
					<font face="Verdana" size="2">Computers</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="#" onMouseOver="activateMenu(8,250);window.status='Pets';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Pets</font></a>
			</td>
		</tr>
		
		<tr align="left">
			<td width="232" height="21">&nbsp; 
			</td>
		</tr>
		
		<tr align="left">
			<td width="232" height="21">
				<a href="#" onclick="javascript:newwin('services/tell_a_friend.asp',0,0)"><img src="images/Tell.gif" border="0" width="110" height="26" alt="Tell a friend" onmouseover="window.status='Tell a friend';"></a>
			</td>
		</tr>
    </table>
    </td>
    <!-- END OF TABLE CONTAINING MAIN MENU AND TELL A FRIEND BOX -->
    
    <!-- START OF TABLE CONTAINING MAIN GHARELU IMG & SERVICES LIKE SUBSCRIBE ETC.. -->
    <td width="356" height="280">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
		<center>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tr>
                <!-- IMG AT CENTER OF PAGE COMES HERE -->
                <td width="49%" rowspan="5">
					<img src="images/home1.gif" alt="Gharelu Welcomes You" width="172" height="252">
                </td>
                <!-- CENTRAL IMG ENDS HERE -->
                
                <!-- START OF TIP OF THE DAY -->
                <td colspan="3" valign="top" align="left"> 
					<b><a href="javascript:newwin1('services/tipoftheday.asp')" onMouseOver="showall(1);window.status='Tip of the day';return true" onMouseOut="hide();window.status='';return true">
					<font face="verdana" size="2">Tip of the day</font></a></b>
				</td>
				</tr>
				<!-- END OF TIP OF THE DAY -->
								
				<tr>
                <td width="16%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                
                <!-- START OF SEND A TIP -->
                <td width="28%" valign="top">
					<b><a href="javascript:newwin('services/sendatip.asp',0,0)" onMouseOver="showall(2);window.status='Send a Tip';return true" onMouseOut="hide();window.status='';return true">
                    <font face="verdana" size="2">Send a tip</font></a></b>
                </td>
                <td width="7%">&nbsp;&nbsp;&nbsp;
                </td>
				</tr>
				<!-- END OF SEND A TIP -->
				
				<!-- START OF SUBSCRIBE -->
				<tr>
                <td colspan="3" align="right" valign="center"> 
					<b><a href="javascript:newwin('services/subscribe.asp',0,0)" onMouseOver="showall(3);window.status='Subscribe';return true" onMouseOut="hide();window.status='';return true">
					<font face="verdana" size="2">
					Subscribe
					</font></a></b>
                </td>
				</tr>
				<!-- START OF SUBSCRIBE -->
				
				<!-- START OF ASK A QUERY -->
				<tr>
                <td width="16%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				</td>
                <td width="28%" valign="bottom">
					<b><a href="javascript:newwin('services/askaquery.asp',0,0)" onMouseOver="showall(4);window.status='Ask a query';return true" onMouseOut="hide();window.status='';return true">
                    <font face="verdana" size="2">
                    Ask a query
                    </font></a></b>
                </td>
                <td width="7%">&nbsp;&nbsp;&nbsp; 
				</td>
				</tr>
				<!-- START OF ASK A QUERY -->
				
				<!-- START OF TOP CONTRIBUTOR -->
				<tr>
                <td colspan="3" valign="bottom" align="left">
					<b><a href="javascript:newwin1('services/contributor.asp')" onMouseOver="showall(5);window.status='Contributor';return true" onMouseOut="hide();window.status='';return true">
                    <font face="verdana" size="2">
                    Top contributor
                    </font></a></b>
                </td>
				</tr>
				<!-- START OF TOP CONTRIBUTOR -->
			</table>
		</center>
	</div>
	</td>
	<!-- END OF TABLE CONTAINING MAIN GHARELU IMG & SERVICES LIKE SUBSCRIBE ETC.. -->
	
	<!-- BEGINNING OF BANNERS -->
	<td width="189" height="280" align="right" valign="center" align="right">
			<table border="0" cellpadding="10" cellspacing="0" width="100%">
			<tr><td></tr></td><tr><td>
	
			</td></tr>
			</table>
	</td>
	</tr>
	<!-- END OF BANNERS -->
	
	<!-- START OF SEARCH ENGINE -->
	<tr>
    <td height="21" colspan="3" align="middle" width="779">
		<form action="find1.asp" method="post" id="form1" name="form1" onsubmit="return check_search();"><p><b>For tips on anything, type your&nbsp; key word here...  </b><input name="q">and <input align="bottom" alt="Go" class="formButton" name="Submit1" src="images/go.gif" type="image" value="startsearch" border="0" WIDTH="32" HEIGHT="17"></p></form>
    </td>
	</tr>
	<!-- END OF SEARCH ENGINE -->
	
		
	<!-- START OF BOTTOM MENU CONTAINING HOME, ABOUT US ETC.. -->
	<tr>
	<td height="18" colspan="3" align="middle" width="779">
		<font face="Verdana" size="1">
			Home |
		<a href="services/about.asp" onMouseOver="window.status='About us';return true" onMouseOut="window.status='';return true">
			About us</a>| 
		<a href="services/sugges.asp" onMouseOver="window.status='Suggestions';return true" onMouseOut="window.status='';return true">
			Suggestions</a>|
		<a href="services/advertise.asp" onMouseOver="window.status='Advertise with us ';return true" onMouseOut="window.status='';return true">
			Advertise with us</a>| 
		<a href="services/contact.asp" onMouseOver="window.status='Contact us';return true" onMouseOut="window.status='';return true">
			Contact us</a>|
		<a href="services/privacy.asp" onMouseOver="window.status='Privacy Policy';return true" onMouseOut="window.status='';return true">
			Privacy policy</a>
		</font>
	</td>
	</tr>
	<!-- END OF BOTTOM MENU CONTAINING HOME, ABOUT US ETC.. -->
	
	<!-- START OF ALL RIGHTS RESERVED -->
	<tr>
    <td height="18" colspan="3" align="middle" width="779">©All rights reserved. 
	
</td>
	</tr>
	<!-- END OF RIGHTS STATEMENT -->
	
	</table>
<!-- THE MASTER TABLE ENDS HERE-->

</body>
</html>

