var LeftMenuAlerts = [];
var LeftAccountsMenuAlerts = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
//var isAdmin = "";

$.fn.LoadWayleaveAccountsAlertsWithCounts = function () {
    $("#ShowAlerts").hide();
    setTimeout(function () {
        $.ajax({
            url: localStorage.getItem('apiBaseUrl') + 'get-wayleave-accounts-alerts-counts',
            type: 'GET',
            processData: false,
            contentType: false,
            cache: false,
            dataType: 'json',
            //data: formData,
            success: function (data, textStatus, xhr) {
                console.log("=========LoadWayleaveAccountsAlertsWithCounts===============");
                console.log(data);
                if (data) {
                    LeftAccountsMenuAlerts = data;
                    $("#ShowAlerts").show();
                    $('#LeftAccountsMenuAlerts').empty();
                    console.log("LeftAccountsMenuAlerts");
                    console.log(LeftAccountsMenuAlerts);

                    for (let i = 0; i < LeftAccountsMenuAlerts.length; i++) {
                        var name = LeftAccountsMenuAlerts[i].name;
                        var count = LeftAccountsMenuAlerts[i].count;
                        var bgColor = '';

                        if (name === 'Rejected') {
                            bgColor = 'bg-red';
                        }
                        else if (name === 'Approved') {
                            bgColor = 'bg-green';
                        }
                        else {
                            bgColor = 'bg-yellow';
                        }
                        bgColor = 'small-box ' + bgColor;
                        $('#LeftAccountsMenuAlerts').append('<div class="col-md-6" style="padding: 8px;padding-left: 3px;padding-right: 0px;padding-bottom: 4px;padding-top: 0px;"><a href="#"><div class="' + bgColor + '" style="margin: 0;padding: 8px;"><div class="inner" style="text-align: center;"><p style="font-size: 20px;margin: 0;">' + count + '</p><p style="margin: 0;font-size: 11px;">' + name + '</p></div><div class="icon"></div></div></a></div>');

                    };
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                toastr.error('Error in Operation');
            }
        });
    }, 5000);
}
$.fn.LoadApplicationsAlertsWithCounts = function (isAdmin) {
    // loading applaiction counts
    //$("#ShowAlerts").hide();
    //if ($scope.EkurhuleniRoles.indexOf('Admin') > -1) {
    //    $scope.isAdmin = "Y";
    //}
    //else if ($scope.EkurhuleniRoles.indexOf('application') > -1) {
    //    $scope.isAdmin = "N";
    //}
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
                        if (name != "Pending Payment" && name != "Pending Review") {
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
$.fn.goToDashboard = function () {

}
$.fn.Logout = function () {
    localStorage.clear();
}