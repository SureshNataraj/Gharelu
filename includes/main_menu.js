<!--
if (isDynamic) {
    c = [{"scs":['display.asp?p=gtsid1.1&ads=n',"Beauty",'display.asp?p=gtsid1.2',"Ailments",'display.asp?p=gtsid1.3',"General"],"name":"","menu_id":1},
{"scs":['display.asp?p=gtsid2.1&ads=n',"Cooking",'display.asp?p=gtsid2.2',"Cutlery",'display.asp?p=gtsid2.3',"General"],"name":"","menu_id":2},
{"scs":['display.asp?p=gtsid3.1&ads=n',"Washing & Cleaning",'display.asp?p=gtsid3.2',"Plumbing",'display.asp?p=gtsid3.3',"Stains",'display.asp?p=gtsid3.4',"Odour",'display.asp?p=gtsid3.6',"Furniture",'display.asp?p=gtsid3.5',"General"],"name":"","menu_id":3},
{"scs":['display.asp?p=gtsid4.1&ads=n',"Plant care"],"name":"","menu_id":4},
{"scs":['display.asp?p=gtsid5.1&ads=n',"Pest Control"],"name":"","menu_id":5},
{"scs":['display.asp?p=gtsid6.1&ads=n',"Clothes & Accessories",'display.asp?p=gtsid6.2',"Jewellery"],"name":"","menu_id":6},
{"scs":['display.asp?p=gtsid7.1&ads=n',"Surfing"],"name":"","menu_id":7},
{"scs":['display.asp?p=gtsid8.1&ads=n',"Pet care"],"name":"","menu_id":8},
{"scs":['display.asp?p=gtsid0.1&ads=n',"Others"],"name":"","menu_id":9}];
    document.open();
    il = c.length;
    for (i=0; i < il; i++) {
        document.write("<div id=menu" + c[i].menu_id + " class=\"menu\"><b class=\"verdana\"><font color='#69592a'><b>"+ c[i].name + "</b></font></b><br>");
        jl = c[i].scs.length;
        for (j = 0; j < jl; j = j+2) {
            if (j != 0) { document.write("<br>"); }
            document.write("&nbsp;&nbsp;<a href=\"" + c[i].scs[j] +"\">" + c[i].scs[j+1] + "</a>");
        }
        document.write("</div>\n");
    }
}
//-->