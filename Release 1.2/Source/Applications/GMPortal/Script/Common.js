/*Constants Declartion */
/*-------------------------------------------------------------------------------------------------------------------------------------------*/
var ctlvalidate="controltovalidate";
var ctlerrormsg="errormessage";
var doublequote='"';
var tdinfoid = 'tdInformation';
var imgprogressid = 'imgProgress';
var dnone='none';
var dinline = 'inline';
var empty='';
var attrname='name';
var errorclass = 'Error';
var tdpwdchangenote = 'tdPasswordChangeNote';
var mustselectoneerr ='Please select an item ';
/*-------------------------------------------------------------------------------------------------------------------------------------------*/

/*Functions Definition*/
/*-------------------------------------------------------------------------------------------------------------------------------------------*/
function getelement(id) {return document.getElementById(id);}
function setfocus(ctlid) { getelement(ctlid).focus(); }
function setdisplay(ctlid) { getelement(ctlid).style.display = dinline; }
function hidedisplay(ctlid) { getelement(ctlid).style.display = dnone; }
function showerror(msg) {
    if(msg!=null && errlabelid!=null)
   { 
        getelement(errlabelid).innerText = msg;
        seterrortdon();  
    } 
}
/*-------------------------------------------------------------------------------------------------------------------------------------------*/
/* To handle text-box */
function focus2(ctlid) {
    var ctl = document.getElementById(ctlid);
    ctl.innerText= ctl.value.replace(/,/g,'');
    ctl.select();
}

function onkeypress(ctl,rx,maxlen,isdec) {
    var ismaxlenvalidation=true;
    if(maxlen!=null && maxlen>-1)
   { 
        var ilen = Number(ctl.value.length);
        if((ilen==maxlen) && isdec && event.keyCode !=46 && ctl.value.indexOf('.')==-1) ctl.value = ctl.value +'.'; 
        ismaxlenvalidation=(((ilen<maxlen) && !isdec) || ((ilen<maxlen+3) && isdec));
    }
    return (eval(rx).test(String.fromCharCode(event.keyCode)) &&  ismaxlenvalidation);
}

function blur2(ctlid,callfunction,rx){if(callfunction!=null && callfunction!=empty) callfunction(ctlid,rx);}
/*-------------------------------------------------------------------------------------------------------------------------------------------*/

/* This function will be called in every button's click event to handle the client side user interaction */
function disableme(obj,callfunction) {
    var isproceed = true;
    try{
        Page_ClientValidate();
        isproceed = Page_IsValid;
    }
    catch(e){}
    if (!isproceed)
    {//handling the validation error messages and the control focus on the click of the error message links
        setdisplay(tdinfoid);
        var objVS=getelement(Page_ValidationSummaries[0].id);
        if(objVS!=null)
        {
            var objPV=null, childNodes=objVS.childNodes[1].childNodes;//first child (objVS.childNodes[0]) will be displaying the header text
            for(ix=0;ix<Page_Validators.length;ix++)
            {
                objPV=getelement(Page_Validators[ix].id);
                for(iy=0;iy<childNodes.length;iy++)
                    if(childNodes[iy].innerText == objPV.getAttribute(ctlerrormsg))
                        childNodes[iy].innerHTML = "<a class='Error' href='#' onclick='setfocus("
                                +doublequote+objPV.getAttribute(ctlvalidate)+doublequote+")'>" + childNodes[iy].innerText + "</a>";
            }
        }
    }
    if(isproceed && callfunction!=null)
        isproceed= (eval(callfunction)==false)?false:true;    
        
    if(obj!=null && isproceed) 
   {//when the instance of the button is available and all the validators have return the result as true or there is no validators available in the page
        obj.disabled=true;
       __doPostBack(obj.getAttribute(attrname));  
   }
   return isproceed;
}

function seterrortdon(){setdisplay(tdinfoid);}

function handlemenu(obj, tdmenuid) {
    var tdmenu = document.getElementById(tdmenuid);
    tdmenu.style.display = (tdmenu.style.display == dnone) ? dinline : dnone;
}

function oncheckvalidatorhandle(ckbid,validatorid,lblid,txtid) {
    var ischeck = getelement(ckbid).checked;
    getelement(lblid).className = ((ischeck==true)?errorclass:empty);
    getelement(validatorid).enabled= ischeck;
    getelement(txtid).disabled= !ischeck; 
}

function validatepasswords(tocomparetextid, tovalidatetextid) {
    var isSame = (getelement(tocomparetextid).value==getelement(tovalidatetextid).value);
    if(!isSame) getelement(tdpwdchangenote).className = errorclass;
    return isSame;
}

function mustselectone(btn,lstid,isselect,customtext) {
    var lst = getelement(lstid);
    var isproceed= lst!=null && ((lst.selectedIndex >-1 && isselect)  || (lst.options.length >0 && !isselect));
    if(!isproceed)
        showerror(mustselectoneerr + ((customtext!=null)?customtext +'.':'.')); 
    return isproceed; 
}

function verifycontent(ctlid,rx) {
    var ctl = getelement(ctlid);
    if(!eval(rx).test(ctl.value)) ctl.value = empty;
}

function formatmoney(ctlid, rx) {
    var ctl = getelement(ctlid);
    if (!isNaN(ctl.value) && ctl.value != null && ctl.value != '') ctl.value = parseFloat(ctl.value).toFixed(2);
}

function unload(aspxpage,eventtarget,cnstvalue) {
    window.document.body.onbeforeunload = function()
    {    
         if(event.clientY < 0)
            Invoke(aspxpage,eventtarget,cnstvalue);
    }
}

function opennewindow(url, wndName, isTemp) {
    var winopen;
    if (isTemp) {
        url1 = url.substring(url.indexOf("?qs=") + 4);
        url = url.substring(0, url.indexOf("?qs=") + 4) + encodeURIComponent(decodeURI(url1));
    }
    winopen = window.open(url, wndName, 'status=no,scrollbars=1,menubar=no,height=600,width=600,toolbar=no,resizable=yes,titlebar=no');
    winopen.focus();
}

function clickbtn(btnid) {
    var btn = getelement(btnid);
    if(btn != null) btn.click();
}