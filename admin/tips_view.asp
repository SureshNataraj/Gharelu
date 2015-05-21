<%@ language="vbscript"%>

<html>
<head>
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
  <%'FUNCTION THAT DISPLAYS ALL THE RECORDSETS IN THE DATABASE
sub disp_all_records
counter=0
Response.Write("<center> <h2>Tips sent by users</h2></center>")
Response.Write("<table border='0' width='100%' align='center'>")
Response.Write("<tr bgcolor='#FFCACA'>")
Response.Write("<td align='center'>")
Response.Write("<B>Delete?</B></td>")
Response.Write("<td  align='center'>")
Response.Write("<B>Tip date</B></td>")
Response.Write("<td  align='center'>")
Response.Write("<B>Tip section</B></td>")
Response.Write("<td >")
Response.Write("<P align=center><B>Tip</B></P>")
Response.Write("<td >")
Response.Write("<P align=center><b>Sender's name</b> </P>")
Response.Write("<td >")
Response.Write("<P align=center><b> Sender's email</b> </P>")
Response.Write "<form name='tips' method='post' action='tips_delete.asp'>"
while not rs.EOF
	if rs.Fields("tips_status")=false then
	Response.Write("<tr bgcolor=lightblue>")
	Response.Write "<td   align='center'> <input type='checkbox' name='check"&counter+1&"' value='"&rs.Fields("tips_table_serial")&"'>" 
	Response.Write("<td   align='center'>"& rs.Fields("tips_table_date"))
	Response.Write("<td   align='center'>"& rs.Fields("tips_table_section_name"))
	Response.Write("<td  align='center'>"& rs.Fields("tips_table_body"))
	Response.Write("<td  align='center'>"& rs.Fields("tips_table_sender_name"))
	Response.Write("<td  align='center'>"& rs.Fields("tips_table_sender_email"))
	counter=counter+1
	end if
rs.MoveNext
WEND
Response.Write("</tr>")
Response.Write "<input type='submit' value='Delete tips'>"
Response.Write "</form>"
Response.Write("</table>")
Response.Write("Total records are/is: <b>" &counter& " </b>.<br>")
Response.Write("<HR  id=HR1 width='75%'>")

end sub
'*******************************************************

sql_statement="select * from tips_table where tips_status=0"
set rs=server.CreateObject("adodb.recordset")
rs.Open sql_statement,session("gharelu_conn")
if rs.BOF then 
	Response.Write("<html><head><title>Gharelu Tips-->Search Results</title></head><body face='verdana'  bgcolor=#c4d2c1>")
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

%>  
</center>
</body>
</html>
