<%@ Language=VBScript %>
<html>
<head>
<title>Thank you</title>
</head>
<body bgcolor="#fffecb">
<%
'doc=Request.ServerVariables("HTTP_REFERER")
email_from=request("from")
email_to=request("to")
email_body=request("msg")



'email_to=replace(temp,",",":")	'DOING THIS REPLACEMENT SO THAT MULTIPLE email_to ID'S ENTERED BY THE USER ARE COMPATIBLE WITH THE FORMAT REQUIRED BY THE CDONTS OBJECT

set obj_mail=server.CreateObject("CDONTS.NewMail")
obj_mail.To=email_to
obj_mail.From=email_from
obj_mail.Subject="www.gharelutips.com"
obj_mail.Body=email_body
obj_mail.Send

set obj_mail=nothing

%>
<br><br><br><br>
<center><font face=verdana size=2>Your message has been sent to the following email addresses:-<br><br><b> <%=email_to%></b>.<br><br><br>Thank you for your invaluable service.</font></center>

<script language="javascript">
function set_timer()
{
	time=setTimeout("window.close()",5000);
}

</script>


<script language="javascript">
set_timer()
</script>
<br><br><br><br>
<center><font face=verdana size=1>(This window will close in the next 5 seconds)</font></center>
</body>
</html>