//Intialize variables
var uploadSignatureData = new Object();
var Customer_ContactPerson = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');


//Show and hide collapse panel
$.fn.showcollapse = function () {
    $('.panel-collapse').on('show.bs.collapse', function () {
        $(this).parent('.panel').find('.fa-minus').show();
        $(this).parent('.panel').find('.fa-plus').hide();
    })
    $('.panel-collapse').on('hide.bs.collapse', function () {
        $(this).parent('.panel').find('.fa-minus').hide();
        $(this).parent('.panel').find('.fa-plus').show();
    });
};

//Save Wayleave Account Details
$.fn.SaveWlAccountForm = function () {
    //$.fn.ValidateRSAIDNo(document.getElementById('identificationNumber').value);
    //var validIdNumber = $.fn.ValidateRSAIDNo(document.getElementById('identificationNumber').value);
    //alert(validIdNumber);
    $('#isAppLoading').show();
    var Customer_ContactPersonSingle = [];
    var formData = new FormData();
    var files = $('#tradeLicensefile').get(0).files;
    var files1 = $('#regCertificatefile').get(0).files;
    var files2 = $('#taxCertificatefile').get(0).files;
    $.fn.GetFormdataValues();

    formData.append("AccountData", JSON.stringify(wayleaveAccount));
    console.log(wayleaveAccount);
    for (var i = 0; i < files.length; i++) {
        formData.append("tradeLicensefile", files[i]);
    }
    for (var i = 0; i < files1.length; i++) {
        formData.append("regCertificatefile", files1[i]);
    }
    for (var i = 0; i < files2.length; i++) {
        formData.append("taxCertificatefile", files2[i]);
    }
    var validIdNumber = $.fn.ValidateRSAIDNo(document.getElementById('identificationNumber').value);
    //alert(validIdNumber);
    var formValid = $.fn.CheckFormValidations();
    if (formValid && validIdNumber) {
        $('#isAppLoading').show();
        var emailFormat = $.fn.validateEmail('email'); // This return result in Boolean type
        if (!emailFormat) {
            //$("#ContactEmail").css('color', 'red');
            toastr.warning('Invalid email address!', "Warning", {
                "timeOut": "0",
                "extendedTImeout": "0",
                "closeButton": true
            });
            return;
        }
        //alert(validIdNumber);
        //if (!validIdNumber) {
        //    return;
        //}
        if (Customer_ContactPerson.length === 0) {
            var fn = $("#ContactFirstName").val();
            var ln = $("#ContactLastName").val();
            var ce = $("#ContactEmail").val();
            var cn = $("#ContactNumber").val();
            var cd = $("#ContactDesignation").val();
            if (fn && ln && ce && cn && cd) {
                //if ($scope.isInnerFormValid) {
                var person = {};
                person.firstName = fn;
                person.lastName = ln;
                person.email = ce;
                person.contactNumber = cn;
                person.designation = cd;
                Customer_ContactPersonSingle.push(person);
                formData.append("ContactData", JSON.stringify(Customer_ContactPersonSingle));
            }
        }
        else {
            formData.append("ContactData", JSON.stringify(Customer_ContactPerson));
        }

        if (Customer_ContactPerson.length == 0) {

        }

        $.ajax({
            url: apiBaseUrl + 'add-wl-accounts',
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
                $('#isAppLoading').hide();
                if (data.emailExists) {
                    toastr.error('Contact person email already exist!');
                }
                else if (data) {
                    toastr.success(`Wayleave account created successfully!
<br /><div>Please write down below account number for future reference<br />Account Number : <b style='color:#00337f'>`+ data.accountNumber + `</b><br />
User Name : <b style='color:#00337f'>`+ data.accountUserName + `</b><br />
Password : <b style='color:#00337f'>`+ data.accountPassword + `</b>
</div>
`, "Success", {
                        "timeOut": "30000",
                        "extendedTImeout": "50000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../Home/WayleaveLogin";
                    }, 25000);
                }
                else if (data.exception) {
                    //console.log(textStatus);
                    //console.log(errorThrown);
                    toastr.error(data.exception);
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log(xhr);
                //alert(xhr);
                //console.log(textStatus);
                //console.log(errorThrown);
                toastr.error(errorThrown);
            }
        });
    }
    else {
        $('#isAppLoading').hide();

        if (!formValid)
            toastr.warning('* Fields are required!');
    }
};

$.fn.uploadDepartmentSignature = function () {
    $('#isAppLoading').show();
    var formData = new FormData();
    var files = $('#signaturefile').get(0).files;
    var ia = $('#IS_ACTIVE').val();

    if (files.length > 0 && (ia != "" && ia != undefined)) {

        uploadSignatureData.IS_ACTIVE = $('#IS_ACTIVE').val();
        //uploadSignatureData.userName = $('#CurrentUserName').val();
        //uploadSignatureData.userId = $('#CurrentUserId').val();
        //uploadSignatureData.userRole = $('#CurrentUserRole').val();
        //alert(files.length);
        ////$.fn.GetFormdataValues();
        //alert($("#CurrentUserDepartmentName").val());
        //alert($("#CurrentUserName").val());
        formData.append("userData", JSON.stringify(uploadSignatureData));
        //console.log(wayleaveAccount);
        var isUploadDocumentSizeNotValid = false;
        for (var i = 0; i < files.length; i++) {
            var isFileSizeValid = $.fn.CheckFileSize("signaturefile", files);
            if (isFileSizeValid) {
                formData.append("signaturefile", files[i]);
            }
            else {
                isUploadDocumentSizeNotValid = true;
            }
            
        }


        if (isUploadDocumentSizeNotValid) {
            return;
        }

        $.ajax({
            url: apiBaseUrl + 'upload-signature',
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
                $('#isAppLoading').hide();
                if (data.update) {
                    toastr.success(data.update, "Success", {
                        "timeOut": "3000",
                        "extendedTImeout": "5000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../WL/UploadSignature";
                    }, 5000);
                }
                else if (data.add) {
                    toastr.success(data.add, "Success", {
                        "timeOut": "3000",
                        "extendedTImeout": "5000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../WL/UploadSignature";
                    }, 5000);
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                console.log(xhr);
                //alert(xhr);
                //console.log(textStatus);
                //console.log(errorThrown);
                toastr.error(errorThrown);
            }
        });
    }
    else {
        $('#isAppLoading').hide();
        toastr.warning('* fields are required!');
    }
    
}

$.fn.CheckFileSize = function (id, fileContent) {
    console.log(fileContent);
    //$('#' + decsionID).get(0).files;
    if (!(document.getElementById(id).files[0].type.match(/image.*/))) {
        //alert('You can\'t upload this type of file.');
        $('#isAppLoading').hide();
        toastr.warning('Please upload image file!', "Warning", {
            "timeOut": "30000",
            "extendedTImeout": "50000",
            "closeButton": true
        });
        return;
    }
    if (fileContent[0].size > 5000000) {
        toastr.warning('Please upload file size less than 5MB <br/><b style="font-size:9pt!important">' + fileContent[0].name + '</b>', "Warning", {
            "timeOut": "30000",
            "extendedTImeout": "50000",
            "closeButton": true
        });
        $('#' + id).val(null);
        return false;
    }
    else {
        return true;
    }
}



