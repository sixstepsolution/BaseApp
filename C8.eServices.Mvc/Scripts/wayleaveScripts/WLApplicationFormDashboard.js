//var LeftMenuAlerts = [];
var LeftAccountsMenuAlerts = [];
function OpenWayleaveApplicationForm(id) {
    localStorage.setItem("WLAppId", id);
    window.location.href = '../WL/ApplicationFormNew?id='+id;
}

//$.fn.LoadApplicationsAlertsWithCounts("Y");