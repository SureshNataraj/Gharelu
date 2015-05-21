<%@ language="vbscript"%>
<%
if Session("enable_database_admin_flag")="False" then 
	Response.Redirect("login.asp")
end if
%>
<html>
<head>
<script language="javascript" src="scripts/chk.js"> </script>
<link rel="stylesheet" href="scripts/sty.css" type="text/css">
<title>GhareluTips - Database Administration.</title>
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
</center>
</body>
</html>

