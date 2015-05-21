<%@ LANGUAGE="VBSCRIPT" %>
<!-- #include file="includes/functions.asp" -->
<!-- #include file="header.asp" -->
<html>
<head>
<meta name="description" content="The best  site for household tips including tips on health, kitchen, house keeping , gardening, beauty and much more.">
<meta name="keywords" content="tips, household, householdtips, health tips, beauty tips, acne, pimples,black heads, health"><script language="javascript" src="includes/chk.js"> </script>

<link rel="stylesheet" href="includes/sty.css" type="text/css">
<script language="javascript" src="includes/chk.js"> </script>


<title>Gharelutips - Your search ends here...</title>

</head>

<body bgcolor="#fffecb" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onLoad="init();" text="#5e4d1f" link="#5e4d1f" vlink="#5e4d1f" alink="#5e4d1f">
<form ACTION METHOD="POST" NAME="frmData">
<input TYPE="hidden" NAME="PageNo" VALUE="1">
</form>
<div id="testmenu" class="menu"></div>
<script language="javascript">
 var _version = 'Pre 1.2'; 
</script>
<script language="javascript1.2">
 var _version = '1.2'; 
</script>
<script language="javascript" src="includes/browdet.js"> </script>
<script language="javascript" src="includes/main_menu.js"> </script>
<!-- #include file="menu.asp" -->
</td>

<td width="100" height="280" align="middle"></td>
		</tr>
  <tr>
        <td height="21" colspan="3" align="middle"> 
          <br><br><br><br><form action="find1.asp" method="post" id="form1" name="form1" onsubmit="return check_search();"><p><b>For tips on anything, type your&nbsp; key word here...  </b><input name="q" value="<%=request("q")%>">and <input align="bottom" alt="Go" class="formButton" name="Submit1" src="images/go.gif" type="image" value="startsearch" border="0" WIDTH="32" HEIGHT="17"></p></form>
        </td>
  </tr>
  <tr>
        <td height="18" colspan="3" align="middle"><font face="Verdana" size="1"> 
          <a href="index.asp" onMouseOver="window.status='Home';return true" onMouseOut="window.status='';return true">Home</a> | <a href="services/about.asp" onMouseOver="window.status='About us';return true" onMouseOut="window.status='';return true">About us</a> | <a href="services/sugges.asp" onMouseOver="window.status='Suggestions';return true" onMouseOut="window.status='';return true">Suggestions</a> | <a href="services/advertise.asp" onMouseOver="window.status='Advertise with us ';return true" onMouseOut="window.status='';return true">Advertise with us</a> | <a href="services/contact.asp" onMouseOver="window.status='Contact us';return true" onMouseOut="window.status='';return true">Contact us</a> | <a href="services/privacy.asp" onMouseOver="window.status='Privacy Policy';return true" onMouseOut="window.status='';return true">Privacy policy</a></font></td>
  </tr>
  <tr>
        <td height="18" colspan="3" align="middle"><font face="verdana" size="1">
        | <a href="javascript:newwin1('services/tipoftheday.asp')" onMouseOver="window.status='Tip of the day';return true" onMouseOut="window.status='';return true">Tip of the day</a> |
   <a href="javascript:newwin('services/sendatip.asp',0,0)" onMouseOver="window.status='Send a Tip';return true" onMouseOut="window.status='';return true">Send a tip</a> |
   <a href="javascript:newwin('services/subscribe.asp',0,0)" onMouseOver="window.status='Subscribe';return true" onMouseOut="window.status='';return true">Subscribe</a> |
   <a href="javascript:newwin('services/askaquery.asp',0,0)" onMouseOver="window.status='Ask a query';return true" onMouseOut="window.status='';return true">Ask a query</a> |
   <a href="javascript:newwin1('services/contributor.asp')" onMouseOver="window.status='Contributor';return true" onMouseOut="window.status='';return true">Top contributor</a> |
   <br>©All 
            rights reserved. </font></td>
  </tr>
     </table>
     <%
Dim objRS							' Our Recordset Object
Dim strSQL						  ' Our SQL String to access the database
Dim strConnection			 ' Our Connection string to access the database
Dim i								' a counter variable
Dim j								' a counter variable
Dim lngPage						' page counter
dim count
dim tmp
dim search_str
dim s1
dim s2

q=LCase(request("q"))
response.write(q)
' -- Create objects
set con=server.CreateObject("Adodb.connection")

Set objRS = Server.CreateObject("ADODB.Recordset")
objRS.CursorLocation = 3
' -- Connection String Value
con.Open "gharelutips"

' -- Our SQL Statement
strSQL = "select TIPS_SECTION_ID from tips where tips_body like '%"& q &"%'"
response.write strSql
response.flush
'sql_encode(q,1)


' -- Populate our Recordset with data
objRS.Open strSQL,con
Set objRS.ActiveConnection = Nothing
con.Close

if (objRS.BOF and objRS.EOF) then
	tmp="<div id=""no_search"" style=""position:absolute; left:300px; top:200px; visibility:visible;"">"
	tmp=tmp & "<FONT FACE=""verdana"" SIZE=""2"">No matches found for '"&q&"' </FONT> </div>"
	response.write tmp
	response.end
End if
%>
<%
	count=0
	while not objRS.EOF
		count=count+1
		objRS.Movenext
	wend
	
%>
<%
	objRS.movefirst
	lngPage = 0
	j = 5				
	
	Do While Not objRS.EOF
		If j > 4 Then
			' -- Output a new table for this page
			' -- Was there a previous page
			if lngPage > 0 Then
				' -- complete the previous page
				WriteTableBottom
			End if
			lngPage = lngPage + 1
			j = 0
			' -----------------------------------------
			' -- Call routine to write table top with page number
			' -----------------------------------------
			WriteTableTop lngPage
		End if
        j = j+1
		' -- output the contents
		
		id=objRS.Fields("tips_section_id")
		%>
		<!-- #include file="id_to_section.asp" -->
		<%
		Response.Write "<TR>"
		Response.Write "<TD align=""left""><FONT FACE=""verdana"" SIZE=""1""> <a href=""find2.asp?c="&count&"&q="&q&"&id="&objRS.Fields("tips_section_id")&""">" &str& objRS.Fields("tips_section_name") & "</a></FONT></TD>"
		Response.write "</TR>"
		' -- move to the next record
		objRS.MoveNext
	Loop
	if lngPage > 0 Then
		' -- complete the previous page
		WriteTableBottom
	End if

	objRS.Close
	set objRS = Nothing
	
 %>

<script LANGUAGE="JavaScript" TYPE="text/javascript">
<!--
function ShowFirstPage() {
	ShowPage(1);
}
function ShowPrevPage() {
	var v = document.frmData.PageNo.value;
	if(v>1)
		ShowPage(--v);
	else
		ShowPage(1);
		
}
function ShowNextPage() {
	var v = document.frmData.PageNo.value;
	if(v<<%= lngPage %>)
		ShowPage(++v);
	else
		ShowPage(<%= lngPage %>);
}
function ShowLastPage() {
	ShowPage(<%= lngPage %>);
}
function ShowPage(p) {
	var oldp = document.frmData.PageNo.value;
	if(document.all) {
		document.all['pg'+oldp].style.visibility = 'hidden';
		document.all['pg'+p].style.visibility = 'visible';
	}
	if(document.layers) {
		document.layers['pg'+oldp].visibility = 'hide';
		document.layers['pg'+p].visibility = 'show';
	}
	
	document.frmData.PageNo.value = p;
}

	
document.frmData.PageNo.value = 1;
	
//-->
</script>


<%
Sub WriteTableTop(byval iPage)
	
	Dim strBuff
	' -- first, write the DIV containier with a suitable ID value
	strBuff = "<DIV ID=""pg" & iPage & """ STYLE=""position:absolute; left:260px; top:100px; visibility:"
	' -- All pages other than the first one are invisible
	if iPage > 1 Then
		strBuff = strBuff & "hidden;"
	else
		strBuff = strBuff & "visible;"
	end if
	strBuff = strBuff & """>" 
	
	' -- Then the Table inside the DIV
	strBuff = strBuff & "<TABLE BORDER=""0"" CELLPADDING=""0"" CELLSPACING=""5"" WIDTH=""389"" align=""center"">"
	strBuff= strBuff& "<p align=left><b><u><FONT FACE=""verdana"" SIZE=""2"">Found "&count&" tips in "&objRS.RecordCount&" sections matching '"&q&"'</u></b></font></p>"	
	
	' -- Finally write out the data
	Response.Write strBuff
End Sub
'----------------------------------------------------------------------
' Sub WriteTableBottom: Writes the bottom DIV and TABLE code
'----------------------------------------------------------------------
Sub WriteTableBottom()
	
	Dim strBuff
	' -- Close the Table
	
	Response.Write "</table>"
	if objRS.recordcount>5 then

		Response.Write "<div style=""position:absolute; left:100px; top:100; visibility:visible"">"
		Response.Write "<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=45>"
		Response.Write "<tr>"
		if lngPage>=2 then
			Response.Write "<td><div align=left><a href=# onclick=ShowPrevPage()>Previous</a></div>"
		end if
		if not lngPage >= (objRs.recordcount/5) then
			Response.Write "<td><div align=right><a href=# onclick=ShowNextPage()>Next</a></div>"
		end if
		Response.Write "</tr></table></div>"
	end if
	Response.Write "</div>"
	
End Sub
%>

</body>
</html>
	