function PageloanBatchPipeline(ctlid) {
    var ctl = document.getElementById(ctlid);
    ShowHideSearch(ctl.value == 1);
}

function ShowSearch(ctlid, val) {
    var ctl = document.getElementById(ctlid);
    ctl.value = val;
    ShowHideSearch(ctl.value == 1);
}

function ShowHideSearch(val) {
    if (val == true) {
        setdisplay('trSearch');
        hidedisplay('trSearchLink');
    }
    else {
        setdisplay('trSearchLink');
        hidedisplay('trSearch');
    }
}
function PageloanRecordPipeline(ctlid) {
    var ctl = document.getElementById(ctlid);
    ShowHideSearch(ctl.value == 1); 
}

function showPopup(id, value) {
    var popup = document.getElementById(id);
    popup.style.display = 'block';
    var popup1 = document.getElementById('simplediv1');
    popup1.innerHTML = value.toString();   
}

function hidePopup(id) {
    var popup = document.getElementById(id);
    popup.style.display = 'none';
}

function showalert() {
    var chk = document.getElementById('chk1');
    if (chk.checked) {
        if (confirm('have you read spl remarks.') == false) {

            chk.checked = false;
        }
    }
}

function showalert(obj, val) {
    if (val == 'hidden')
        return;
    var chk = obj;
    if (chk.checked) {
        if (confirm('have you read spl remarks.') == false) {

            chk.checked = false;
        }
    }
}
