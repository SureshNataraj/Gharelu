<%
if Session("enable_database_admin_flag")="False" then 
	Response.Redirect("login.asp")
end if
%>
<html>
<head><title></title>
<script language=javascript>
<!--
function encode_flag()
{
	var temp = new Array(5)
	temp[0]= document.subscription_form.name.value;
	temp[1]=document.subscription_form.age.selectedIndex
	temp[2]=document.subscription_form.city.value;
	temp[3]=document.subscription_form.country.selectedIndex;
	temp[4]=document.subscription_form.email.value;
	
	var temp_flag=""
	for(i=0;i<temp.length;++i)
	{
		if(temp[i]=="" || temp[i]=="0" || temp[i]=="null")
			temp_flag=temp_flag+"0";
		else
			temp_flag=temp_flag+"1";
	}
	
	
	document.subscription_form.flag.value=temp_flag;
}

function isNumber(data){
        var numstr="0123456789:_-";
        var thischar;
        var counter=0;
        for ( var i=0; i < data.length; i++ ) {
                thischar = data.substring(i,i+1);
                if ( numstr.indexOf(thischar) != -1 ) 
                        counter++;
        } // end for loop
        if ( counter == data.length )   
                return true;
        else 
                return false;

} // end function isNumber
function isAlphabet(data){
        var numstr=" aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ";
        var thischar;
        var counter=0;
        for ( var i=0; i < data.length; i++ ) {
                thischar = data.substring(i,i+1);
                if ( numstr.indexOf(thischar) != -1 ) 
                        counter++;
        } // end for loop
        if ( counter == data.length )   
                return true;
        else 
                return false;

} // end function isNumber

function validate_fields()
{
	
	var name=document.subscription_form.name.value;
	var age=document.subscription_form.age.value;
	var city=document.subscription_form.city.value;
	var country=document.subscription_form.country.value;
	var email=document.subscription_form.email.value;
	
	if(name!="")
	{
		if(isNumber(name)|| !isAlphabet(name))
		{
			alert("Name can contain only Alphabets.\nKindly enter a proper name.");
			document.subscription_form.name.focus();
			return false;
		}
	}
	if(city!="")
	{ 
		if(isNumber(city) || !isAlphabet(city))
		{
		alert("City name can contain only alphabets!!.\nKindly enter a proper city name.");
		document.subscription_form.city.focus();
		return false;
		}
	}
		
	encode_flag();
	return true;
}//END OF validate_fields() FUNCTION

//-->
</script>
</head>
<body bgcolor="#C4D2C1">
<center>
<h2>Gharelu Tips Subscriber Search Engine</h2>
<HR  id=HR1 width='75%'><br>

<form name="subscription_form"  method="post" onsubmit="return validate_fields()" action="subscriber_search_results.asp">
<input type="hidden" name="flag">
<TABLE border=0 cellPadding=1 cellSpacing=1>
  
  <TR>
    <TD><font face="verdana" size="2">Name</font></TD>
    
    <TD><INPUT name="name" 
      style="HEIGHT: 22px; WIDTH: 219px"></TD></TR>
  <TR>
    <TD><font face="verdana" size="2">Age</font></TD>
    <TD><select name="age" style="font-family:verdana;font-size:10;HEIGHT: 22px; WIDTH: 218px">
	<option value="0" selected>Select an age group</option>
	<option value="1">below 18 years</option>
	<option value="2">18-24 years</option>
	<option value="3">25-40 years</option>
	<option value="4">41-54 years</option>
	<option value="5">above 54 years</option>
	</select></TD></TR>
  <TR>
    <TD><font face="verdana" size="2">Sex</font></TD>
    <TD><input type="radio"  name="sex" value="m" checked><font face="verdana" size="2">Male</font>
	<input type="radio"  name="sex" value="f"><font face="verdana" size="2">Female</font>
	</TD></TR>
  <TR>
    <TD><font face="verdana" size="2">City</font></TD>
    <TD><INPUT name="city" style="HEIGHT: 22px; WIDTH: 214px"></TD></TR>
  <TR>
    <TD><font face="verdana" size="2">Country</font></TD>
    <TD><select name="country" 
      style="font-family:verdana;font-size:10;HEIGHT: 22px; WIDTH: 213px">
	<option value="0" selected>Select a country
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
	<option value="Bahamas, The">Bahamas, The
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
	<option value="Bouvet Island">Bouvet Island
	<option value="Brazil">Brazil
	<option value="British Indian Ocean Territory">British Indian Ocean Territory
	<option value="Brunei">Brunei
	<option value="Bulgaria">Bulgaria
	<option value="Burkina Faso">Burkina Faso
	<option value="Burundi">Burundi
	<option value="Cambodia">Cambodia
	<option value="Cameroon">Cameroon
	<option value="Canada">Canada
	<option value="Cape Verde">Cape Verde
	<option value="Cayman Islands">Cayman Islands
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
	<option value="Cook Islands">Cook Islands
	<option value="Costa Rica">Costa Rica
	<option value="Cote D'Ivoire (Ivory Coast)">Cote D'Ivoire (Ivory Coast)
	<option value="Croatia (Hrvatska)">Croatia (Hrvatska)
	<option value="Cuba">Cuba
	<option value="Cyprus">Cyprus
	<option value="Czech Republic">Czech Republic
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
	<option value="Faroe Islands">Faroe Islands
	<option value="Fiji Islands">Fiji Islands
	<option value="Finland">Finland
	<option value="France">France
	<option value="French Guiana">French Guiana
	<option value="French Polynesia">French Polynesia
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
	<option value="Korea, North ">Korea, North 
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
	<option value="New Caledonia">New Caledonia
	<option value="New Zealand">New Zealand
	<option value="Nicaragua">Nicaragua
	<option value="Niger">Niger
	<option value="Nigeria">Nigeria
	<option value="Niue">Niue
	<option value="Norfolk Island">Norfolk Island
	<option value="Northern Mariana Islands">Northern Mariana Islands
	<option value="Norway">Norway
	<option value="Oman">Oman
	<option value="Pakistan">Pakistan
	<option value="Palau">Palau
	<option value="Panama">Panama
	<option value="Papua new Guinea">Papua new Guinea
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
	<option value="Saint Helena">Saint Helena
	<option value="Saint Kitts And Nevis">Saint Kitts And Nevis
	<option value="Saint Lucia">Saint Lucia
	<option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon
	<option value="Saint Vincent And The Grenadines">Saint Vincent And The Grenadines
	<option value="Samoa">Samoa
	<option value="San Marino">San Marino
	<option value="Sao Tome and Principe">Sao Tome and Principe
	<option value="Saudi Arabia">Saudi Arabia
	<option value="Senegal">Senegal
	<option value="Seychelles">Seychelles
	<option value="Sierra Leone">Sierra Leone
	<option value="Singapore">Singapore
	<option value="Slovakia">Slovakia
	<option value="Slovenia">Slovenia
	<option value="Solomon Islands">Solomon Islands
	<option value="Somalia">Somalia
	<option value="South Africa">South Africa
	<option value="South Georgia And The South Sandwich Islands">South Georgia And The South Sandwich Islands
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
	<option value="United Kingdom">United Kingdom
	<option value="United States">United States
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
	<option value="Western Sahara">Western Sahara
	<option value="Yemen">Yemen
	<option value="Yugoslavia">Yugoslavia
	<option value="Zambia">Zambia
	<option value="Zimbabwe">Zimbabwe</option></select></TD></TR>
  <TR>
    <TD><font face="verdana" size="2">Email</font></TD>
    <TD><INPUT name="email" style="HEIGHT: 22px; WIDTH: 213px"></TD></TR>
  </TABLE>
<P></P>
<INPUT name=submit1 type=submit  value=Find>

</form>

<HR  id=HR1 width='75%'><br>
</center>

</body>
</html> 