<%@ language="vbscript" %>
<%
if Session("enable_browsing_flag")="False" then 
	Response.Redirect("login.asp")
end if
%>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
<script language="javascript">
function set_timer()
{
	time=setTimeout("window.close()",7000);
}

</script>
</HEAD>
<BODY bgcolor=#fffecb onload=set_timer()>
<P><b>Thank you</b><br>
we will get back to you as soon as possible</P>
<P>&nbsp;</P>
<P><STRONG>(This window will close in 5 
seconds)</STRONG></P>
</BODY>
</HTML>
