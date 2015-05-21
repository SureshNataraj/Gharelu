<%@ language="vbscript" %>
<%
if Session("enable_browsing_flag")="False" then 
	Response.Redirect("login.asp")
end if
%>
<html>

<head>
<meta NAME="GENERATOR" Content="Microsoft FrontPage 3.0">
<title>Gharelutips - Send a tip</title>
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
function validate_fields()
{
	var name=document.send_a_tip_form.name.value;
	var email=document.send_a_tip_form.email.value;
	var choosen_tip=document.send_a_tip_form.tip_section_options.selectedIndex
	var tip=document.send_a_tip_form.tip_body.value;
	if(name=="" && email=="")
	{
		alert("The fields marked * are necessary.\nKindly enter values into these.");
		document.send_a_tip_form.name.focus();		
		return false;
	}
	if(name=="")
	{
		alert("Kindly enter your name.");
		document.send_a_tip_form.name.focus();
		return false;
	}	
	else
	{
		if(!isAlphabet(name))
		{
			alert("Kindly enter a valid name.")
			document.send_a_tip_form.name.focus();
			return false;
		}
	}
	
	if(email=="")
	{	
		alert("Kindly enter your email address.");
		document.send_a_tip_form.email.focus();
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
				document.send_a_tip_form.email.focus();
				return false;
			}
		}
		else
		{
			alert("Kindly enter a valid email address.")
			document.send_a_tip_form.email.focus();
			return false;
		}
	}
	if(choosen_tip=="0" && document.send_a_tip_form.other_section.value=="")
	{
		alert("You must either choose one of our tip sections or provide your own.")
		return false;
	}
	if(choosen_tip!="0" && document.send_a_tip_form.other_section.value!="")
	{
		alert("You have to select one of our tip sections OR type one of your own NOT both.\nKindly select ONLY one section")
		return false;
		
	}
	if(document.send_a_tip_form.tip_body.value=="")
	{
		alert("Kindly enter your tip.")
		document.send_a_tip_form.tip_body.focus();
		return false;
	}
	/*else
		{
			var re=/'/
			document.send_a_tip_form.tip_body.value=tip.replace(re, "`");
			alert(document.send_a_tip_form.tip_body.value);
			
		}*/
		
	return true;
}//END OF validate_fields() FUNCTION


//-->
</script>
</head>

<body bgcolor="#FFFECB" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onload="javascript:document.send_a_tip_form.name.focus();">

<form NAME="send_a_tip_form" METHOD="post" ACTION="confirm_tip.asp" ONSUBMIT="return validate_fields()">
  <table border="0" cellPadding="1" cellSpacing="1" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><font face="verdana" size="2"><p><strong>Send
      a tip</strong></font></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">Name</font></td>
      <td><input name="name" size="20"></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">Email</font></td>
      <td><input name="email" size="20"></td>
    </tr>
    <tr>
      <td><font face="verdana" size="2">Choose a tip section:</font></td>
      <td><font face="verdana" size="2">Type your own tip section:</font> </td>
    </tr>
    <tr>
      <td><select name="tip_section_options" style="font-family:verdana;font=size:2;HEIGHT: 22px; WIDTH: 139px" size="1">
        <option VALUE="0" SELECTED>Select a section</option>
        <option VALUE="Health">Health</option>
        <option VALUE="Kitchen">Kitchen</option>
        <option VALUE="Housekeeping">Housekeeping</option>
        <option VALUE="Garden">Garden</option>
        <option VALUE="Pests">Pests</option>
        <option VALUE="Personal">Personal</option>
        <option VALUE="Computers">Computers</option>
        <option VALUE="Pets">Pets</option>
      </select></td>
      <td><input type="text" NAME="other_section" size="20"></td>
    </tr>
  </table>
  <font face="verdana" size="2"><p>Type your tip in the text box provided below:</font><br>
  <textarea name="tip_body" style="HEIGHT: 96px; WIDTH: 309px" rows="5" cols="45" wrap="hard"></textarea> <br>
  <input name="submit1" type="submit" value="Submit"> <input name="reset1" type="reset" value="Reset"> </p>
</form>
</body>
</html>
