<!-- 
function newwin1(htmname)
{
Options='toolbar=no,location=no,directories=no,status=no,scrollbars=no,menubar=no,height=50,width=500';
window.open(htmname,'_blank',Options);
}


function newwin(htmname,wid,hei)
{
if(wid=="0"||hei=="0")
{ Options='toolbar=no,location=no,directories=no,status=no,scrollbars=no,menubar=no,height=350,width=400';
window.open(htmname,'_blank',Options);
}
else
  {	Options='toolbar=no,location=no,directories=no,status=no,scrollbars=no,	menubar=no,height=hei,width=wid';
	window.open(htmname,'_blank',Options);
  }
}
function check_search()
{
	if(document.form1.q.value=="")
	{
		alert("You have not entered a search term!!!");
		document.form1.q.focus;
		return false;
	}
}
// -->
