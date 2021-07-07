//Declare varaible
var isFilter = false;
var selectedApplicationList = [];
var accountCounts = [];
var AccountNumberList = [];
var AppFirstNamesList = [];
var AppLastNamesList = [];
var AppMobilesList = [];
var AppEmailsList = [];
var SeriveTypesList = [];
var AppCreated_ByList = [];
var created_byID = 0;
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
$("#spinnerLoader").hide();
var LeftMenuAlerts = [];
$(function () {    
    var accountNumberList = {};
    var nameList = {};
    var surnameList = {};
    var companyList = {};
    var emailList = {};
    var mobileList = {};
    const noResult = ['No Result Found!'];
    localStorage.setItem("accountId", "");
    localStorage.setItem("title", "");
    $("#account_number").autocomplete({
        minLength: 1,
        maxShowItems: 5,
        source: function (request, response) {
            var term = request.term;
            if (term in accountNumberList) {
                response(accountNumberList[term]);
                return;
            }
            $.getJSON(apiBaseUrl + 'get-wl-account-numbers/' + $("#account_number").val(), request, function (data, status, xhr) {
                console.log(data);
                if (data.length>0) {
                    accountNumberList[term] = data;
                    response(data);
                }
                else {
                    accountNumberList[term] = noResult;
                    response(noResult);
                }     
            });
        }
    }).data("ui-autocomplete")._renderItem = function (ul, item) {
        let txt = String(item.value).replace(new RegExp(this.term, "gi"), "<b class='text-red'>$&</b>");
        return $("<li></li>")
            .data("ui-autocomplete-item", item)
            .append("<a>" + txt + "</a>")
            .appendTo(ul);
    };
    $("#contactPersonName").autocomplete({
        minLength: 1,
        maxShowItems: 5,
        source: function (request, response) {
            var term = request.term;
            if (term in nameList) {
                response(nameList[term]);
                return;
            }
            $.getJSON(apiBaseUrl + 'get-wl-accounts-person-names/' + $("#contactPersonName").val(), request, function (data, status, xhr) {
                console.log(data);
                if (data.length > 0) {
                    nameList[term] = data;
                    response(data);
                }
                else {
                    nameList[term] = noResult;
                    response(noResult);
                }
            });
        }
    }).data("ui-autocomplete")._renderItem = function (ul, item) {
        let txt = String(item.value).replace(new RegExp(this.term, "gi"), "<b class='text-red'>$&</b>");
        return $("<li></li>")
            .data("ui-autocomplete-item", item)
            .append("<a>" + txt + "</a>")
            .appendTo(ul);
    };
    $("#contactPersonLastName").autocomplete({
        minLength: 1,
        maxShowItems: 5,
        source: function (request, response) {
            var term = request.term;
            if (term in surnameList) {
                response(surnameList[term]);
                return;
            }
            $.getJSON(apiBaseUrl + 'get-wl-accounts-person-lastnames/' + $("#contactPersonLastName").val(), request, function (data, status, xhr) {
                console.log(data);
                if (data.length > 0) {
                    surnameList[term] = data;
                    response(data);
                }
                else {
                    surnameList[term] = noResult;
                    response(noResult);
                }
            });
        }
    }).data("ui-autocomplete")._renderItem = function (ul, item) {
        let txt = String(item.value).replace(new RegExp(this.term, "gi"), "<b class='text-red'>$&</b>");
        return $("<li></li>")
            .data("ui-autocomplete-item", item)
            .append("<a>" + txt + "</a>")
            .appendTo(ul);
    };
    $("#companyFullName").autocomplete({
        minLength: 1,
        maxShowItems: 5,
        source: function (request, response) {
            var term = request.term;
            if (term in companyList) {
                response(companyList[term]);
                return;
            }
            $.getJSON(apiBaseUrl + 'get-wl-account-company-names/' + $("#companyFullName").val(), request, function (data, status, xhr) {
                console.log(data);
                if (data) {
                    companyList[term] = data;
                    response(data);
                }
                else {
                    companyList[term] = data;
                    response(data);
                }                 
            });
        }
    }).data("ui-autocomplete")._renderItem = function (ul, item) {
        let txt = String(item.value).replace(new RegExp(this.term, "gi"), "<b class='text-red'>$&</b>");
        return $("<li></li>")
            .data("ui-autocomplete-item", item)
            .append("<a>" + txt + "</a>")
            .appendTo(ul);
    };
    $("#email").autocomplete({
        minLength: 1,
        maxShowItems: 5,
        source: function (request, response) {
            var term = request.term;
            if (term in emailList) {
                response(emailList[term]);
                return;
            }
            $.getJSON(apiBaseUrl + 'get-wl-account-emails/' + $("#email").val(), request, function (data, status, xhr) {
                console.log(data);
                if (data) {
                    emailList[term] = data;
                    response(data);
                }
                else {
                    emailList[term] = data;
                    response(data);
                }
            });
        }
    }).data("ui-autocomplete")._renderItem = function (ul, item) {
        let txt = String(item.value).replace(new RegExp(this.term, "gi"), "<b class='text-red'>$&</b>");
        return $("<li></li>")
            .data("ui-autocomplete-item", item)
            .append("<a>" + txt + "</a>")
            .appendTo(ul);
    };
    $("#mobileNumber").autocomplete({
        minLength: 1,
        maxShowItems: 5,
        source: function (request, response) {
            var term = request.term;
            if (term in mobileList) {
                response(mobileList[term]);
                return;
            }
            $.getJSON(apiBaseUrl + 'get-wl-account-mobiles/' + $("#mobileNumber").val(), request, function (data, status, xhr) {
                console.log(data);
                if (data) {
                    mobileList[term] = data;
                    response(data);
                }
                else {
                    mobileList[term] = data;
                    response(data);
                }
            });
        }
    }).data("ui-autocomplete")._renderItem = function (ul, item) {
        let txt = String(item.value).replace(new RegExp(this.term, "gi"), "<b class='text-red'>$&</b>");
        return $("<li></li>")
            .data("ui-autocomplete-item", item)
            .append("<a>" + txt + "</a>")
            .appendTo(ul);
        };

    $(".datepicker").datepicker({
        dateFormat: 'yy-mm-dd',
        autoSize: true,
        numberOfMonths: 1,
        //minDate: 0,
        //beforeShowDay: $.datepicker.noWeekends,
        showOptions: { origin: ["top", "center"] }
    });
});

$.fn.LoadAccountsWithCounts = function () {
    // loading applaiction counts
    wayleaveAccountDashboardService.getWayleaveAccountsWithCounts().then(function (result) {
        console.log('load getWayleaveAccountsWithCounts onload');
        console.log(result.data);
        accountCounts = result.data;

        //$rootScope.$emit("GetAllIWayleaveAccountsWithCounts", {});

    }, function (error) {
        console.log(error.status)
        console.log("Bad Request Process");
    });
}

$.fn.filterApplicationByKeywords = function () {
    $scope.isFilter = true;
    $scope.accountCounts = [];
    console.log('filter');
    $scope.FilterModels.acount_no = $("#Account_Number_value").val();
    $scope.FilterModels.first_name = $("#First_Name_value").val();
    $scope.FilterModels.last_name = $("#Last_Name_value").val();
    $scope.FilterModels.mobile = $("#MobileAutocomplete_value").val();
    $scope.FilterModels.email = $("#EmailAutocomplete_value").val();

    $scope.FilterModels.created_by = $scope.created_byID;//$("#Created_By_value").val();
    $scope.FilterModels.consultant_number = $("#Consultant_Number_value").val();
    $scope.FilterModels.consultant_company_name = $("#Consultant_Company_Name_value").val();
    $scope.FilterModels.consultant_first_name = $("#Consultant_First_Name_value").val();
    $scope.FilterModels.consultant_last_name = $("#Consultant_Last_Name_value").val();
    $scope.FilterModels.consultant_email = $("#Consultant_Email_value").val();
    $scope.FilterModels.project_name = $("#Project_Name_value").val();
    $scope.FilterModels.region_code = $("#Region_Code_value").val();
    $scope.FilterModels.Contact_Person = $("#Contact_Person_value").val();
    console.log($scope.FilterModels);
    wayleaveAccountDashboardService.getApplicationsWithCountsBySearch($scope.FilterModels).then(function (result) {
        console.log(result.data);
        $scope.accountCounts = result.data;

        //$rootScope.$emit("GetAllItemsWithQuantityByParent", { gg: result.data });
        $scope.isFilter = false;
    }, function (error) {
        $scope.isFilter = false;
        console.log(error.status)
        console.log("Bad Request Process");
    });
}

$.fn.AfterSelectedCreated_By = function (selected) {
    //alert($("#Created_By_value").val())
    if (selected) {
        console.log(selected.originalObject);
        //$scope.created_byID = selected.originalObject.id;
        //$scope.FilterModels.acount_no = selected.originalObject.account_no;

    }

}

// loading service types
$.fn.GetServiceTypes = function () {
    $.ajax({
        url: apiBaseUrl + 'get-serive-types',
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Service Types Result=========");
            console.log(data);
            $.each(data, function (data, value) {
                $("#SERVICE_TYPE").append($("<option></option>").val(value.id).html(value.description));
            })
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
}

// loading appliaction status types
$.fn.GetApplicationStausTypes = function () {
    $.ajax({
        url: apiBaseUrl + 'get-application-staus-types',
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Service Types Result=========");
            console.log(data);
            $.each(data, function (data, value) {
                $("#AppStatusType").append($("<option></option>").val(value.id).html(value.description));
            })
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
}


// loading master data for dropdown list here....
$.fn.Init = function () {
    $.fn.GetApplicationStausTypes();
    $.fn.LoadWayleaveAccountsAlertsWithCounts();
}
$.fn.Init();


$.fn.filterWayleaveByKeywords = function () {
    $("#spinnerLoader").show();
}

function goToWayleaveAccount(account_number) {
    //alert(account_number);
    //localStorage.setItem("accountId", account_number);
    //localStorage.setItem("title", "Verifing");
    window.location.href = '../WL/WayleaveAccount?id=' + account_number;
}