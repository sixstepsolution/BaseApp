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

$.fn.GetPreInspectionList = function () {
    PreInspectionListData = [];
    $("#showPreInspectionList").show();
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

                $("#PreInspectionListData").empty();
                InspectionList = data;
                var index1 = InspectionList.filter(t => t.inspectioN_TYPE === 'pre');
                PreInspectionListData = index1;
                console.log(PreInspectionListData);
                $.each(PreInspectionListData, function (data, value) {
                    var id = value.inS_ID + "Checklist";
                    $("#PreInspectionListData").append('<tr><td><input type="checkbox" onclick=$.fn.ChkPreInspectionQuestions() name=' + id + ' id=' + id + ' value=' + value.inspectioN_NAME + '></td><td>&nbsp;&nbsp;<b>' + value.inspectioN_NAME + '</b></td></tr>');
                });
                $("#showPreInspectionList").hide();
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
}

function UpdatePreInspectiondata(appdata, id) {
    console.log(appdata);
    $("#modalApplicationNo").text('');
    PreInspectionQuestions = [];
    modalApplicationNo = appdata;
    modalApplicationId = id;
    $.fn.GetPreInspectionList();
    $("#modalApplicationNo").text(appdata);
    $("#PreInspectionModal").modal();
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
    $("#ErrorMsg").text('');
    $("#isLoading").hide();
    if (PreInspectionQuestions.length > 0) {
        if ($("#PreInspectionStatus").val() != undefined && $("#PreInspectionStatus").val() != "") {
            var inspectionStatusdata = [];
            inspectionStatusdata.push({
                ApplicationId: modalApplicationId,
                InspectionType: inspectiontype,
                PreInspectionStatus: $("#PreInspectionStatus").val()
            });

            console.log("PreinspectionStatusdata");
            console.log(inspectionStatusdata);
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
                    if (data) {
                        $("#isLoading").hide();
                        toastr.success('Pre-Inspection details submitted successfully.', "Success", {
                            "timeOut": "3000",
                            "extendedTImeout": "0",
                            "closeButton": true
                        });
                        setTimeout(function () {
                            window.location.href = BaseUrl+"WL/PreInspectionList";
                        }, 2000)
                    }
                },
                error: function (xhr, textStatus, errorThrown) {
                    //console.log('Error in Operation');
                    toastr.error('Error in Operation');
                }
            });
        }
        else {
            toastr.warning("Please select status!");
        }
    }
    else {
        toastr.warning("Please select minimum one question!");
    }
}
