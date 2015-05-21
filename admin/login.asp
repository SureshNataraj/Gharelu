<%@ Language=VBScript %>
<%
if Request.QueryString("status")="failed_login" then 
Response.Write("<center>Sorry login failed. You have entered an invalid username or password.</center>")
end if

%>
<html>

<head>
<meta NAME="GENERATOR" Content="Microsoft FrontPage 3.0">
<title>GhareluTips-Login</title>
</head>

<body bgcolor="#FFFECB" link="#336600" vlink="#336600" alink="#336600" topmargin="0"
leftmargin="0" marginheight="0" marginwidth="0" onload="javascript:document.login.username.focus();">

<p>&nbsp;</p>

<form name="login" method="post" action="validate_login.asp">
  <div align="center"><center><p>&nbsp;</p>
  </center></div><div align="center"><center><table border="0" cellpadding="0"
  cellspacing="0" width="100%" height="328">
    <tr>
      <td width="100%" height="328">&nbsp;<div align="center"><center><p><font face="Verdana" size="2"
      color="#008040">
      <h2>GhareluTips Administration Page</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></p>
      </center></div><div align="center"><center><table align="center" border="0"
      cellPadding="1" cellSpacing="1" width="622" id="TABLE1">
        <tr>
          <td width="109"></td>
          <td colspan="2" width="505"><font face="Verdana" size="2" color="#008040"><strong></strong>
          <strong>Type in your username and password to enter the GhareluTips administration page. </strong></font></td>
        </tr>
        <tr>
          <td width="227">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </td>
          <td width="55"><strong><font face="Verdana" size="2" color="#008040">Username</font></strong></td>
          <td width="328"><font face="Verdana" size="2" color="#008040"><input id="text1"
          name="username" size="20"></font></td>
        </tr>
        <tr>
          <td width="227"></td>
          <td width="55"><div align="left"><p><strong><font face="Verdana" size="2" color="#008040">Password</font></strong></div></td>
          <td align="center" width="328"><div align="left"><p><font face="Verdana" size="2"
          color="#008040"><input id="password1" name="password" type="password" size="20"></font></div></td>
        </tr>
        <tr align="center">
          <td width="227"></td>
          <td width="55"></td>
          <td width="328"><center><input type="submit" name="submit1" value="Login"></center></td>
        </tr>
      </table>
      </center></div></td>
    </tr>
  </table>
  </center></div>
</form>
</body>
</html>
