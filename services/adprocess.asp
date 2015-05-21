<%@ Language=VBScript %>
<%
doc=Request.ServerVariables("HTTP_REFERER")
email=Request.Form("email")
cname=Request.Form("cname")
query=Request.Form("enquiry")
contact=Request.Form ("contact")
telephone=Request.Form("telephone")
fax=Request.Form ("fax")
url=Request.Form ("url")

if cname="" then 
	cname="--- "
end if

if telephone="" then
	telephone="--- "
end if

if fax="" then 
	fax="--- "
end if

if url="" then
	url="--- "
end if

query1=" Company name = "&cname&": Contact person = "&contact&": Telephone Number = "&telephone&": Fax no. = "&fax&": Email id = "&email&": Url = "&url&":  "

set obj_mail=server.CreateObject("CDONTS.NewMail")

obj_mail.To="info@gharelutips.com"
obj_mail.From=email
obj_mail.Subject="Advertise with Gahrelutips"
obj_mail.Body="Sender's details:- "&query1&"Sender's enquiry="&query
obj_mail.Send

set obj1_mail=nothing

int_pos=instr(doc,"?")
if int_pos="0" then
	response.redirect(doc&"?status=recieved_ad_request" )
else 
	doc1=mid(doc,1,int_pos-1)
	Response.Redirect(doc1&"?status=recieved_ad_request")
end if

%>
