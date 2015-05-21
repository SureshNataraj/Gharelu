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

function validate_email()
{
email=document.tell_a_friend.friends_email.value;

if(email=="E-mail Address here") 
{
	alert("Kindly enter your friends email ID/s in the box provided.");
	document.tell_a_friend.friends_email.focus();
	return false;
}
else
	{
		if(email.indexOf('@',0)==-1||email.indexOf('.',0)==-1)
		{
 			alert("Invalid Email ID\nKindly enter again.");
 			document.tell_a_friend.friends_email.focus();
 			return false;
		}
	}
return true;
}
function map()
{
a=new Image()
a.src="go2.jpg"
document.go.src=a.src
}
function map1()
{
ac=new Image()
ac.src="go1.jpg"
document.go.src=ac.src
}
function tipin()
{
a1=new Image()
a1.src="tipoftheday.gif"
document.tip.src=a1.src
}
function tipout()
{
ac1=new Image()
ac1.src="tipoftheday1.gif"
document.tip.src=ac1.src
}
function conin()
{
a1=new Image()
a1.src="topcontributor.gif"
document.con.src=a1.src
}
function conout()
{
ac1=new Image()
ac1.src="topcontributor1.gif"
document.con.src=ac1.src
}
function sendin()
{
a1=new Image()
a1.src="sendatip.gif"
document.sen.src=a1.src
}
function sendout()
{
ac1=new Image()
ac1.src="sendatip1.gif"
document.sen.src=ac1.src
}
function subsin()
{
a1=new Image()
a1.src="subscribe.gif"
document.sub.src=a1.src
}
function subsout()
{
ac1=new Image()
ac1.src="subscribe1.gif"
document.sub.src=ac1.src
}
function askin()
{
a1=new Image()
a1.src="askquery.gif"
document.ask.src=a1.src
}
function askout()
{
ac1=new Image()
ac1.src="askquery1.gif"
document.ask.src=ac1.src
}

function goOpener(myLink,closeme,closeonly) {
    if (! (window.focus && window.opener))return true;
        window.opener.focus();
    if (! closeonly)window.opener.location.href=myLink.href;
    if (closeme)window.close();
        return false;
} 


function close_window(milliseconds) {
    setTimeout('self.close()',milliseconds);
}

function popup_1(url,width,height) {
    width = width || 350;
    height = height || 480;
    var props = 'toolbar=no,location=no,status=no,scrollbars=yes,menubar=no,resizable=no,copyhistory=no,width=' + width + ',height=' + height;
    rateWin = window.open(url,'popup_1',props);
    window.name="mainWindow"; // this renames the "main" browser window
    rateWin.focus(); // this brings the popup to focus
}

// -->
