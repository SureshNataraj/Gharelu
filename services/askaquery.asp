<html>
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 3.0">
<title>Ask a query</title>
<meta name="GENERATOR" content="Microsoft Visual Studio 6.0">
<script language="javascript">
<!--
function validate_fields()
{
	var name=document.send_a_tip_form.name.value;
	var email=document.send_a_tip_form.email.value;
	
	if(name=="" && email=="")
	{
		alert("The fields marked * are necessary./nKindly enter values into these.");
		document.send_a_tip_form.name.focus();		
		return false;
	}
	if(name=="")
	{
		alert("You have not entered your name!!!/nKindly enter your name.");
		document.send_a_tip_form.name.focus();
		return false;
	}	
	
	if(email=="")
	{	
		alert("You have not entered your email address./nKindly enter your email address.");
		document.send_a_tip_form.email.focus();
		return false;
	}

	if(email!="")
	{
		if(email.indexOf('@',0)==-1||email.indexOf('.',0)==-1)
		{
 			alert("Invalid Email ID/nKindly enter again.");
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
		alert("You have to select one of our tip sections OR type one of your own NOT both./nKindly select ONLY one section")
		return false;
		
	}
	if(document.send_a_tip_form.tip_body.value=="")
	{
		alert("You have not porvided us with your tip./nKindly enter your tip in the text area provided at the very end of this window.")
		document.send_a_tip_form.tip_body.focus();
		return false;
	}
	return true;
}//END OF validate_fields() FUNCTION


//-->
</script>

<meta name="GENERATOR" content="Microsoft FrontPage 3.0">
<script language="javascript">
function validate_fields()
{
	var name=document.askquery.name.value;
	var email=document.askquery.email.value;
	var query=document.askquery.query.value;
		
	if(name=="")
	{
		alert("You have not entered your name!!!/nKindly enter your name.");
		document.askquery.name.focus();
		return false;
	}	
	
	if(email=="")
	{	
		alert("You have not entered your email address./nKindly enter your email address.");
		document.askquery.email.focus();
		return false;
	}

	if(email!="")
	{
		if(email.indexOf('@',0)==-1||email.indexOf('.',0)==-1)
		{
 			alert("Invalid Email ID/nKindly enter again.");
 			document.askquery.email.focus();
 			return false;
		}
	}
	if(query=="")
	{
		alert("You have not entered your query./nKindly enter your query in the text box provided.")
		document.askquery.query.focus();
		return false;
		
	}

	return true;
}//END OF validate_fields() FUNCTION
</script>
</head>

<body bgcolor="#FFFECB" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onLoad="javascript:document.askquery.name.focus();" text="#5E4D1F" link="#5E4D1F" vlink="#5E4D1F" alink="#5E4D1F">
<div align="center"><center>
<form name="askquery" action="askprocess.asp" method="post" onsubmit="return validate_fields()">
  <table border="0" cellpadding="0" cellspacing="0" width="37%" height="49%" align="center">
    <tr>
      <td width="546" colspan="2" align="center"><font face="verdana" size="2"><p><strong>Ask
      A query</strong></font></td>
    </tr>
    <tr align="center">
      <td width="280">*<font face="verdana" size="2">Name</font></td>
      <td width="266"><input name="name" size="20"> </td>
    </tr>
    <tr align="center">
      <td width="280" height="2">*<font face="verdana" size="2">Email</font></td>
      <td width="266" height="2"><input name="email" size="20"> </td>
    </tr>
    <tr align="center">
      <td colspan="2" height="2"><font face="verdana" size="2"><p>Type
      your query in the text area below: </font></td>
    </tr>
    <tr align="center">
      <td colspan="2"><p><textarea name="query" rows="5" cols="45" style="font-family:verdana;font-size:10" wrap="hard"></textarea> </td>
    </tr>
    <tr align="center">
      <td colspan="2"><p><input name="submit1" type="submit" value="Submit"> <input name="reset1" type="reset" value="Reset"> </td>
    </tr>
  </table>
</form>
</center></div>
</body>
</html>
