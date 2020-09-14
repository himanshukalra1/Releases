function calculatetotalcost() {
    totalcost.value = '';
    var pcost = parseFloat(printcost.value);
    var npages = parseInt(nopages.value);
    if (!isNaN(pcost) && !isNaN(npages))
        totalcost.value = (pcost * npages);
}

var outsourced = '1';
function managevendor() {
    var enable = (action.options[action.selectedIndex].value == outsourced);
    vendor.disabled = !enable;
    vendor.enabled = enable;
    if (!enable) vendor.options[0].selected = true;
}

calculatetotalcost();
managevendor();