<%@ language="vbscript"%>
<html>
<head>
<%
if Session("enable_database_admin_flag")="False" then 
	Response.Redirect("login.asp")
end if
%>

<script language="javascript" src="scripts/chk.js"> </script>
<link rel="stylesheet" href="scripts/sty.css" type="text/css">
<title>GhareluTips - Database Administration - Tips</title>
</head>
<body bgcolor="#fffecb" onLoad="init();" text="#5e4d1f" link="#5e4d1f" vlink="#5e4d1f" alink="#5e4d1f">
<div id="testmenu" class="menu"></div>
<script language="javascript">
	var _version = 'Pre 1.2'; 
</script>
<script language="javascript1.2">
 var _version = '1.2'; 
</script>
<script language="javascript" src="scripts/browdet.js"> </script>
<script language="javascript1.2" src="scripts/menu.js"> </script>
<!-- THE MASTER TABLE STARTS HERE ---> 
<center>
<table align="center" border="1" cellpadding="0" cellspacing="0" height="1%" width="100%" bgcolor="ivory">
  <tr bordercolor="#FFFFFF" bgcolor="#FFCACA"> 
    <td width="142"> 
      <div align="center"><a href="#" onMouseOut="window.status='';return true;" onMouseOver="activateMenu(1,10);window.status='Health';return true;"> 
        <font face="Verdana" size="1">Account management</font></a> </div>
    </td>
    <td width="179"> 
      <div align="center"><a href="#" onMouseOut="window.status='';return true" onMouseOver="activateMenu(2,10);window.status='Kitchen';return true"> 
        <font face="Verdana" size="1">Subscriber management</font></a> </div>
    </td>
    <td width="144"> 
      <div align="center"><a href="#" onMouseOut="window.status='';return true" onMouseOver="activateMenu(3,10);window.status='Housekeeping';return true"> 
        <font face="Verdana" size="1"> Tips management</font></a> </div>
    </td>
    <td width="234"> 
      <div align="center"> <font face="Verdana" size="1"><a href="#" onMouseOut="window.status ='';return true" onMouseOver="activateMenu(4, 10);window.status='Garden';return true" > 
        Tips section&nbsp;management</a></font></div>
    </td>
  </tr>
    </table>
  <%
'FUNCTION THAT DISPLAYS ALL THE RECORDSETS IN THE DATABASE
sub disp_all_records
counter=0

Response.Write("<h2>Subscribers list</h2>")
Response.Write("<table border='0' width='100%'>")
Response.Write("<tr bgcolor='#FFCACA'>")
Response.Write("<td width='9%'>")
Response.Write("<P align=center><B>Delete?</B> </P> ")
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
Response.Write "<form name='subscribers' method='post' action='subscriber_delete.asp'>"
while not rs.EOF
	Response.Write("<tr bgcolor=lightblue>")
	Response.Write "<td   align='center'> <input type='checkbox' name='check"&counter+1&"' value='"&rs.Fields("tip_subscribers_serial")&"'>" 
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
Response.Write "<input type='submit' value='Delete subscribers'>"
Response.Write("</table>")
Response.Write("Total records are/is: <b>" &counter& " </b>.<br>")

Response.Write("<HR  id=HR1 width='75%'>")
end sub
'*******************************************************

sql_statement="select * from tip_subscribers where subscriber_status=1"

set rs=server.CreateObject("adodb.recordset")
rs.Open sql_statement,session("gharelu_conn")

if rs.BOF then 
	Response.Write("Sorry the record requested for does not have an entry.<br>")
	Response.Write("<HR  id=HR1 width='75%'><br>")

else 
	
	disp_all_records
end if 

'**********************************************************************

%>
</center>
</body>
</html>
