<%@ Language=VBScript %>
<%
	set con=server.createobject("adodb.connection")
	set rs=server.CreateObject("adodb.recordset")
	con.open "gharelu"
	sql="select * from admin"
	
	rs.Open sql,con
	uname=rs.Fields("username")
	pwd=rs.Fields("password")
	if Request.Form("username")=uname and Request.Form("password")=pwd then
		Session("enable_database_admin_flag")="True"
		Response.Redirect("index.asp")
	else
		Response.Redirect("login.asp?status=failed_login")
	end if
%>
