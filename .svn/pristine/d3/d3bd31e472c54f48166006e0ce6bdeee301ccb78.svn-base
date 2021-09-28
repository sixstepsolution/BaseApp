var InspectionQuestions = [];
var InspectionList = [];
var InspectionListData = [];
var PreInspectionListData = [];
var PreInspectionQuestions = [];
$("#isLoading").hide();
$("#downloadLoader").hide();
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

function UpdateInspectiondata(appdata,id) {  
    console.log(appdata);
    $("#modalApplicationNo").text('');
    InspectionQuestions = [];
    modalApplicationNo = appdata;
    modalApplicationId = id;
    $.fn.GetInspectionList();
    $("#modalApplicationNo").text(appdata);
    $("#InspectionModal").modal();
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

$.fn.downloadCertificate = function (loadId, cloudId, appId) {
    //alert(appId);
    $("#" + loadId).show();
    $("#" + cloudId).hide();
    $("#downloadLoader").show();
    $.ajax({
        url: "../WL/GetInspectionPdfNew?appId=" + Number(appId),
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Download Certificate Result=========");
            console.log(data);
            if (data) {
                $("#downloadLoader").hide();
                $("#" + loadId).hide();
                $("#" + cloudId).show();
                var anchor = document.createElement('a');
                anchor.setAttribute('href', '../uploads/' + data);
                anchor.setAttribute('download', '');
                document.body.appendChild(anchor);
                anchor.click();
                anchor.parentNode.removeChild(anchor);
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
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
                            window.location.href = "../WL/PreInspectionList";
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
        
        formData.append("InspectionData", JSON.stringify(InspectionQuestions));
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
                    toastr.success('Inspection details submitted successfully.', "Success", {
                        "timeOut": "3000",
                        "extendedTImeout": "0",
                        "closeButton": true
                    });                                     
                    setTimeout(function () {
                        window.location.href = "../WL/InspectionList";
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
        toastr.warning('Please select minimum one question!');
    }
}