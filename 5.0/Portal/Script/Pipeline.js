function PageloanBatchPipeline(ctlid) {
    //var ctl = document.getElementById(ctlid);
    //ShowHideSearch(ctl.value == 1);
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

var strRedCaseType = ",CERT COPY RQST,CIVIL,CIVIL CASE COPIES,CIVIL CERT COPY,CIVIL DOCKET PRNT,CIVLOW,CIVUP,CRIM CASE COPIES,CRIM CERT COPY,CRIM DOCKET PRNT,CVRO,CVRO10,FAMLY-LAW,FED CIVIL,FRED-CRIM,"
function PageloanRecordPipeline(ctlid) {
    //var ctl = document.getElementById(ctlid);
    //ShowHideSearch(ctl.value == 1); 

    var table = document.getElementById('cphMaster_grvRecord');
    var str;
    if (table) {
        for (var rowNum = 0; rowNum < table.rows.length; rowNum++) {
            if (rowNum > 0) {
                var ctl = table.rows[rowNum].children[11];
                if (ctl) {
                    str = "," + table.rows[rowNum].children[11].innerText.toUpperCase() + ",";
                    if (strRedCaseType.indexOf(str) > -1)
                        table.rows[rowNum].children[11].className = "Error";
                }
            }
        }
    }
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

function SelectAll(obj) {
    var table = obj.parentElement.parentElement.parentElement;

    for (var rowNum = 0; rowNum < table.rows.length - 1; rowNum++) {
        if (rowNum > 0) {
            if (table.rows[rowNum].children[17].children[0].style.visibility == 'hidden')
                table.rows[rowNum].children[0].children[0].checked = true;
        }
    }


}
