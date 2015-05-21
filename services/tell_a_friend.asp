<%@ Language=VBScript %>
<html>
<head>
<script language="javascript">
<!--

function validate_fields()
{
	var to=document.tell.to.value;
	var from=document.tell.from.value;
	var msg=document.tell.msg.value;
	
if(from=="")
	{
		alert("Kindly enter your email address");
		document.tell.from.focus();		
		return false;
	}
if(from!="")
	{
		
		var reg=/@./;
		if(reg.test(from)==true)
		{
			var temp=from.slice(0,from.indexOf('@'));
			var temp1=from.slice(from.indexOf('@')+1,from.indexOf('.'));
			var temp2=from.slice(from.indexOf('.')+1);
			
			if(temp.length < 1 || temp1.length <1 || temp2.length <2)
			{
				
				alert("Kindly enter a valid email address.");
				document.tell.from.focus();
				return false;
			}
		}
		else
		{
			
			alert("Kindly enter a valid email address.")
			document.tell.from.focus();
			return false;
		}
	}

	if(to=="")
	{
		alert("Kindly enter the email address of you friend/s.");
		document.tell.to.focus();		
		return false;
	}
	else
	{
		var reg=/@./;
		if(reg.test(to)==true)
		{
			var temp=to.slice(0,to.indexOf('@'));
			var temp1=to.slice(to.indexOf('@')+1,to.indexOf('.'));
			var temp2=to.slice(to.indexOf('.')+1);
			
			if(temp.length < 1 || temp1.length <1 || temp2.length <2)
			{
				alert("Kindly enter a valid email address.");
				document.tell.to.focus();
				return false;
			}
		}
		else
		{
			alert("Kindly enter a valid email address.")
			document.tell.to.focus();
			return false;
		}
	}
	

	if(msg=="")
	{
		alert("Kindly enter your message.")
		document.tell.msg.focus();
		return false;
	}
	
		
	return true;
}//END OF validate_fields() FUNCTION


//-->
</script>
<title>Gharelutips - Tell a friend</title>
<meta NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</head>
<body bgcolor="#FFFECB" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onload="javascript: document.tell.to.focus();">
<form NAME="tell" METHOD="post" ACTION="tell_friend.asp" ONSUBMIT="return validate_fields()">
  <table border="0" cellPadding="1" cellSpacing="1" width="100%" align="center">
    <tr> 
      <td colspan="2" align="center"><font face="verdana" size="2">
        <p><strong>Tell a friend</strong> 
        </font></td>
    </tr>
    <tr> 
      <td>*<font face="verdana" size="2">Friend's email address</font></td>
      <td>
        <input name="to" size="30">
      </td>
    </tr>
    <tr> 
      <td>*<font face="verdana" size="2">Your email address</font></td>
      <td>
        <input name="from" size="30">
      </td>
    </tr>
  </table>
  <font face="verdana" size="2">
  <p>Type your message in the box provided below:</font><br>
  <textarea name="msg" style="HEIGHT: 96px; WIDTH: 309px" rows="5" cols="45" wrap="hard">Hi, Check this site out-www.gharelutips.com. Its got the most relevant tips on almost anything.</textarea> <br>
  <input name="submit1" type="submit" value="Submit"> <input name="reset1" type="reset" value="Reset"> </p>
  
</form>
<p>&nbsp;</p>

</body>
</html>
