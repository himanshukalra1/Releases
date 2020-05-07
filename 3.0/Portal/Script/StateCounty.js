$.fn.extend({
    synccounty: function (countyid, url) {
        $(this).bind('change', function () {
            var val = $(this).val();
            $.ajax({
                type: "POST",
                url: url,
                data: '{ stateid: ' + $(this).val() + ' }',
                contentType: "application/json; charset=utf-8",
                dataType: "json", 
                success: function (data) {
                    var ddlcounty = $('#' + countyid);
                    ddlcounty.empty();
                    $.each(data.d, function (index, item) {
                        ddlcounty.append($('<option></option>').val(item.ID).html(item.Name));
                    });
                },
                error: function (jqxhr, status, error) { alert(error); }
            });
        });
    }
});