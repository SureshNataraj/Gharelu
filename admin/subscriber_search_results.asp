<%@ Language=VBScript %>
<%
'GETTING THE FORM FIELDS INTO VARIABLES DECLARED BELOW...
flag=Request.Form("flag")
sex=Request.Form("sex")

dim arr
set arr=createObject("Scripting.Dictionary")
arr.Add "name",Request.Form("name")
arr.Add "age",Request.Form("age")
arr.Add "city",Request.Form("city")
arr.Add "country",Request.Form("country")
arr.Add "email",Request.Form("email")
b= arr.Items
Response.Write(b(1))
'********************************************************

'CONNECTING TO THE DATABASE...........
 'set con=server.CreateObject("adodb.connection")
 'con.Open "DATABASE=gharelu;DSN=gharelu;UID=sa;password=;"
'************************************************************
%>
<%
'FUNCTION THAT DISPLAYS ALL THE RECORDSETS IN THE DATABASE
sub disp_all_records
counter=0
Response.Write("<html><head><title>Gharelu Tips-->Search Results</title></head><body face='arial'  bgcolor=#c4d2c1>")
Response.Write("<center><H2>Search Results</h2></center>")
Response.Write("<HR  id=HR1 width='75%'><br>")
Response.Write("<table border='0' width='100%'>")
Response.Write("<tr bgcolor=lightblue>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><B>Name</B> </P> ")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><B>Age</B> </P> ")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>Sex</b> </P>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>Address1</b> </P>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>Address2</b> </P>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>City</b> </P>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>Zip</b> </P>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>Country</b> </P>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>Phone</b> </P>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><b>Email</b> </P>")

while not rs.EOF
	Response.Write("<tr bgcolor=lightyellow>")
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_name"))
	
	if rs.fields("tip_subscribers_age")="1" then 
		Response.Write("<td width='9%' valign='middle'><18 years")
	end if
	if rs.fields("tip_subscribers_age")="2" then 
		Response.Write("<td width='9%' valign='middle'>18-24 years")
	end if
	if rs.fields("tip_subscribers_age")="3" then 
		Response.Write("<td width='9%' valign='middle'>25-40 years")
	end if
	if rs.fields("tip_subscribers_age")="4" then 
		Response.Write("<td width='9%' valign='middle'>41-54 years")
	end if
	if rs.fields("tip_subscribers_age")="5" then 
		Response.Write("<td width='9%' valign='middle'>>54 years")
	end if
	
	if rs.fields("tip_subscribers_sex")="m" then
		Response.Write("<td width='9%' valign='middle'>male")
	end if
	if rs.fields("tip_subscribers_sex")="f" then
		Response.Write("<td width='9%' valign='middle'>female")
	end if
	
	if rs.fields("tip_subscribers_address1")="" then
	Response.Write("<td width='9%' valign='middle'> n/a")
	else
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_address1"))
	end if
	if rs.fields("tip_subscribers_address2")="" then
	Response.Write("<td width='9%' valign='middle'> n/a")
	else 
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_address2"))
	end if
	
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_city"))
		
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_zip"))
		
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_country"))
	
	
	if rs.fields("tip_subscribers_phone")="" then
	Response.Write("<td width='9%' valign='middle'> n/a")
	else
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_phone"))
	end if
	
	Response.Write("<td width='9%' valign='middle'>"& rs.Fields("tip_subscribers_email"))
	
		
counter=counter+1
rs.MoveNext
WEND
Response.Write("</tr>")
Response.Write("</table>")
Response.Write("Total records matching your criteria are/is: <b>" &counter& " </b>.<br>")
Response.Write(" Click <a href='subscriber_search.asp'>here</a> to return back to the search engine.")
Response.Write("<HR  id=HR1 width='75%'>")
Response.Write("</body></html>")
end sub
'*******************************************************
%>
<%
'if sex="a" then
	'sql_statement="select * from tip_subscribers"
'end if

if sex="m" or sex="f" then
	
	sql_statement="select * from tip_subscribers where tip_subscribers_sex like '"&sex&"%' "
	
	for j=1 to len(flag)
		myvar=mid(flag,j,1)
		if j=1 and myvar="1" then
			sql_statement = sql_statement & "and " & "tip_subscribers_name like '"&b(0)&"%' "
		end if
		if j=2 and myvar="1" then
			sql_statement =sql_statement & "and " & "tip_subscribers_age like '"&b(1)&"' "		
		end if
		if j=3 and myvar="1" then
			sql_statement=sql_statement & "and " & "tip_subscribers_city like '"&b(2)&"%' "		
		end if
		if j=4 and myvar="1" then
			sql_statement=sql_statement & "and " & "tip_subscribers_country like '"&b(3)&"' "		
		end if
		if j=5 and myvar="1" then
			sql_statement=sql_statement & "and " & "tip_subscribers_email like '"&b(4)&"%' "		
		end if
	next 
end if

set rs=server.CreateObject("adodb.recordset")
rs.Open sql_statement,session("gharelu_conn"),3,3
if rs.BOF then 
	Response.Write("<html><head><title>Gharelu Tips-->Search Results</title></head><body face='arial'  bgcolor=#c4d2c1>")
	Response.Write("<center><H2>Search Results</h2></center>")
	Response.Write("<HR  id=HR1 width='75%'><br>")
	Response.Write("<center>Sorry the record requested for does not have an entry.<br>")
	Response.Write(" Click <a href='subscriber_search.asp'>here</a> to return back to the search engine.")
	Response.Write("<HR  id=HR1 width='75%'><br>")
	Response.Write("</center></body></html>")
else 
	disp_all_records
end if 

'**********************************************************************

'CLOSING THE DATABASE CONNECTION 
 'con.Close
 'set con=nothing
 '******************************
%>

