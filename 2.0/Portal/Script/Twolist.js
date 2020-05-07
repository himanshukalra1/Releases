var lstselecterror='Please select at least one option from available list of ';

function swapoptions(srclistid,destlistid)
{
    swapoptions(srclistid,destlistid,false);
}

function swapoptions(srclistid,destlistid,ismoveall)
{
    var srclist=getelement(srclistid),destlist=getelement(destlistid);
    var iindex=srclist.selectedIndex;
    if(srclist.length>0 && (iindex>-1 || ismoveall))
    { 
        if(ismoveall)
            for(var ix=srclist.length-1;ix>=0;ix--)
               destlist.appendChild(srclist.options.item(ix));
        else
            destlist.appendChild(srclist.options.item(iindex));
    }
    return false; 
}

function selectoptions(srclistid,customText)
{
    var srclist = getelement(srclistid);
    for(var ix=0;ix<srclist.options.length;ix++)
        srclist.options[ix].selected=true;  
    var isproceed=(srclist.options.length >0);
    if(!isproceed)
        showerror(lstselecterror+ customText );  
    return isproceed;   
}
