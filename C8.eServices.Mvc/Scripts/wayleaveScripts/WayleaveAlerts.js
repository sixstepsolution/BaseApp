var LeftMenuAlerts = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');

$.fn.LoadApplicationsAlertsWithCounts = function (isAdmin) {
    $("#ShowAlerts").hide();
    setTimeout(function () {
        $.ajax({
            url: localStorage.getItem('apiBaseUrl') + 'get-application-alerts-counts/' + isAdmin,
            type: 'GET',
            processData: false,
            contentType: false,
            cache: false,
            dataType: 'json',
            //data: formData,
            success: function (data, textStatus, xhr) {
                console.log("=========LoadWayleaveApplicationAlertsWithCounts===============");
                console.log(data);
                if (data) {
                    LeftMenuAlerts = data;
                    $("#ShowAlerts").show();
                    $('#LeftMenuAlerts').empty();
                    console.log("LeftMenuAlerts");
                    console.log(LeftMenuAlerts);

                    for (let i = 0; i < LeftMenuAlerts.length; i++) {
                        var name = LeftMenuAlerts[i].name;
                        var alertId = LeftMenuAlerts[i].id;
                        var count = LeftMenuAlerts[i].count;
                        var bgColor = '';

                        if (alertId === 4) {
                            bgColor = 'bg-red';
                        }
                        else if (alertId === 3) {
                            bgColor = 'bg-green';
                        }
                        else {
                            bgColor = 'bg-yellow';
                        }
                        bgColor = 'small-box ' + bgColor;
                        if (name != "Pending Review") {                        
                        $('#LeftMenuAlerts').append('<div class="col-md-6" style="padding: 8px;padding-left: 3px;padding-right: 0px;padding-bottom: 4px;padding-top: 0px;"><a href="#"><div class="' + bgColor + '" style="margin: 0;padding: 8px;"><div class="inner" style="text-align: center;"><p style="font-size: 20px;margin: 0;">' + count + '</p><p style="margin: 0;font-size: 11px;">' + name + '</p></div><div class="icon"></div></div></a></div>');
                        }
                    };
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                toastr.error('Error in Operation');
            }
        });
    }, 5000);

}

$.fn.Logout = function () {
    localStorage.clear();
}

function DownloadUserManual(url, filename) {
    //alert(url);
    const a = document.createElement('a');
    a.href = url;
    a.download = filename;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
}