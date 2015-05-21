<!DOCTYPE HTML PUBLIC "-//W3C//DTD W3 HTML//EN">
<html>
<head>

<meta content="text/html; charset=unicode" http-equiv="Content-Type">
<%@ Language=VBScript %>

<%

'GETTING ALL OF THE FORM VARIABLES SENT INTO TEMPORARY VARIABLES
dim currdate	
currdate=year(date())&"-"&month(date())&"-"&day(date()) 	'ASSIGNING THE CURRENT DATE AND TIME

name=Request.Form("name")
email=Request.Form("email")
choosen_section=Request.Form("tip_section_options")
user_section=Request.Form("other_section")
tip=replace(Request.Form("tip_body"),"'","''")
'************************************************************************************

'ASSIGNING TO VARIABLE NAMED section THE NAME OF THE TIP SECTION SENT
if choosen_section="0" then
section=user_section
else
section=choosen_section
end if
'************************************************************************************



'FINDING OUT WHETHER THE SENT SECTION IS ONE OF OURS OR THE USER HAS SENT HIS/HER OWN
sql="select tips_section_id from tips_section where tips_section_name='" &section& "'"
set rs=server.CreateObject("Adodb.recordset")
rs.Open sql,session("gharelu_conn")

while not rs.EOF	
	section_id=rs.fields("tips_section_id")
	rs.movenext	'GETTING THE SECTION ID INTO THE LOCAL VARIABLE section_id
wend
if section_id="" then	'USER HAS ENTERED HIS/HER OWN SECTION NAME.....
	section_id="gtsid0"		'ASSIGN THE other SECTION NAME'S ID TO THE section_id VARIABLE
end if

'************************************************************************************

'SEARCHING FOR REJECTED TIPS
sql1="select * from tips_table where tips_status=1"
set rs1=server.CreateObject("adodb.recordset")
rs1.Open sql1,session("gharelu_conn")
Response.Write("<HTML><HEAD><title>Thank you</title></HEAD>")
Response.Write("<BODY bgcolor='#fffecb'><br><br><br>")
if rs1.BOF then		'NO REJECTED TIPS....THEN INSERT INTO THE DATABASE
	sql1="INSERT INTO tips_table ( tips_status, tips_table_date, tips_table_section_id, tips_table_section_name, tips_table_sender_name, tips_table_sender_email, tips_table_body )"
	sql2="VALUES (0,'" &currdate& "','" &section_id& "','" &section& "','" &name& "','" &email& "','" &tip& "')"
	sql1=sql1+sql2
	
	set rs2=server.CreateObject("adodb.recordset")
	rs2.Open sql1, session("gharelu_conn")
	Response.Write("<center><font face=verdana size=2>Dear <b>"& name &" </b>, thank you for your tip. It will be considered ASAP by our editors. If found suitable it will be added to our site.</font></center>")
else				'REJECTED TIPS THERE....THEN UPDATE THE FIRST ROW OF THE RECORDSET
	rs1.movefirst
	temp=rs1.fields("tips_table_serial")
	sql3="UPDATE tips_table SET tips_status=0,tips_table_date='" &currdate& "',tips_table_section_id='" &section_id& "',tips_table_section_name='" &section& "',tips_table_sender_name='" &name& "',tips_table_sender_email='" &email& "', tips_table_body='" &tip& "' WHERE tips_table_serial=" &temp
	set rs3=server.CreateObject("adodb.recordset")
	rs3.Open sql3, session("gharelu_conn")
	Response.Write("<center><font face=verdana size=2>Dear <b>"& name &" </b>, thank you for your tip. It will be considered ASAP by our editors. If found suitable it will be added to our site.</font></center>")
end if
'************************************************************************************

%><body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<center><font face="verdana" size="1">
	Would 
you like to send another tip?<br>
	<a href="sendatip.asp">Yes</a> I would like to send another tip.<br>
	<a href="javascript: window.close();">No</a> thank 
you. 
</font></center>

</body>
</html>
