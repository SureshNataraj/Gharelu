<%@ language="vbscript" %>
<%
if Session("enable_browsing_flag")="False" then 
	Response.Redirect("login.asp")
end if
%>
<html>

<head>
<title>Gharelutips - Subscribe to the best tips.</title>
<script language="javascript">
<!--
function isAlphabet(string)
{
	var reg_exp=/[a-zA-Z ]/
	if(reg_exp.test(string)==true)
	{
		return true;
	}
	else
	{
		return false;
	}
}
	
function isNumber(string)
{
	var reg_exp=/[0-9-,:]/
	if(reg_exp.test(string)==true)
	{
		return true;
	}
	else
	{
		return false;
	}
		
}

function validate_fields()
{
	var name=document.subscription_form.name.value;
	var age=document.subscription_form.age.selectedIndex;
	var city=document.subscription_form.city.value;
	var zip=document.subscription_form.zip.value;
	var country=document.subscription_form.country.selectedIndex;
	var phone=document.subscription_form.phone.value;
	var email=document.subscription_form.email.value;

	if(name=="" && age=="0" && city=="" && zip=="" && country=="0" && email=="")
	{
		alert("The fields marked * are necessary.\nKindly enter values into these.");
		document.subscription_form.name.focus();		
		return false;
	}
	if(name=="")
	{
		alert("Kindly enter your name.");
		document.subscription_form.name.focus();
		return false;
	}
	if(!isAlphabet(name))
	{
		alert("Kindly enter a proper name");
		document.subscription_form.name.focus();
		return false;
	}
	if(age=="0")
	{
		alert("Kindly choose your age group from the pull-down menu.");
		document.subscription_form.age.focus();
		return false;
	}
	if(city=="")
	{
		alert("Kindly enter your city's name.")
		document.subscription_form.city.focus();
		return false;
	}
	if(city!="")
	{ 
		if(isNumber(city) || !isAlphabet(city))
		{
		alert("Kindly enter a proper city name.");
		document.subscription_form.city.focus();
		return false;
		}
	}
	if(zip=="")
	{
		alert("Kindly enter your city's zip code.");
		document.subscription_form.zip.focus();
		return false;
	}
	
	if(country=="0")
	{
		alert("Kindly select your country from the list.")
		document.subscription_form.country.focus();
		return false;
	}
	if(phone!="")
	{	
		if(!isNumber(phone))
		{
		alert("Kindly enter a proper phone number or leave this field blank.")
		document.subscription_form.phone.focus();
		return false;
		}
	}
	if(email=="")
	{	
		alert("Kindly enter your email address.");
		document.subscription_form.email.focus();
		return false;
	}

	if(email!="")
	{
		var reg=/@./;
		if(reg.test(email)==true)
		{
			var temp=email.slice(0,email.indexOf('@'));
			var temp1=email.slice(email.indexOf('@')+1,email.indexOf('.'));
			var temp2=email.slice(email.indexOf('.')+1);
			
			if(temp.length < 1 || temp1.length <1 || temp2.length <2)
			{
				alert("Kindly enter a valid email address.");
				document.subscription_form.email.focus();
				return false;
			}
		}
		else
		{
			alert("Kindly enter a valid email address.")
			document.subscription_form.email.focus();
			return false;
		}
	}
	return true;
}//END OF validate_fields() FUNCTION

//-->
</script>
</head>

<body bgcolor="#fffecb" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onload="javascript:document.subscription_form.name.focus();">

<form name="subscription_form" method="post" action="confirm_subscription.asp" onsubmit="return validate_fields()">
  <table border="0" cellPadding="1" cellSpacing="1" width="100%">
    <tr>
      <td colspan="2"><font face="verdana" size="2"><p align="center"><strong>Subscribe 
            </strong></p></font></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">Name</font></td>
      <td><input name="name" style="HEIGHT: 22px; WIDTH: 219px"></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">Age</font></td>
      <td><select name="age" style="FONT-FAMILY: verdana; FONT-SIZE: 10px;
      HEIGHT: 22px; WIDTH: 218px" size="1">
        <option value="0" selected>Select an age 
                    group
        <option value="1">below 18 years
        <option value="2">18-24 years
        <option value="3">25-40 years
        <option value="4">41-54 years
        <option value="5">above 54 years
      </select></td>
    </tr>
    <tr>
      <td><font face="verdana" size="2">Sex</font></td>
      <td><input type="radio" name="sex" value="m" checked><font face="verdana" size="2">Male</font>
      <input type="radio" name="sex" value="f"><font face="verdana" size="2">Female</font></td>
    </tr>
    <tr>
      <td><font face="verdana" size="2">Address1</font></td>
      <td><input name="address1" maxlength="30" style="HEIGHT: 22px; WIDTH: 216px"></td>
    </tr>
    <tr>
      <td><font face="verdana" size="2">Address2</font></td>
      <td><input name="address2" maxlength="30" style="HEIGHT: 22px; WIDTH: 215px"></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">City</font></td>
      <td><input name="city" style="HEIGHT: 22px; WIDTH: 214px"></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">Zip</font></td>
      <td><input name="zip" style="HEIGHT: 22px; WIDTH: 214px"></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">Country</font></td>
      <td><select name="country" style="FONT-FAMILY: verdana; FONT-SIZE: 10px; HEIGHT: 22px; WIDTH: 213px" size="1">
        <option value="0" selected>Select a 
                    country
        <option value="Afghanistan">Afghanistan
        <option value="Albania">Albania
        <option value="Andorra">Andorra
        <option value="Angola">Angola
        <option value="Anguilla">Anguilla
        <option value="Argentina">Argentina
        <option value="Armenia">Armenia
        <option value="Aruba">Aruba
        <option value="Australia">Australia
        <option value="Austria">Austria
        <option value="Azerbaijan">Azerbaijan
        <option value="Bahamas, The">Bahamas, 
                    The
        <option value="Bahrain">Bahrain
        <option value="Bangladesh">Bangladesh
        <option value="Barbados">Barbados
        <option value="Belarus">Belarus
        <option value="Belgium">Belgium
        <option value="Belize">Belize
        <option value="Benin">Benin
        <option value="Bermuda">Bermuda
        <option value="Bhutan">Bhutan
        <option value="Bolivia">Bolivia
        <option value="Bosnia and Herzegovina">Bosnia and Herzegovina
        <option value="Botswana">Botswana
        <option value="Bouvet Island">Bouvet 
                    Island
        <option value="Brazil">Brazil
        <option value="British Indian Ocean Territory">British Indian Ocean Territory
        <option value="Brunei">Brunei
        <option value="Bulgaria">Bulgaria
        <option value="Burkina Faso">Burkina 
                    Faso
        <option value="Burundi">Burundi
        <option value="Cambodia">Cambodia
        <option value="Cameroon">Cameroon
        <option value="Canada">Canada
        <option value="Cape Verde">Cape Verde
        <option value="Cayman Islands">Cayman 
                    Islands
        <option value="Central African Republic">Central African Republic
        <option value="Chad">Chad
        <option value="Chile">Chile
        <option value="China">China
        <option value="China (Hong Kong S.A.R.)">China (Hong Kong S.A.R.)
        <option value="Christmas Island">Christmas Island
        <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands
        <option value="Colombia">Colombia
        <option value="Comoros">Comoros
        <option value="Congo">Congo
        <option value="Congo, Democractic Republic of the">Congo, Democractic Republic of the
        <option value="Cook Islands">Cook 
                    Islands
        <option value="Costa Rica">Costa Rica
        <option value="Cote D'Ivoire (Ivory Coast)">Cote D'Ivoire (Ivory Coast)
        <option value="Croatia (Hrvatska)">Croatia (Hrvatska)
        <option value="Cuba">Cuba
        <option value="Cyprus">Cyprus
        <option value="Czech Republic">Czech 
                    Republic
        <option value="Denmark">Denmark
        <option value="Djibouti">Djibouti
        <option value="Dominica">Dominica
        <option value="Dominican Republic">Dominican Republic
        <option value="East Timor">East Timor
        <option value="Ecuador">Ecuador
        <option value="Egypt">Egypt
        <option value="El Salvado">El Salvador
        <option value="Equatorial Guinea">Equatorial Guinea
        <option value="Eritrea">Eritrea
        <option value="Estonia">Estonia
        <option value="Ethiopia">Ethiopia
        <option value="Falkland Islands (Islas Malvinas)">Falkland Islands (Islas Malvinas)
        <option value="Faroe Islands">Faroe 
                    Islands
        <option value="Fiji Islands">Fiji 
                    Islands
        <option value="Finland">Finland
        <option value="France">France
        <option value="French Guiana">French 
                    Guiana
        <option value="French Polynesia">French 
                    Polynesia
        <option value="French Southern Territories">French Southern Territories
        <option value="Gabon">Gabon
        <option value="Gambia, The">Gambia, The
        <option value="Georgia">Georgia
        <option value="Germany">Germany
        <option value="Ghana">Ghana
        <option value="Gibraltar">Gibraltar
        <option value="Greece">Greece
        <option value="Greenland">Greenland
        <option value="Grenada">Grenada
        <option value="Guadeloupe">Guadeloupe
        <option value="Guam">Guam
        <option value="Guatemala">Guatemala
        <option value="Guinea">Guinea
        <option value="Guinea-Bissau">Guinea-Bissau
        <option value="Guyana">Guyana
        <option value="Haiti">Haiti
        <option value="Heard and McDonald Islands">Heard and McDonald Islands
        <option value="Honduras">Honduras
        <option value="Hungary">Hungary
        <option value="Iceland">Iceland
        <option value="India">India
        <option value="Indonesia">Indonesia
        <option value="Iran">Iran
        <option value="Iraq">Iraq
        <option value="Ireland">Ireland
        <option value="Israel">Israel
        <option value="Italy">Italy
        <option value="Jamaica">Jamaica
        <option value="Japan">Japan
        <option value="Jordan">Jordan
        <option value="Kazakhstan">Kazakhstan
        <option value="Kenya">Kenya
        <option value="Kiribati">Kiribati
        <option value="Korea">Korea
        <option value="Korea, North ">Korea, 
                    North
        <option value="Kuwait">Kuwait
        <option value="Kyrgyzstan">Kyrgyzstan
        <option value="Laos">Laos
        <option value="Latvia">Latvia
        <option value="Lebanon">Lebanon
        <option value="Lesotho">Lesotho
        <option value="Liberia">Liberia
        <option value="Libya">Libya
        <option value="Liechtenstein">Liechtenstein
        <option value="Lithuania">Lithuania
        <option value="Luxembourg">Luxembourg
        <option value="Macao">Macao
        <option value="Macedonia, Former Yugoslav Republic of">Macedonia, Former Yugoslav Republic of
        <option value="Madagascar">Madagascar
        <option value="Malawi">Malawi
        <option value="Malaysia">Malaysia
        <option value="Maldives">Maldives
        <option value="Mali">Mali
        <option value="Malta">Malta
        <option value="Marshall Islands">Marshall Islands
        <option value="Martinique">Martinique
        <option value="Mauritania">Mauritania
        <option value="Mauritius">Mauritius
        <option value="Mayotte">Mayotte
        <option value="Mexico">Mexico
        <option value="Micronesia">Micronesia
        <option value="Moldova">Moldova
        <option value="Monaco">Monaco
        <option value="Mongolia">Mongolia
        <option value="Montserrat">Montserrat
        <option value="Morocco">Morocco
        <option value="Mozambique">Mozambique
        <option value="Myanmar">Myanmar
        <option value="Namibia">Namibia
        <option value="Nauru">Nauru
        <option value="Nepal">Nepal
        <option value="Netherlands Antilles">Netherlands Antilles
        <option value="Netherlands, The">Netherlands, The
        <option value="New Caledonia">New 
                    Caledonia
        <option value="New Zealand">New Zealand
        <option value="Nicaragua">Nicaragua
        <option value="Niger">Niger
        <option value="Nigeria">Nigeria
        <option value="Niue">Niue
        <option value="Norfolk Island">Norfolk 
                    Island
        <option value="Northern Mariana Islands">Northern Mariana Islands
        <option value="Norway">Norway
        <option value="Oman">Oman
        <option value="Pakistan">Pakistan
        <option value="Palau">Palau
        <option value="Panama">Panama
        <option value="Papua new Guinea">Papua 
                    new Guinea
        <option value="Paraguay">Paraguay
        <option value="Peru">Peru
        <option value="Philippines">Philippines
        <option value="Pitcairn Island">Pitcairn Island
        <option value="Poland">Poland
        <option value="Portugal">Portugal
        <option value="Puerto Rico">Puerto Rico
        <option value="Qatar">Qatar
        <option value="Reunion">Reunion
        <option value="Romania">Romania
        <option value="Russia">Russia
        <option value="Rwanda">Rwanda
        <option value="Saint Helena">Saint 
                    Helena
        <option value="Saint Kitts And Nevis">Saint Kitts And Nevis
        <option value="Saint Lucia">Saint Lucia
        <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon
        <option value="Saint Vincent And The Grenadines">Saint Vincent And The Grenadines
        <option value="Samoa">Samoa
        <option value="San Marino">San Marino
        <option value="Sao Tome and Principe">Sao Tome and Principe
        <option value="Saudi Arabia">Saudi 
                    Arabia
        <option value="Senegal">Senegal
        <option value="Seychelles">Seychelles
        <option value="Sierra Leone">Sierra 
                    Leone
        <option value="Singapore">Singapore
        <option value="Slovakia">Slovakia
        <option value="Slovenia">Slovenia
        <option value="Solomon Islands">Solomon 
                    Islands
        <option value="Somalia">Somalia
        <option value="South Africa">South 
                    Africa
        <option value="South Georgia And The South Sandwich Islands">South Georgia And The South Sandwich 
                    Islands
        <option value="Spain">Spain
        <option value="Sri Lanka">Sri Lanka
        <option value="Sudan">Sudan
        <option value="Suriname">Suriname
        <option value="Svalbard And Jan Mayen Islands">Svalbard And Jan Mayen Islands
        <option value="Swaziland">Swaziland
        <option value="Sweden">Sweden
        <option value="Switzerland">Switzerland
        <option value="Syria">Syria
        <option value="Taiwan">Taiwan
        <option value="Tajikistan">Tajikistan
        <option value="Tanzania">Tanzania
        <option value="Thailand">Thailand
        <option value="Togo">Togo
        <option value="Tokelau">Tokelau
        <option value="Tonga">Tonga
        <option value="Trinidad And Tobago">Trinidad And Tobago
        <option value="Tunisia">Tunisia
        <option value="Turkey">Turkey
        <option value="Turkmenistan">Turkmenistan
        <option value="Turks And Caicos Islands">Turks And Caicos Islands
        <option value="Tuvalu">Tuvalu
        <option value="Uganda">Uganda
        <option value="Ukraine">Ukraine
        <option value="United Arab Emirates">United Arab Emirates
        <option value="United Kingdom">United 
                    Kingdom
        <option value="United States">United 
                    States
        <option value="United States Minor Outlying Islands">United States Minor Outlying Islands
        <option value="Uruguay">Uruguay
        <option value="Uzbekistan">Uzbekistan
        <option value="Vanuatu">Vanuatu
        <option value="Vatican City State (Holy See)">Vatican City State (Holy See)
        <option value="Venezuela">Venezuela
        <option value="Vietnam">Vietnam
        <option value="Virgin Islands (British)">Virgin Islands (British)
        <option value="Virgin Islands (US)">Virgin Islands (US)
        <option value="Wallis And Futuna Islands">Wallis And Futuna Islands
        <option value="Western Sahara">Western 
                    Sahara
        <option value="Yemen">Yemen
        <option value="Yugoslavia">Yugoslavia
        <option value="Zambia">Zambia
        <option value="Zimbabwe">Zimbabwe
      </select></td>
    </tr>
    <tr>
      <td><font face="verdana" size="2">Phone</font></td>
      <td><input name="phone" style="HEIGHT: 22px; WIDTH: 212px"></td>
    </tr>
    <tr>
      <td>*<font face="verdana" size="2">Email</font></td>
      <td><input name="email" style="HEIGHT: 22px; WIDTH: 213px"></td>
    </tr>
  </table>
  <p><input name="submit1" type="submit" value="Submit"> <input name="reset1" type="reset" value="Reset"> 
 </p>
</form>
</body>
</html>
