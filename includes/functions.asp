<%
	function sql_encode (ByVal str, ByVal x)
		if x=1 then s1="SELECT count(*),tips_section_id,tips_section_name FROM tips where "
		if x=2 then s1="SELECT tips_serial,tips_body, tips_section_name FROM tips where tips_section_id='"&id&"' and ("
		
		temp=""
		search_str=split(str," ",-1,1)
		temp=temp&"tips_body like '%"&search_str(0)&"%' "
		
		if UBound(search_str)>0 then 
			for i=1 to UBound(search_str)
				temp=temp&"OR tips_body like '%"&search_str(i)&"%' "
			next
		end if
		
		if x=1 then sql_encode = s1 & temp & " group by tips_section_id"
		if x=2 then sql_encode = s1 & temp&")"
	end function
	
sub exact_filter
	objRS.Filter = "tips_body like '%"&q&"%'"
	if objRS.EOF and objRS.BOF then
		exact_serials="0"
		objRS.Filter = ""
	else
		exact_serials=""
		objRS.MoveFirst
		exact_serials=exact_serials&objRS.Fields("tips_serial")
		objRS.MoveNext
		while not objRS.EOF
			exact_serials=exact_serials&","&objRS.Fields("tips_serial")
			objRS.MoveNext
		Wend
		objRS.movefirst
		while not objRS.EOF
			for i=0 to recordcount-1
				if tips_serial(i)=objRS.Fields("tips_serial") then tips_serial(i)="e"
			next
		objRS.movenext
		wend
		objRS.Filter = ""
	end if
end sub
	
sub and_filter
objRS.Filter=""
tmp=""
tmp=tmp&"tips_body like '%"&text(0)&"%' "
if UBound(text)>0 then 
	for i=1 to UBound(text)
		tmp=tmp&"AND tips_body like '%"&text(i)&"%' "
	next
end if

if exact_serials<>"0" then 
	tmp1=split(exact_serials,",",-1,1)
	tmp=tmp&"AND tips_serial <>'"&tmp1(0)&"'"
	if UBound(tmp1)>0 then
		for i=1 to UBound(tmp1)
				tmp=tmp&" AND tips_serial<>'"&tmp1(i)&"' "
		next
	end if
		objRS.Filter= tmp
else
	objRS.Filter = tmp
end if

if objRS.EOF and objRS.BOF then
	and_serials="0"
	objRS.Filter = ""
else
	objRS.movefirst
	while not objRS.EOF
		for i=0 to recordcount-1
			if tips_serial(i)=objRS.Fields("tips_serial") then tips_serial(i)="a"
		next
	objRS.movenext
	wend
	objRS.Filter = ""
end if

end sub

%>