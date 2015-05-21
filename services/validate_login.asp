<%@ Language=VBScript %>
<%
	if Request.Form("username")="srushti" and Request.Form("password")="tech25" then
		Session("enable_browsing_flag")="True"
		Response.Redirect("../index.asp")
	elseif Request.Form("username")="guest" and Request.Form("password")="srgu2000" then
		Session("enable_browsing_flag")="True"
		Response.Redirect("../index.asp")
		Response.Redirect("login.asp?status=failed_login")
	else
		Response.Redirect("login.asp?status=failed_login")
	end if	
%>
