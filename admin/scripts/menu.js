<!--
a=".asp"
if (isDynamic) {
    c = [{"scs":['modify_account',"Modify UID/PWD"],"name":"","menu_id":1},
{"scs":['subscriber_view',"View Subscribers"],"name":"","menu_id":2},
{"scs":['tips_view',"View Tips"],"name":"","menu_id":3},
{"scs":['#',"Add/Modify Sections"],"name":"","menu_id":4},
{"scs":['pestcontrol',"Pest Control"],"name":"","menu_id":5},
{"scs":['clothacc',"Clothes & Accessories",'jewellery',"Jewellery"],"name":"","menu_id":6},
{"scs":['surfing',"Surfing"],"name":"","menu_id":7},
{"scs":['more',"More"],"name":"","menu_id":8}];
    document.open();
    il = c.length;
    for (i=0; i < il; i++) {
        document.write("<div id=menu" + c[i].menu_id + " class=\"menu\"><b class=\"verdana\"><font color='#69592a'><b>"+ c[i].name + "</b></font></b><br>");
        jl = c[i].scs.length;
        for (j = 0; j < jl; j = j+2) {
            if (j != 0) { document.write("<br>"); }
            document.write("&nbsp;&nbsp;<a href=\"" + c[i].scs[j] +a+"\">" + c[i].scs[j+1] + "</a>");
        }
        document.write("</div>\n");
    }
}
//-->
