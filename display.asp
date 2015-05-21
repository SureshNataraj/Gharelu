<%@ language="vbscript" %>
<%id=request("p")%>

<!-- #include file="header.asp" -->
<!-- #include file="titles.asp" -->
<!--#include file="ADORoutines.asp"-->
<html>
<head>
<%
	Response.Write "<title>Gharelutips - "&title&"</title>"
%>
<meta name="description" content="The best  site for household tips including tips on health, kitchen, house keeping , gardening, beauty and much more.">
<meta name="keywords" content="tips, household, householdtips, health tips, beauty tips, acne, pimples,black heads, health"><script language="javascript" src="includes/chk.js"> </script>

<link rel="stylesheet" href="includes/sty.css" type="text/css">
<script language="javascript" src="includes/chk.js"> </script>

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

<%
Dim objRS							' Our Recordset Object
Dim strSQL						  ' Our SQL String to access the database
Dim strConnection			 ' Our Connection string to access the database
Dim i								' a counter variable
Dim j								' a counter variable
Dim lngPage						' page counter


' -- Create objects
Set objRS = Server.CreateObject("ADODB.Recordset")

' -- Connection String Value
strConnection = "DSN=gharelutips"

' -- Our SQL Statement

    if Request("m")="" then
	strSQL = "SELECT tips_body,tips_section_name FROM tips where tips_section_id='"&id&"'"
    else
   	strSQL = "SELECT tips_section_id, tips_section_name FROM tips_section where tips_section_id like '"&request("m")&".%'"
	end if
' -- Populate our Recordset with data
Set objRS = GetRecordset(strConnection, strSQL)


if (objRS.BOF and objRS.EOF) then
	response.write "No records found"
	response.end
End if
%>

<%
	if request("m")="" then
	lngPage = 0
	j = 3
	Do While Not objRS.EOF
		
		If j > 2 Then
			' -- Output a new table for this page
			' -- Was there a previous page
			if lngPage > 0 Then
				' -- complete the previous page
				WriteTableBottom
			End if
			lngPage = lngPage + 1
			j = 0
			WriteTableTop lngPage	'Call routine to write table top with page number
		End if
        j = j+1
		' -- output the contents
	
		Response.Write "<TR>"
		Response.Write "<td width=""18"" height=""40"" valign=""top""><img src=""images/arrow.gif"" width=""16"" height=""15""></td>"
		Response.Write "<TD width=""364""><FONT FACE=""verdana"" SIZE=""2"">" & objRS.Fields("tips_body") & "</FONT><img src=""images/dot.gif"" width=""350"" height=""1"" border=""0""></TD>"
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
else
   Response.Write "<center>"
   Response.Write "<b>"& (Request("m_name"))&"</b>" 
while not objRS.EOF
    Response.Write "<li>"
	Response.Write "<a href=""display.asp?p="& objRS.Fields("tips_section_id")&""">" &objRS.Fields("tips_section_name")&"</a><br>"
	objRS.MoveNext
wend
   Response.Write "</center>"
end if	
%>
<% if request("m")="" then  %>
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
<%end if%>
 </td>
                
<!-- #include file="footer.asp" -->
