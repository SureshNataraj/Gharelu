<%@ language="vbscript" %>
<!-- #include file="../header.asp" -->
<html>
<head>
<script language="javascript" src="../includes/chk.js"> </script>
<link rel="stylesheet" href="../includes/sty.css" type="text/css">
<script language="javascript">

<!--
function isAlphabet(string)
{
	var reg_exp=/[a-zA-Z ]/
	if(reg_exp.test(string)==true)
	{
		return true;
	}
	else
	{
		return false;
	}
}

function validatenew()
{
	var name=document.suggest.name.value;
	var email=document.suggest.email.value;
	
	if(name=="")
	{
		alert("Kindly enter your name.");
		document.suggest.name.focus();
		return false;
	}	
	else
	{
		if(!isAlphabet(name))
		{
			alert("Kindly enter a proper name.")
			document.suggest.name.focus();
			return false;
		}
	}
			
	if(email=="")
	{	
		alert("Kindly enter your email address.");
		document.suggest.email.focus();
		return false;
	}

	else
	{
		var reg=/@./;
		if(reg.test(email)==true)
		{
			var temp=email.slice(0,email.indexOf('@'));
			var temp1=email.slice(email.indexOf('@')+1,email.indexOf('.'));
			var temp2=email.slice(email.indexOf('.')+1);
			
			if(temp.length < 1 || temp1.length <1 || temp2.length <2)
			{
				alert("Kindly enter a valid email address.");
				document.suggest.email.focus();
				return false;
			}
		}
		else
		{
			alert("Kindly enter a valid email address.")
			document.suggest.email.focus();
			return false;
		}
	}
			
	if(document.suggest.Suggestion.value=="")
	
	{
		alert("Kindly enter your suggestion.")
		document.suggest.Suggestion.focus();
		return false;
	}
	return true;
}
//END OF validate_fields() FUNCTION
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

<title>GhareluTips - Suggestions</title>
</head>

<body bgcolor="#FFFECB" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onLoad="init();" text="#5E4D1F" link="#5E4D1F" vlink="#5E4D1F" alink="#5E4D1F">
<%
if Request.QueryString("status")="recieved_suggestion" then 
Response.Write("<script language='javascript'>newwin('confirm_suggestion.asp','0','0') ;</script>")
end if
%>
<div id="testmenu" class="menu"></div>
<script language="javascript">
 var _version = 'Pre 1.2'; 
</script>
<script language="javascript1.2">
 var _version = '1.2'; 
</script>
<script language="javascript" src="../includes/browdet.js"> </script>
<script language="javascript1.2" src="../includes/services_menu.js"> </script>


    <table border="0" cellpadding="0" cellspacing="0" width="775" height="324">
      <tr>
        <td width="230" height="24"><a href="../index.asp"><img src="../images/logo.gif" alt="Logo" width="205" height="72" border="0"></a></td>
        <td height="41" colspan="2" align="center"><img src="../images/srushti.gif" alt="Banner" width="400" height="60" border="1"></td>
  </tr>
    <tr>
        <td width="230" height="280" valign="top"> 
          <table border="0" cellpadding="0" cellspacing="0" height="226">
            <tr> 
              <td width="100%" valign="top" height="20"><img src="../images/slogan.gif" width="230" height="30"></td>
            </tr>
            <!-- Menu Starts here //-->
          <tr>
			<td width="232" valign="top" height="20">
				<a href="sugges.asp#" onMouseOver="activateMenu(1,100);window.status='Health';return true;" onMouseOut="window.status='';return true;"><font face="Verdana" size="2">Health</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="sugges.asp#" onMouseOver="activateMenu(2,120);window.status='Kitchen';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Kitchen</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="sugges.asp#" onMouseOver="activateMenu(3,140);window.status='Housekeeping';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Housekeeping</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="sugges.asp#" onMouseOver="activateMenu(4, 160);window.status='Garden';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Garden</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="sugges.asp#" onMouseOver="activateMenu(5, 180);window.status='Pest control';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Pest control</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="sugges.asp#" onMouseOver="activateMenu(6, 200);window.status='Personal';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Personal</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="sugges.asp#" onMouseOver="activateMenu(7,220);window.status='Computers';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Computers</font></a>
			</td>
		</tr>
	
		
		<!--Menu ends here //-->		
              <tr align="left"> 
                <td width="100%" height="21">&nbsp; 
                  
                </td>
              </tr>
              

			<td width="232" height="21">
				<a href="sugges.asp#" onclick="javascript:newwin('tell_a_friend.asp',0,0)"><img src="../images/Tell.gif" border="0" width="110" height="26" alt="Tell a friend" onmouseover="window.status='Tell a friend';"></a>
			</td>
		</tr>
		
          </table>
        </td>
        <td width="454" height="280"> 

        <form name="suggest" action="suggest.asp" method="post" onsubmit="return validatenew()">
          <table border="0" cellspacing="5" cellpadding="0" align="center" height="166" width="430">
            <tr> 
              <td height="7" colspan="3"> 
                <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#704B0C"><b>Suggestion</b></font></div>
              </td>
            </tr>
            <tr> 
              <td valign="top" colspan="3" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                How can we make GhareluTips a better place on the web? Please 
                send suggestions. After all its your home on the web. </font></td>
            </tr>
            <tr> 
              <td valign="top" colspan="2" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Name</font></td>
              <td valign="top" height="2" width="213"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                <input type="text" name="name">
                </font></td>
            </tr>
            <tr> 
              <td height="16" valign="top" colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">E-mail 
                </font></td>
              <td height="16" valign="top" width="213"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                <input type="text" name="email">
                </font></td>
            </tr>
            <tr> 
              <td height="6" valign="top" colspan="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2">Suggestion</font></td>
              <td height="6" valign="top" width="213"> <font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                <textarea name="Suggestion" rows="3"></textarea>
                </font></td>
            </tr>
            <tr align="left"> 
              <td height="7" valign="top" colspan="3"> 
                <input type="submit" name="Submit" value="Submit">
                <input type="reset" name="Reset" value="Reset">
              </td>
            </tr>
          </table>
          </form>
			    
        </td>
        <td width="100" height="280" align="center">
        </td>
  </tr>
  <tr>
        <td height="21" colspan="3" align="center"> 
         <form action="../find1.asp" method="post" id="form1" name="form1" onsubmit="return check_search();"><p><b>For tips on anything, type your&nbsp; key word here...  </b><input name="q">and <input align="bottom" alt="Go" class="formButton" name="Submit1" src="../images/go.gif" type="image" value="startsearch" border="0" WIDTH="32" HEIGHT="17"></p></form>
        </td>
  </tr>
  <tr>
        <td height="18" colspan="3" align="center"><font face="Verdana" size="1"> 
          <a href="../index.asp"> Home</a> |<a href="about.asp"> About us</a> | Suggestions | <a href="advertise.asp">Advertise with us</a> | <a href="contact.asp">Contact 
          us</a> | <a href="privacy.asp">Privacy policy</a></font></td>
  </tr>
  <tr>
        <td height="18" colspan="3" align="center"><font face="verdana" size="1">
        | <a href="javascript:newwin1('tipoftheday.asp')" onMouseOver="window.status='Tip of the day';return true" onMouseOut="window.status='';return true">Tip of the day</a> |
   <a href="javascript:newwin('sendatip.asp',0,0)" onMouseOver="window.status='Send a Tip';return true" onMouseOut="window.status='';return true">Send a tip</a> |
   <a href="javascript:newwin('subscribe.asp',0,0)" onMouseOver="window.status='Subscribe';return true" onMouseOut="window.status='';return true">Subscribe</a> |
   <a href="javascript:newwin('askaquery.asp',0,0)" onMouseOver="window.status='Ask a query';return true" onMouseOut="window.status='';return true">Ask a query</a> |
   <a href="javascript:newwin1('contributor.asp')" onMouseOver="window.status='Contributor';return true" onMouseOut="window.status='';return true">Top contributor</a> |
   <br>�All rights reserved. </font></td>
  </tr>
</table>

</body>
</html>
