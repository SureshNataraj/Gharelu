<%@ Language=VBScript %>
<%
	
	set con=server.createobject("adodb.connection")
	email_from="info@indianimportsandexports.com"
	email_to=request("email")
	email_body="Hi,"&vbNewLine&"We at Micronova Intrade Solutions would like to thank you for having shown interest in our site."&vbNewLine&vbNewLine&"We envisage http://www.indianimportsandexports.com to be a pioneering business portal for all associated with imports and exports."&vbNewLine&vbNewLine&"The site at present is under construction."&vbNewLine&"Our services would be activated within a short span of time backed by the strong technical support of Srushti Technologies (http://www.srushtitech.com)."&vbNewLine&vbNewLine&"With regards,"&vbNewLine&vbNewLine&"The Team at Micronova Intrade Solutions"

	set obj_mail=server.CreateObject("CDONTS.NewMail")
	obj_mail.To=email_to
	obj_mail.From=email_from
	obj_mail.Subject="Thank you"
	obj_mail.Body=email_body
	obj_mail.Send

	set obj_mail=nothing
	
	con.open "gharelutips"
	con.execute "insert into iie set email='"&request("email")&"'"
	set con=nothing
	response.redirect "bo2.htm"	
%>

