<%@ language=VBScript%>
<%
if Session("enable_database_admin_flag")="False" then 
	Response.Redirect("login.asp")
end if
%>
<html>
<head> <title>Gharelu Tips-Administration</title>

<script language="Javascript">
function validate_fields()
	{
		var flag=0;
		if(document.search_form.name.value==""&& document.search_form.country.value=="" && document.search_form.city.value=="")
		{
			alert("Sorry you cannot search for nothing!!\n Enter values into atleast one field");
			document.search_form.name.focus();
			return false;
		}
		
		/* THE PURPOSE OF USING THE VARIABLE flag IS TO ALLOW THE DATABASE
			TO DECIDE WHICH FIELDS SHOULD IT SEARCH FOR. 
			FOR EXAMPLE IF flag=1 THEN ONLY CITY INFORMATION HAS BEEN ENTERED
			flag=3 THEN CITY AND COMPANY INFORMATION HAS BEEN ENTERED AND SO ON...
		*/
		
		if(document.search_form.name.value==""&& document.search_form.country.value=="" && document.search_form.city.value!="")
			flag=1;
		if(document.search_form.name.value==""&& document.search_form.country.value!="" && document.search_form.city.value=="")
			flag=2;
		if(document.search_form.name.value==""&& document.search_form.country.value!="" && document.search_form.city.value!="")
			flag=3;
		if(document.search_form.name.value!=""&& document.search_form.country.value=="" && document.search_form.city.value=="")
			flag=4;
		if(document.search_form.name.value!=""&& document.search_form.country.value=="" && document.search_form.city.value!="")
			flag=5;
		if(document.search_form.name.value!=""&& document.search_form.country.value!="" && document.search_form.city.value=="")
			flag=6;
		if(document.search_form.name.value!=""&& document.search_form.country.value!="" && document.search_form.city.value!="")
			flag=7;
			
		document.search_form.flag.value=flag;
		return true;
	}
</script>
</head>
<body face="arial"  bgcolor=#c4d2c1>
<center><h2><FONT face=Arial>Gharelu Tips Database Management</FONT> </h2></center>
<HR id=HR1 width="75%">

<form name="search_form" method="post" onsubmit="return validate_fields()" action="search_results.asp">

<DIV align=center>
<TABLE border=0 cellPadding=1 cellSpacing=2 style="WIDTH: 66%" width="66%" id=TABLE2>
    <TR>
    <TD><INPUT id=name name="name" style="HEIGHT: 22px; WIDTH: 131px"><br>
      Subscriber's name</TD>
    <TD><INPUT id=country name="country" style="HEIGHT: 22px; WIDTH: 139px"><br>
      Subscriber's country</TD>
    <TD><INPUT id=city name="city" style="HEIGHT: 22px; WIDTH: 133px"><br>
      Subscriber's city</TD>
      <td><input type="hidden" name="flag">
    <TD><INPUT id=submit2 name=submit2 type=submit value=Search> </TD></TR></TABLE></DIV>
<HR id=HR1 width="75%">
</form>
</body>
</html>
