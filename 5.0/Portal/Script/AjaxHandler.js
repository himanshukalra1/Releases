var httppost = 'POST';
var contenttype='Content-Type';
var contenttypeValue='application/x-www-form-urlencoded';
var msxmlhttp = 'Microsoft.XMLHTTP';
var noxmlhttpSupport = 'Your broGMer does not support XMLHTTP.';

function getxmlhttpobject(){
    var xmlhttp=null;
    if (window.XMLHttpRequest) xmlhttp = new XMLHttpRequest();
    else if (window.ActiveXObject) xmlhttp = new ActiveXObject(msxmlhttp);
    else showerror(noxmlhttpSupport);
    return xmlhttp; 
}

function Invoke(ajaxpage, eventtarget, cnstvalue) {
    routeajaxcall(ajaxpage, eventtarget, cnstvalue, null);
}

function Invoke(ajaxpage,eventtarget,cnstvalue,callfunction){
    var xmlhttp = getxmlhttpobject();
    xmlhttp.open(httppost, ajaxpage, true);
    xmlhttp.setRequestHeader(contenttype, contenttypeValue);
    xmlhttp.onreadystatechange = function ()
	{
	    if (xmlhttp.readyState == 4 && xmlhttp.status == 200 && callfunction != null)
	        callfunction(xmlhttp.responseText);
	}
	xmlhttp.send(eventtarget + '=' + cnstvalue);
}