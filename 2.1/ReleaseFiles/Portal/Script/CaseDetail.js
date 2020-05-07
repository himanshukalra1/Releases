function checkdate() {
    var rv = true;
    var msg = '';
    if (violationdate && Date.parse(violationdate.value) > Date.parse(filedate.value)) {
        rv = false;
        msg = "Violation Date cannot be greater than File Date.";
    }
    else if (Date.parse(filedate.value) > Date.parse(dispodate.value)) {
        rv = false;
        msg = "File Date cannot be greater than Dispo Date.";
    }

    if (!rv) alert('Please correct the below error.\n- ' + msg);
    else alert('Have you checked and matched “Name Found” and “DOB Found”?');
    return rv;
}