<td width="100" height="280" align="middle">
	<div id="ads" style="position:relative; left:60px; top:0; visibility:visible;">
		<table border="0">
			<tr><td></tr></td><tr><td>
			<% if request("ads")="y" then
				Response.Write "<img src=""images/ads/"&replace(id,".","_")&".gif"" alt=""shopping"" border=""0"" WIDTH=""189"" HEIGHT=""27"">"
				Response.Write "<br><br><br><br>"
				end if
			 %>
			
			</td></tr>
		</table>
	</div>
</td>
</tr>

 <tr>
        <td height="21" colspan="3" align="middle"> 
          <br><br><br><br><br><form action="find1.asp" method="post" id="form1" name="form1" onsubmit="return check_search();">
      <p><b>For tips on anything, type your&nbsp; key word here... </b>
        <input name="q">
        and 
        <input align="bottom" alt="Go" class="formButton" name="Submit1" src="images/go.gif" type="image" value="startsearch" border="0" width="32" height="17">
      </p>
    </form>
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
Sub WriteTableTop(byval iPage)
	s=""
	if id="gtsid1.1" or id="gtsid1.2" or id="gtsid1.3" then
		s=s&"Health > "
	end if
	if id="gtsid2.1" or id="gtsid2.2" or id="gtsid2.3" then
		s=s&"Kitchen > "
	end if
	if id="gtsid3.1" or id="gtsid3.2" or id="gtsid3.3" or id="gtsid3.4" or id="gtsid3.5" or id="gtsid3.6" then
		s=s&"Housekeeping > "
	end if
	if id="gtsid4.1" then
		s=s&"Garden > "
	end if
	if id="gtsid5.1" then
		s=s&"Pests > "
	end if
	if id="gtsid6.1" or id="gtsid6.2" then
		s=s&"Personal > "
	end if
	if id="gtsid7.1" then
		s=s&"Computers > "
	end if	
	if id="gtsid8.1" then
		s=s&"Pets > "
	end if	
	Dim strBuff
	' -- first, write the DIV containier with a suitable ID value
	strBuff = "<DIV ID=""pg" & iPage & """ STYLE=""position:absolute; left:260px; top: 100px; visibility:"
	' -- All pages other than the first one are invisible
	if iPage > 1 Then
		strBuff = strBuff & "hidden;"
	else
		strBuff = strBuff & "visible;"
	end if
	strBuff = strBuff & """>" 
	
	' -- Then the Table inside the DIV
	strBuff = strBuff & "<TABLE BORDER=""0"" CELLPADDING=""0"" CELLSPACING=""5"" WIDTH=""389"" align=""center"">"
	strBuff= strBuff& "<p align=center><b>&nbsp;"&s&objRS.Fields("tips_section_name")&"</b></p>"	
	
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
	if objRS.recordcount>3 then

		Response.Write "<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=5 WIDTH=389 align=center>"
		Response.Write "<tr>"
		if lngPage>=2 then
			Response.Write "<td><div align=left><a href=# onclick=ShowPrevPage()>Previous</a></div>"
		end if
		if not lngPage >= (objRs.recordcount/3) then
			Response.Write "<td><div align=right><a href=# onclick=ShowNextPage()>Next</a></div>"
		end if
		Response.Write "</tr></table>"
	end if
	Response.Write "</div>"
	
End Sub
%>
</body>
</html>
