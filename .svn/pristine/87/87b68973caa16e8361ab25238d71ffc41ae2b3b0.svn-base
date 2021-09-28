var apiBaseUrl = localStorage.getItem('apiBaseUrl');
$("#IsShowLoader").hide();
$("#IsShowLoader1").show();
function forgotAccountPassword() {
    
    if ($("#forgotPasswordEmail").val() != "" && $("#forgotPasswordEmail").val() != undefined) {

        var emailFormat = $.fn.validateEmail('forgotPasswordEmail'); // This return result in Boolean type
        if (!emailFormat) {
            //$("#ContactEmail").css('color', 'red');
            toastr.warning('Invalid email address!', "Warning", {
                "timeOut": "0",
                "extendedTImeout": "0",
                "closeButton": true
            });
            return;
        }
        $("#IsShowLoader").show();
        $("#IsShowLoader1").hide();
        var emailAddress = $("#forgotPasswordEmail").val();
        $.ajax({
            url: apiBaseUrl + 'get-WLAccount-PasswordDetails/' + emailAddress,
            type: 'GET',
            processData: false,
            contentType: false,
            cache: false,
            enctype: 'multipart/form-data',
            dataType: 'json',
            //data: formData,
            success: function (data, textStatus, xhr) {
                console.log("======Forgot password Result=========");
                console.log(data);
                $("#IsShowLoader").hide();
                $("#IsShowLoader1").show();
                
                if (data == "success") {
                    toastr.success('Password details has been sent to your registered email address.');
                   
                    setTimeout(function () {
                        $("#modalForgotPassword").modal('hide');
                    }, 2000);
                }
                else if (data == "error") {
                    toastr.error('Wayleave account not found to this email address!');
                }
                else {
                    toastr.error('Wayleave account not found to this email address!');
                }
                
            },
            error: function (xhr, textStatus, errorThrown) {
                toastr.error('Error in Operation');
            }
        });
    }
    else {
        toastr.warning('Please enter email address!');
    }
}

//Email validation
$.fn.validateEmail = function (id) {

    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($("#" + id).val())) {
        $("#" + id).css('color', 'black');
        return (true)
    }
    $("#" + id).css('color', 'red');
    return false;
    //var emailFormat1 = re.test($("#"+id).val()); // This return result in Boolean type
    //if (!emailFormat1) {
    //    $("#"+id).css('color', 'red');
    //}
    //else {
    //    $("#"+id).css('color', 'black');
    //}
};