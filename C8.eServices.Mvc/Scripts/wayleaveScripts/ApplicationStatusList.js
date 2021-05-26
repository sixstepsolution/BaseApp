
//Open and bind wayleave application form information by click on application id form dashboard
$.fn.OpenWayleaveApplicationForm = function (id) {
    sessionStorage.setItem("appId", id);
    window.location.href = '../wl/applicationForm';
}
$.fn.downloadCertificate = function (loadId, cloudId, appId) {
    alert(loadId);
    alert(cloudId);
    alert(appId);
    $("#" + loadId).show();
    $("#" + cloudId).hide();   

    $.ajax({
        url: "../WL/GetInspectionPdf?appId=" + Number(appId),
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