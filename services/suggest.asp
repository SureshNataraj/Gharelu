<%@ Language=VBScript %>
<%
doc=Request.ServerVariables("HTTP_REFERER")
email=Request.Form("email")
name=Request.Form("name")
sugg=Request.Form("suggestion")
query1=sugg 
set obj_mail=server.CreateObject("CDONTS.NewMail")
obj_mail.To="info@gharelutips.com"
obj_mail.From=email
obj_mail.Subject="User's suggestion form Gharelutips"
obj_mail.Body="Sender's name="&name&" : Sender's email address=" &email&" : Suggestion="&query1
obj_mail.Send
set obj_mail=nothing
int_pos=instr(doc,"?")
if int_pos="0" then
	response.redirect(doc&"?status=recieved_suggestion" )
else 
	doc1=mid(doc,1,int_pos-1)
	Response.Redirect(doc1&"?status=recieved_suggestion")
end if

%>

