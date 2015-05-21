<%@ Language=VBScript %>
<%
if Session("enable_database_admin_flag")="False" then 
	Response.Redirect("login.asp")
end if
set rs=server.CreateObject("Adodb.recordset")
sql="select * from admin"
rs.Open sql,Session("gharelu_conn")
'
%>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
</HEAD>
<body bgcolor="#fffecb" onLoad="init();" text="#5e4d1f" link="#5e4d1f" vlink="#5e4d1f" alink="#5e4d1f">
<script language="javascript" src="scripts/chk.js"> </script>

<link rel="stylesheet" href="scripts/sty.css" type="text/css">
<title>GhareluTips - Database Administration - Tips</title>
</head>

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
    
<br><br><form method="post" action="update_account.asp">
  <table width="50%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td width="22%"> 
        <div align="center">Username</div>
      </td>
      <td width="78%"> 
        <div align="left"> 
          <input type="text" name="username" value="<%=rs.Fields("username")%>">
        </div>
      </td>
    </tr>
    <tr> 
      <td width="22%"> 
        <div align="center">Password</div>
      </td>
      <td width="78%"> 
        <div align="left"> 
          <input type="text" name="password" value="<%=rs.Fields("password")%>">
        </div>
      </td>
    </tr>
    <tr> 
      <td width="22%">&nbsp;</td>
      <td width="78%">
        <input type="submit" name="Submit" value="Change">
      </td>
    </tr>
  </table>
</form>
</BODY>
</HTML>
