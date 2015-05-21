<%@ Language=VBScript %>
<%
email_from=Request.Form("email")
email_to="queries@gharelutips.com"
name=Request.Form("name")
query=Request.Form("query")

set obj_mail=server.CreateObject("CDONTS.NewMail")
obj_mail.To=email_to
obj_mail.From=email_from
obj_mail.Subject="Query from Gharelutips"
obj_mail.Body="Sender's name="&name&" : Sender's email address="&email_from&" : Sender's query="&query
obj_mail.Send

set obj_mail=nothing
%>
<html>
<script language="javascript">
function set_timer()
{
	time=setTimeout("window.close()",5000);
}
</script>
<body bgcolor="#FFFECB">
<br><br><br>
<%Response.Write ("<center><font face=verdana size=2>Thank you <b>"&name&" </b><br> We will get back to you as soon as possible.</font>")%>
<br><br><br><br><br><br><br><br>
<font face=verdana size=1>(This window will close in 5 seconds)
<script language="javascript">
set_timer()
</script>
</font>
</center>
</body>
</html>

