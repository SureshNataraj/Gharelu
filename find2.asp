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
Dim i, j, k, l							' a counter variable
Dim lngPage						' page counter
Dim text, tmp_txt
Dim serial
dim recordcount
dim exact_serials, and_serials
dim tmp, tmp1
dim exact_counter, and_counter
dim tips_serial(), tips_body()

q=request("q")
id=request("id")
text=split(q," ",-1,1)

' -- Create objects
set con=server.CreateObject("Adodb.connection")
Set objRS = Server.CreateObject("ADODB.Recordset")

' -- Connection String Value
con.Open "gharelutips"

' -- Our SQL Statement
strSQL = sql_encode(q,2)

' -- Populate our Recordset with data
objRS.Open strSQL,con

recordcount=0
while not objRS.EOF
	recordcount=recordcount+1
	objRS.MoveNext
wend

redim tips_serial(recordcount)
redim tips_body(recordcount)

objRS.Movefirst
for i=0 to recordcount-1
	tips_serial(i)=objRS.fields("tips_serial")
	tips_body(i)=objRS.fields("tips_body")
	objRS.movenext
next

exact_filter
and_filter

for i=0 to recordcount-1
	if tips_serial(i)<>"e" and tips_serial(i)<>"a" then tips_serial(i)="o"
next

if (objRS.BOF and objRS.EOF) then
	Response.Write "<div ID=""no_search"" STYLE=""position:absolute; left:260px; top:200px; visibility:visible"
	Response.Write "<TABLE BORDER=""0"" CELLPADDING=""0"" CELLSPACING=""5"" WIDTH=""389"" align=""center"">"
	Response.Write "<tr><TD><FONT FACE=""verdana"" SIZE=""2"">No matches found for '"&q&"' </FONT></TD>"
	Response.Write "</tr>"
	Response.Write "</table></div>"
	Response.End	
End if

lngPage = 0
j = 3				
for i=0 to recordcount-1
	If j > 2 Then
		' -- Output a new table for this page
		' -- Was there a previous page
		if lngPage > 0 Then
			' -- complete the previous page
			WriteTableBottom
		End if
		lngPage = lngPage + 1
		j = 0

		' -- Call routine to write table top with page number

		WriteTableTop lngPage
		End if
        j = j+1
		' -- output the contents
		Response.Write "<TR>"
		Response.Write "<td width=""18"" height=""40"" valign=""top""><img src=""images/arrow.gif"" width=""16"" height=""15""></td>"
		Response.Write "<TD width=""364""><FONT FACE=""verdana"" SIZE=""2"">" 
		if tips_serial(i)="e" then response.write replace(tips_body(i),q,"<b><i>"&q&"</i></b>")
		if tips_serial(i)="a" or tips_serial(i)="o" then 
			tmp_txt=tips_body(i)
			for k=0 to UBound(text)
				tmp_txt=replace(tmp_txt, text(k), "<b><i>"&text(k)&"</i></b>")
			next
			response.write tmp_txt
		end if
		response.write "</FONT><img src=""images/dot.gif"" width=""350"" height=""1"" border=""0""></TD>"
		Response.write "</TR>"
		' -- move to the next record
		objRS.MoveNext
next
	if lngPage > 0 Then
		' -- complete the previous page
		WriteTableBottom
	End if
	
	'objRS.Close
	'set objRS = Nothing
	
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
%>
	<!-- #include file="id_to_section.asp" -->
<%
	strBuff= strBuff& "<p align=center><b><FONT FACE=""verdana"" SIZE=""2"">"&str&objRS.Fields("tips_section_name")&"</b></font></p>"	
	
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
	if recordcount>3 then

		Response.Write "<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=5 WIDTH=389 align=center>"
		Response.Write "<tr>"
		if lngPage>=2 then
			Response.Write "<td><div align=left><a href=# onclick=ShowPrevPage()>Previous</a></div>"
		end if
		if not lngPage >= (recordcount/3) then
			Response.Write "<td><div align=right><a href=# onclick=ShowNextPage()>Next</a></div>"
		end if
		Response.Write "</tr></table>"
	end if
	t="<table border=0 cellpadding=0 cellspacing=5 width=300 align=center>"
	t=t&"<tr><td align=center><a href=""javascript:history.back();"">Back to search results page</a></td>"
	t=t&"</tr></table>"
	response.write t
	
	Response.Write "</div>"
	
End Sub
%>

</body>
</html>
	