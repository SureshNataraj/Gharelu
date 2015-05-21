<%@ Language=VBScript %>

<%
'GETTING ALL THE FORM DETAILS INTO LOCAL VARIABLES
name=Request.Form("name")
age=Request.Form("age")	'age=(1,2,3,4,5) ==> (<18,18-24,25-30,30-40,>40years)
sex=Request.Form("sex")	
address1=Request.Form("address1")					
address2=Request.Form("address2")
zip=Request.Form("zip")
city=Request.Form("city")
country=Request.Form("country")
phone=Request.Form("phone")
email=Request.Form("email")
'******************************************************************
%>
<%

%>
<%
    sql="select * from tip_subscribers where tip_subscribers_email='" & email & "'"
    Set rs = Server.CreateObject("ADODB.Recordset")
    rs.Open sql, session("gharelu_conn")	'CHECKING WHETHER THE SUBSCRIBER HAS ALREADY REGISTERED
	Response.Write("<HTML><HEAD><title>Congratulations!!</title></HEAD>")
	Response.Write("<BODY bgcolor='#fffecb'>")
	if rs.BOF then	'IF HE/SHE HAS NOT REGISTERED THEN ADD HIM/HER TO THE DATABASE
	Set rs1 = Server.CreateObject("ADODB.Recordset")
	Set rs2 = Server.CreateObject("ADODB.Recordset")
	Set rs3 = Server.CreateObject("ADODB.Recordset")
	x="select * from tip_subscribers where subscriber_status=0"	
	rs1.Open x, session("gharelu_conn")	'FOR SUBSCRIBERS WHO HAVE STOPPED SUBSCRIPTION
	
	if rs1.BOF then 	'NONE OF THE SUBSCRIBERS WHO HAVE STOPPED SUBSCRIPTION...
		sql1="INSERT INTO tip_subscribers ( subscriber_status, tip_subscribers_name, tip_subscribers_age, tip_subscribers_sex, tip_subscribers_address1, tip_subscribers_address2, tip_subscribers_city, tip_subscribers_zip, tip_subscribers_country, tip_subscribers_phone, tip_subscribers_email )"
		sql2= "VALUES (1,'" &name& "'," &age& ",'" &sex& "','" &address1& "','" &address2& "','" &city& "','" &zip& "','" &country& "','" &phone& "','" &email& "')"
		sql1=sql1+sql2
		rs2.Open sql1, session("gharelu_conn")
		Response.Write("<br><br><br><br><center><font face=verdana size=2>Congratulations!! <b>"&name&" </b>, you have been successfully added as a subscriber.Thank you for registering with us.</font></center>")
		
	else	'THERE ARE SOME SUBSCRIBERS WHO HAVE STOPPED SUBSCRIPTION..
		temp=rs1.fields("tip_subscribers_serial") 'GET THE SERIAL OF THE FIRST OF SUCH SUBSCRIBERS
		sql3="update tip_subscribers set subscriber_status=1, tip_subscribers_name='"&name&"', tip_subscribers_age="&age&", tip_subscribers_sex='"&sex&"', tip_subscribers_address1='"&address1&"', tip_subscribers_address2='"&address2&"',tip_subscribers_city='"&city&"', tip_subscribers_zip="&zip&", tip_subscribers_country='"&country&"', tip_subscribers_phone='"&phone&"', tip_subscribers_email='"&email&"' where tip_subscribers_serial="&temp
		rs3.Open sql3,Session("gharelu_conn")
		Response.Write("<br><br><br><br><center><font face=verdana size=2>Congratulations!! <b>"&name&" </b>, you have been successfully added as a subscriber.Thank you for registering with us.</font></center>")
	end if
	
else	'THE CLIENT HAS ALREADY REGISTERED WITH US..DISPLAY A MESSAGE..
Response.Write("<br><br><br><br><center><font face=verdana size=2>We already have your email address in our database. Therefore you are effectively a subscriber. Thanks anyway :)</font></center>")
end if
%>
<script language="javascript">
function set_timer()
{
	time=setTimeout("window.close()",5000);
}

</script>


<script language="javascript">
set_timer()
</script>
<br><br><br><br><br><br><br>
<center><font face=verdana size=1>(This window will close in the next 5 seconds)</font></center>
</BODY>
</HTML>
