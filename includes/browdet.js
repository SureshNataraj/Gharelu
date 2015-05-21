
<!--
//do browser detect stuff
if (_version != '1.2') {
    window.onerror = new Function("return true;");
}
var isNS = (navigator.appName == "Netscape");
var isMacIE = ( (navigator.userAgent.indexOf("IE 4") > -1) && (navigator.userAgent.indexOf("Mac")  > -1) );
var layerRef = (isNS) ? "document" : "document.all";
var styleRef = (isNS) ? "" : ".style";
var isDynamic = ( ((document.layers && document.layers['testmenu']) || (document.all && document.all['testmenu'])) && !isMacIE );

var activeMenu = 0;

function activateMenu(menuLayerRef, offset) {
    if (isDynamic && activeMenu != menuLayerRef) {
        if (activeMenu) hideMenu("menu" + activeMenu); 
        menuID = "menu" + menuLayerRef;
        activeMenu = menuLayerRef;
        if (isNS) {
            document[menuID].top = offset;
            document[menuID].left = 100;
        } else {
            document.all[menuID].style.pixelTop = offset;
            document.all[menuID].style.pixelLeft = 100;
        }
        showMenu(menuID)
    }
}

function showMenu(layerID) {
    eval(layerRef + '["' + layerID + '"]' + 
    styleRef + '.visibility = "visible"');
}

function hideMenu(layerID) {
    eval(layerRef + '["' + layerID + '"]' + 
    styleRef + '.visibility = "hidden"');
}

// check if there's a menu active
function turnOff() {
    if (activeMenu) {
        menuID = "menu" + activeMenu;
        hideMenu(menuID);
        activeMenu = 0;
    }
}

// kills menu on clickup
function init() {
    if (isDynamic) {
        if (isNS) {
            document.captureEvents(Event.MOUSEUP);
        }
        document.onmouseup = turnOff;
    }
}


// this function needs to be called from the sub menus DIV
function hideMe() {
    if (activeMenu) {
        menuID = "menu" + activeMenu;
        hideMenu(menuID);
        activeMenu = 0;
    }
}

// Work-around Netscape resize bug
if (isDynamic && isNS) {
    origWidth = innerWidth;
    origHeight = innerHeight;   
}
        
function reDo() {       
    if (innerWidth != origWidth || innerHeight != origHeight) {
        location.reload();
    }
}       

if (isDynamic && isNS) {
    onresize = reDo;
}
//-->
