$.fn.extend({
    synccounty: function (countyid, url) {
        $(this).bind('change', function () {
            loadcounty($(this).val(), countyid, url);
        });
        loadcounty($(this).val(), countyid, url);
    }
});

var loadcounty = function (stateid, countyid, url) {
    $.ajax({
        type: "POST",
        url: url,
        data: '{ stateid: ' + stateid+ ' }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var ddlcounty = $('#' + countyid), cidval = ddlcounty.val();
            ddlcounty.empty();
            $.each(data.d, function (index, item) {
                ddlcounty.append($('<option></option>').val(item.ID).html(item.Name));
            });
            ddlcounty.val(cidval);
        },
        error: function (jqxhr, status, error) { alert(error); }
    });
};