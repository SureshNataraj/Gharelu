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
        if (isNS) 
        {
           
            switch(menuLayerRef)
            {
				case 1:
					document[menuID].top = offset+30;
					document[menuID].left = 20;
					break;
				case 2:
					document[menuID].top = offset+30;
					document[menuID].left = 220;
					break;
				case 3:
					document[menuID].top = offset+30;
					document[menuID].left = 470;
					break;
				case 4:
					document[menuID].top = offset+30;
					document[menuID].left = 680;
					break;
			}
            
        }
        else 
        {
            switch(menuLayerRef)
            {
				case 1:
					document.all[menuID].style.pixelTop = offset+30;
					document.all[menuID].style.pixelLeft = 20;
					break;
				case 2:
					document.all[menuID].style.pixelTop = offset+30;
					document.all[menuID].style.pixelLeft = 220;
					break;
				case 3:
					document.all[menuID].style.pixelTop = offset+30;
					document.all[menuID].style.pixelLeft = 470;
					break;
				case 4:
					document.all[menuID].style.pixelTop = offset+30;
					document.all[menuID].style.pixelLeft = 680;
					break;
            }
            
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
