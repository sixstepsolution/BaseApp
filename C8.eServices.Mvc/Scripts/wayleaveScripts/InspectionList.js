var InspectionQuestions = [];
var InspectionList = [];
var InspectionListData = [];
var PreInspectionListData = [];
var PreInspectionQuestions = [];
$("#isLoading").hide();
var modalApplicationId = "";
var modalApplicationNo = "";
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
// loading master inspection list
$.fn.GetInspectionList = function () {
    InspectionList = [];
    InspectionListData = [];
    PreInspectionListData = [];
    $("#showInspectionList").show();
    $.ajax({
        url: apiBaseUrl + 'get-master-inspectionlist',
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,

        success: function (data, textStatus, xhr) {
            console.log("======Master inspection list Result=========");
            console.log(data);
            if (data) {
                
                $("#InspectionListData").empty();
                InspectionList = data;
                var index = InspectionList.filter(t => t.inspectioN_TYPE === 'post');
                var index1 = InspectionList.filter(t => t.inspectioN_TYPE === 'pre');
                InspectionListData = index;
                PreInspectionListData = index1;
                console.log(InspectionListData);
                //$("#InspectionListData").append('<tr><td colspan="2" style="text-align:left!important">Application No: <b class="text-red" style="font-size:12pt!important">'++'</b> </td></tr>');
                $.each(InspectionListData, function (data, value) {
                    var id = value.inS_ID + "Checklist";
                    $("#InspectionListData").append('<tr><td><input type="checkbox" onclick=$.fn.ChkInspectionQuestions() name=' + id + ' id=' + id + ' value=' + value.inspectioN_NAME + '></td><td>&nbsp;&nbsp;<b>' + value.inspectioN_NAME + '</b></td></tr>');
                });
                $("#showInspectionList").hide();
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    }); 
}

function UpdateInspectiondata(appdata,id) {  
    console.log(appdata);
    InspectionQuestions = [];
    modalApplicationNo = appdata;
    modalApplicationId = id;
    $.fn.GetInspectionList();
    $("#InspectionModal").modal();
}

$.fn.ChkInspectionQuestions = function () {
    InspectionQuestions = [];
    InspectionListData.forEach(function (i) {
        var id = i.inS_ID + 'Checklist';
        if ($("#" + id).is(":checked") == true) {
            InspectionQuestions.push({
                INS_ID: i.inS_ID,
                INSPECTION_NAME: $("#" + id + ":checked").val(),
                APP_ID: modalApplicationId
            })
        }
    });
    console.log("InspectionQuestions");
    console.log(InspectionQuestions);
}
$.fn.ChkPreInspectionQuestions = function () {
    //alert();
    PreInspectionQuestions = [];
    PreInspectionListData.forEach(function (i) {
        var id = i.inS_ID + 'Checklist';
        if ($("#" + id).is(":checked") == true) {
            PreInspectionQuestions.push({
                INS_ID: i.inS_ID,
                INSPECTION_NAME: $("#" + id + ":checked").val(),
                APP_ID: modalApplicationId,
                INSPECTION_TYPE: 'pre'
            })
        }
    });
    console.log("PreInspectionQuestions");
    console.log(PreInspectionQuestions);
}

$.fn.SavePreInspectionDetails = function (inspectiontype) {
    //alert($scope.PreInspectionStatus);
    delete $scope.ErrorMsg;
    if (PreInspectionQuestions.length > 0) {
        if ($scope.PreInspectionStatus != undefined && $scope.PreInspectionStatus != "") {
            var inspectionStatusdata = [];
            inspectionStatusdata.push({
                ApplicationId: $scope.modalApplicationId,
                InspectionType: inspectiontype,
                PreInspectionStatus: $scope.PreInspectionStatus
            });

            console.log("inspectionStatusdata");
            console.log(inspectionStatusdata);


            $scope.isLoading = true;
            var formData = new FormData();
            $http({
                method: 'post',
                url: appSetting.apiBaseUrl + 'api/update-inspection-details',
                headers: { 'Content-Type': undefined },

                transformRequest: function () {
                    formData.append("InspectionData", angular.toJson(PreInspectionQuestions));
                    formData.append("ApplicationId", angular.toJson($scope.modalApplicationId));
                    formData.append("InspectionStatus", angular.toJson(inspectionStatusdata));
                    return formData;
                }
            }).then(function (res) {
                if (res.data) {
                    alert("Pre-inspection details submitted successfully.");
                    window.location.href = "../WL/PreInspectionList";
                }
                console.log(res);
            });
        }
        else {
            $scope.ErrorMsg = "Please select status!";
        }

    }
    else {
        $scope.ErrorMsg = "Please select minimum one question!";
    }
}

$.fn.SaveInspectionDetails = function (inspectiontype) {
    $("#ErrorMsg").text('');
    $("#isLoading").hide();
    if (InspectionQuestions.length > 0) {
        var inspectionStatusdata = [];
        inspectionStatusdata.push({
            ApplicationId: modalApplicationId,
            InspectionType: inspectiontype,
            PreInspectionStatus: ""
        });
        $("#isLoading").show();
        var formData = new FormData();
        
        formData.append("InspectionData", JSON.stringify(PreInspectionQuestions));
        formData.append("ApplicationId", JSON.stringify(modalApplicationId));
        formData.append("InspectionStatus", JSON.stringify(inspectionStatusdata));
        $.ajax({
            url: apiBaseUrl + 'update-inspection-details',
            type: 'POST',
            processData: false,
            contentType: false,
            cache: false,
            enctype: 'multipart/form-data',
            dataType: 'json',
            data: formData,
            success: function (data, textStatus, xhr) {
                console.log("======Result=========");
                console.log(data);
                //console.log(data.accountUserName);
                $("#isLoading").hide();
                if (data) {
                    alert("Inspection details submitted successfully.");
                    window.location.href = "../WL/InspectionList";
                }
                //if (alertStatus == "resubmission") {
                //    toastr.success('Application form re-submitted successfully');
                //    //alert("Application form saved successfully.");
                //    //setTimeout(function () {
                //    //    window.location.href = "../WayleaveAccount/Index";
                //    //}, 2000)

                //}
                //else {
                //    toastr.success('Application form saved successfully');
                //    //alert("Application form saved successfully.");
                //    setTimeout(function () {
                //        window.location.href = "../WayleaveAccount/Index";
                //    }, 2000)

                //}
            },
            error: function (xhr, textStatus, errorThrown) {
                //console.log('Error in Operation');
                toastr.error('Error in Operation');
            }
        });
    }
    else {
        ErrorMsg = "Please select minimum one question!";
    }
}