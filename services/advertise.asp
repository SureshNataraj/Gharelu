<%@ language="vbscript" %>
<!-- #include file="../header.asp" -->
<html>

<head>
<meta content="text/html; charset=unicode" http-equiv="Content-Type">
<meta name="GENERATOR" content="MSHTML 5.00.2614.3500">

<script language="javascript" src="../includes/chk.js"> </script>

<link href="../includes/sty.css" rel="stylesheet" type="text/css">

<script language="javascript">
<!--

function isNumber(string)
{
	var reg_exp=/[0-9-,:]/
	if(reg_exp.test(string)==true)
	{
		return true;
	}
	else
	{
		return false;
	}
		
}
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
	var company=document.advertise.cname.value;
	var contact1=document.advertise.contact.value;
	var phone=document.advertise.telephone.value;
	var fax=document.advertise.fax.value;
	var email=document.advertise.email.value;
	var url=document.advertise.url.value;
	var enquiry1=document.advertise.enquiry.value;
	
	if(company!="")
	{
		if(!isAlphabet(company))
		{
			alert("Kindly enter a valid company name.")
			document.advertise.cname.focus();
			return false;
		}
	}
	
	if(contact1=="")
	{
		alert("Kindly enter the name of the contact person.");
		document.advertise.contact.focus();
		return false;
	}
	else
	{
		if(!isAlphabet(contact1))
		{
			alert("Kindly enter a valid name for the contact person.");
			document.advertise.contact.focus();
			return false;
		}
	}
		
	if(phone!="")
	{
		if(!isNumber(phone))
		{
			alert("Kindly enter a valid telephone number.");
			document.advertise.telephone.focus();
			return false;
		}
	}

	if(fax!="")
	{
		if(!isNumber(fax))
		{
			alert("Kindly enter a valid fax number.");
			document.advertise.fax.focus();
			return false;
		}
	}
	
	
		  
	if(email=="")
	{	
		alert("Kindly enter your email address.");
		document.advertise.email.focus();
		return false;
	}
	
	if(email!="")
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
				document.advertise.email.focus();
				return false;
			}
		}
		else
		{
			alert("Kindly enter a valid email address.")
			document.advertise.email.focus();
			return false;
		}
	}
		
	
	if(enquiry1=="")
	{
		alert("Kindly enter your enquiry details.")
		document.advertise.enquiry.focus();
		return false;
	}	
	return true;
}
//END OF validatenew FUNCTION
//-->
</script>
<title>GhareluTips - Advertise with us</title>

</head>

<body bgcolor="#FFFECB" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onLoad="init();" text="#5E4D1F" link="#5E4D1F" vlink="#5E4D1F" alink="#5E4D1F">

<%
if Request.QueryString("status")="recieved_ad_request" then 
Response.Write("<script language='javascript'>newwin('confirm_advertise.asp','0','0') ;</script>")
end if
%>

<div id="testmenu" class="menu"></div><script language="javascript">
 var _version = 'Pre 1.2'; 
</script>
<script language="javascript1.2">
 var _version = '1.2'; 
</script>
<script language="javascript" src="../includes/browdet.js"> </script>
<script language="javascript1.2" src="../includes/services_menu.js"> </script></head>
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

    <table border="0" cellpadding="0" cellspacing="0" width="775" height="324">
      <tr>
        <td width="230" height="24"><a href="../index.asp"><img src="../images/logo.gif" alt="Logo" width="205" height="72" border="0"></a></td>
        <td height="41" colspan="2" align="middle"><img src="../images/srushti.gif" alt="Banner" width="400" height="60" border="1"></td>
  </tr>
    <tr>
        <td width="230" height="280" valign="top"> 
          <table border="0" cellpadding="0" cellspacing="0" height="226">
            <tr> 
              <td width="100%" valign="top" height="20"><img height="30" src="../images/Slogan.gif" width="230"></td>
            </tr>
            <!-- Menu Starts here //-->
          <tr>
			<td width="232" valign="top" height="20">
				<a href="advertise.asp#" onMouseOver="activateMenu(1,100);window.status='Health';return true;" onMouseOut="window.status='';return true;"><font face="Verdana" size="2">Health</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="advertise.asp#" onMouseOver="activateMenu(2,120);window.status='Kitchen';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Kitchen</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="advertise.asp#" onMouseOver="activateMenu(3,140);window.status='Housekeeping';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Housekeeping</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="advertise.asp#" onMouseOver="activateMenu(4, 160);window.status='Garden';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Garden</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="advertise.asp#" onMouseOver="activateMenu(5, 180);window.status='Pest control';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Pest control</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="advertise.asp#" onMouseOver="activateMenu(6, 200);window.status='Personal';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Personal</font></a>
			</td>
		</tr>
		<tr>
			<td width="232" height="21">
				<a href="advertise.asp#" onMouseOver="activateMenu(7,220);window.status='Computers';return true" onMouseOut="window.status='';return true"><font face="Verdana" size="2">Computers</font></a>
			</td>
		</tr>
		
		<!--Menu ends here //-->		
           
              <tr align="left"> 
                <td width="100%" height="21">&nbsp; 
                  
                </td>
              </tr>
              
 
			<td width="232" height="21">
				<a href="advertise.asp#" onclick="javascript:newwin('tell_a_friend.asp',0,0)"><img src="../images/Tell.gif" border="0" width="110" height="26" alt="Tell a friend" onmouseover="window.status='Tell a friend';"></a>
			</td>
		</tr>
          </table>
        </td>
        <td width="454" height="280"> 
          <table border="0" cellspacing="5" cellpadding="0" align="center" height="166" width="384">
            <tr> 
              <td height="7" colspan="3"> 
                <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><b>Advertise 
                  with us</b></font></div>
              </td>
            </tr>
            <tr> 
              <td valign="top" colspan="3" height="2"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> 
                <font color face="Verdana" size="2">Send us the following details and our 
sales team will get in touch with you as soon as possible.</font> </font></td>
            </tr>
            <tr> 
              <td valign="top" colspan="3" height="53"> 
       <form name="advertise" action="adprocess.asp" method="post" onsubmit="return validatenew()">
                  <table border="0" width="425" height="20">
                    <tr> 
                      <td width="212" height="21"><font face="Verdana" size="2">Company 
                        Name</font></td>
                      <td width="203" height="21"> 
                        <input type="text" name="cname">
                      </td>
                    </tr>
                    <tr> 
                      <td width="212" height="21"><font face="Verdana" size="2">Contact 
                        Person *</font></td>
                      <td width="203" height="21"> 
                        <input type="text" name="contact">
                      </td>
                    </tr>
                    <tr> 
                      <td width="212" height="21"><font face="Verdana" size="2">Telephone(s)</font></td>
                      <td width="203" height="21"> 
                        <input type="text" name="telephone">
                      </td>
                    </tr>
                    <tr> 
                      <td width="212" height="21"><font face="Verdana" size="2">Fax(s)</font></td>
                      <td width="203" height="21"> 
                        <input type="text" name="fax">
                      </td>
                    </tr>
                    <tr> 
                      <td width="212" height="21"> 
                        <p><font face="Verdana" size="2">Email *</font></p> 
                      </td>
                      <td width="203" height="21"> 
                        <input type="text" name="email">
                      </td>
                    </tr>
                    <tr> 
                      <td width="212" height="21"><font face="Verdana" size="2">URL 
                        </font></td>
                      <td width="203" height="21"> 
                        <input type="text" name="url">
                      </td>
                    </tr>
                    <tr> 
                      <td width="212" height="21" valign="top"><font face="Verdana" size="2">Enquiry * 
                        </font></td>
                      <td width="203" height="21" valign="top"><font face="Verdana" size="2"><textarea name="enquiry" rows="6"></textarea>
                        </font></td>
                    </tr>
                    <tr align="middle"> 
                      <td height="21" colspan="2"> 
                        <input type="submit" value="Send these details" name="submit">
                        <input type="reset" value="Reset this form" name="reset">
                      </td>
                    </tr>
                  </table>
                </form>
              </td></tr>
          </table>

    </td>
        <td width="100" height="280" align="middle"></td>
  </tr>
  <tr>
        <td height="21" colspan="3" align="middle"> 
      <form action="../find1.asp" method="post" id="form1" name="form1" onsubmit="return check_search();"><p><b>For tips on anything, type your&nbsp; key word here...  </b><input name="q">and <input align="bottom" alt="Go" class="formButton" name="Submit1" src="../images/go.gif" type="image" value="startsearch" border="0" WIDTH="32" HEIGHT="17"></p></form>
        </td>
  </tr>
  <tr>
        <td height="18" colspan="3" align="middle"><font face="Verdana" size="1"> 
          <a href="../index.asp" onMouseOver="window.status='Home';return true" onMouseOut="window.status='';return true">Home</a>  | <a href="about.asp" onMouseOver="window.status='About us';return true" onMouseOut="window.status='';return true">About us</a>  | <a href="sugges.asp" onMouseOver="window.status='Suggestions';return true" onMouseOut="window.status='';return true">Suggestions</a>  | <a href="advertise.asp" onMouseOver="window.status='Advertise with us ';return true" onMouseOut="window.status='';return true">Advertise with us</a>  | <a href="contact.asp" onMouseOver="window.status='Contact us';return true" onMouseOut="window.status='';return true">Contact us</a>  | <a href="privacy.asp" onMouseOver="window.status='Privacy Policy';return true" onMouseOut="window.status='';return true">Privacy policy</a></font></td>
  </tr>
  <tr>
        <td height="18" colspan="3" align="middle"><font face="verdana" size="1">
        | <a href="javascript:newwin1('tipoftheday.asp')" onMouseOver="window.status='Tip of the day';return true" onMouseOut="window.status='';return true">Tip of the day</a> |
   <a href="javascript:newwin('sendatip.asp',0,0)" onMouseOver="window.status='Send a Tip';return true" onMouseOut="window.status='';return true">Send a tip</a> |
   <a href="javascript:newwin('subscribe.asp',0,0)" onMouseOver="window.status='Subscribe';return true" onMouseOut="window.status='';return true">Subscribe</a> |
   <a href="javascript:newwin('askaquery.asp',0,0)" onMouseOver="window.status='Ask a query';return true" onMouseOut="window.status='';return true">Ask a query</a> |
   <a href="javascript:newwin1('contributor.asp')" onMouseOver="window.status='Contributor';return true" onMouseOut="window.status='';return true">Top contributor</a> |
   <br>©All rights reserved. </font></td>
  </tr>
</table>

</body>
</html>
