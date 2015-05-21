<%
if Session("enable_browsing_flag")="False" then 
	Response.Redirect("services/login.asp")
end if
%>
