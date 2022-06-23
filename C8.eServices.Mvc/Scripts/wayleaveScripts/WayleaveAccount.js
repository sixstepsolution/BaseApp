//Intialize variables
var wayleaveAccount = new Object();
var Customer_ContactPerson = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
var re = /^\w+([-+.'][^\s]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //Email validation regex
$('#isAppLoading').hide();
$('#isAppUpdateLoading').hide();
$('#accordionApprove').hide();
$('#WlAccountComments').hide();
$("#ShowUpdateButton").hide();
$("#ShowConfirmPassword").show();

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

//function ValidateEmail(mail) {
//    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value)) {
//        return (true)
//    }
//    alert("You have entered an invalid email address!")
//    return (false)
//}
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

//Identification number validation
$.fn.validateIdentificationNumber = function (id) {
    //var identificationNumber = $("#" + id).val();
    //var idLength = $("#" + id).val();
    if ($("#" + id).val().length==13) {
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

//alert(localStorage.getItem('apiBaseUrl'));

//Show and hide New/Renewel Account details
$.fn.showAccountScreen = function (val) {
    $("#IsNewAccount").hide();
    $("#IsRenewalAccount").hide();
    if (val === 'New') {
        $("#IsNewAccount").show();
    }
    else {
        $("#IsRenewalAccount").show();
    }
}

//Adding contact person
$.fn.AddContactPerson = function () {
    //alert();
    var fn = $("#ContactFirstName").val();
    var ln = $("#ContactLastName").val();
    var ce = $("#ContactEmail").val();
    var cn = $("#ContactNumber").val();
    var cd = $("#ContactDesignation").val();
    //alert(fn);

    if (fn && ln && ce && cn && cd) {
        var emailFormat = re.test($("#ContactEmail").val()); // This return result in Boolean type
        if (!emailFormat) {
            //$("#ContactEmail").css('color', 'red');
            toastr.warning('Invalid email address!', "Warning", {
                "timeOut": "0",
                "extendedTImeout": "0",
                "closeButton": true
            });
            return;
        }

        //if ($scope.isInnerFormValid) {

        var person = {};
        person.firstName = fn;
        person.lastName = ln;
        person.email = ce;
        person.contactNumber = cn;
        person.designation = cd;
        // person.modifiedDate = null;
        var index = Customer_ContactPerson.findIndex(x => x.contactNumber === cn);
        //alert(index)
        if (index == -1) {
            //jQuery('#selector').html('');
            $('#ContactTableBody').empty();
            //alert('success');
            Customer_ContactPerson.push(person);
            $("#ShowContactPersonFooter").show();
            console.log("Customer_ContactPerson details");
            console.log(Customer_ContactPerson);
            for (var i = 0; i < Customer_ContactPerson.length; i++) {
                $('#ContactTableBody').append('<tr><td><input type="radio" name="radioContactPerson" id="' + Customer_ContactPerson[i].contactNumber + '" value="0" /></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].firstName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].lastName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].contactNumber + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].email + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].designation + '"></td> <td colspan="2"></td>  </tr>');
            }
            $("#ContactFirstName").val('');
            $("#ContactLastName").val('');
            $("#ContactEmail").val('');
            $("#ContactNumber").val('');
            $("#ContactDesignation").val('');
        }
        else {
            //alert("Contact number already exist!");
            toastr.warning('Contact number already exist!', "Warning", {
                "timeOut": "0",
                "extendedTImeout": "0",
                "closeButton": true
            });
        }
        console.log(Customer_ContactPerson);
    }
    else {
        //alert("Please add contact details!");
        toastr.warning('Please add contact details!', "Warning", {
            "timeOut": "0",
            "extendedTImeout": "0",
            "closeButton": true
        });
        $("#ShowContactPersonFooter").show();
    }
};

//Remove contact person from list
$.fn.removeContactPerson = function () {
    console.log(Customer_ContactPerson);
    var isChecked = false;
    if (Customer_ContactPerson.length > 0) {
        if (window.confirm("Do you want to delete: " + name)) {

            for (var i = 0; i < Customer_ContactPerson.length; i++) {
                var d = Customer_ContactPerson[i];
                var decsionID = d.contactNumber;

                if ($('#' + decsionID).is(":checked")) {
                    //alert(decsionID);
                    isChecked = true;
                    var searchCode = d.contactNumber;
                    var index = Customer_ContactPerson.filter((item) => item.contactNumber === searchCode);//Customer_ContactPerson.findIndex(x => x.contactNumber === searchCode)
                    Customer_ContactPerson.splice(index, 1);
                }
            }

            if (Customer_ContactPerson.length > 0 && !isChecked) {
                // alert("Please select contact person!");
                // Display an error toast, with a title
                toastr.warning('Please select contact person!', "Warning", {
                    "timeOut": "0",
                    "extendedTImeout": "0",
                    "closeButton": true
                });
            }

            $('#ContactTableBody').empty();
            $("#ShowContactPersonFooter").show();
            for (var i = 0; i < Customer_ContactPerson.length; i++) {
                $('#ContactTableBody').append('<tr><td><input type="radio" name="radioContactPerson" id="' + Customer_ContactPerson[i].contactNumber + '" value="0" /></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].firstName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].lastName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].contactNumber + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].email + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].designation + '"></td> <td colspan="2"></td>  </tr>');
            }
        }
    }
    else {
        //alert("Contact details can't be empty!");
        // Display an error toast, with a title
        toastr.warning('Contact details can`t be empty!', "Warning", {
            "timeOut": "0",
            "extendedTImeout": "0",
            "closeButton": true
        });
    }

}

//View Uploaded files
$.fn.OpenFileNewTab = function (flag) {
    
    var file = "";

    switch (flag) {
        case "trade":
            file = wayleaveAccount.tradeLicenseFile;
            break;
        case "registartion":
            file = wayleaveAccount.registartionCertificate;
            break;
        case "tax":
            file = wayleaveAccount.taxCertificate;
            break;
    }

    var filename = '../uploads/' + file;
    window.open(filename);
}

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
    var isUploadDocumentSizeNotValid = false;
    formData.append("AccountData", JSON.stringify(wayleaveAccount));
    console.log(wayleaveAccount);
    for (var i = 0; i < files.length; i++) {
        var isFileSizeValid = $.fn.CheckFileSize("tradeLicensefile", files);
        if (isFileSizeValid) {
            formData.append("tradeLicensefile", files[i]);
        }
        else {
            isUploadDocumentSizeNotValid = true;
        }
        
    }
    for (var i = 0; i < files1.length; i++) {
        var isFileSizeValid = $.fn.CheckFileSize("regCertificatefile", files1);
        if (isFileSizeValid) {
            formData.append("regCertificatefile", files1[i]);
        }
        else {
            isUploadDocumentSizeNotValid = true;
        }        
    }
    for (var i = 0; i < files2.length; i++) {
        var isFileSizeValid = $.fn.CheckFileSize("taxCertificatefile", files2);
        if (isFileSizeValid) {
            formData.append("taxCertificatefile", files2[i]);
        }
        else {
            isUploadDocumentSizeNotValid = true;
        }
        
    }

    if (isUploadDocumentSizeNotValid) {
        return;
    }

    var validIdNumber = $.fn.ValidateRSAIDNo(document.getElementById('identificationNumber').value);
    //alert(validIdNumber);
    var formValid = $.fn.CheckFormValidations();
    //$.fn.validateEmail('email');
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
            $('#isAppLoading').hide();
            return;
        }

        var checkPwd = $.fn.ValidatePassword('PASSWORD');// This return result in Boolean type
        var checkConfirmPwd = $.fn.CheckConfirmPassword('PASSWORD', 'CONFIRMPASSWORD');// This return result in Boolean type
        if (!checkPwd) {
            $('#isAppLoading').hide();
            return;
        }
        if (!checkConfirmPwd) {
            $('#isAppLoading').hide();
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
                        window.location.href = BaseUrl+"Home/WayleaveLogin";
                    }, 15000);
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

$.fn.ShowUpdateButtons = function () {
    //alert();
    $("#ShowUpdateButton").show();
    $("#IsWayleaveAccountResubmit").show();
}


//Load Wayleave Account Details
$.fn.LoadWayleaveAccountDetails = function (accountNumber,status) {
    //alert(accountNumber);
    Customer_ContactPerson = [];
    if (status != null && status != "") {
        $("#ShowUpdateButton").show();
    }
    $.ajax({
        url: apiBaseUrl + 'get-WLAccount-by-account-number/' + accountNumber,
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Account Data Result=========");
            console.log(data);
            $("#ShowConfirmPassword").hide();
            var alternateContactdata = data.accountContactModelDto;
            wayleaveAccount.statusId = data.statusId;
            wayleaveAccount.account_id = data.account_id;
            $('#IsWayleaveAccountSubmit').hide();
            $('#accordionApprove').hide();
            $('#PASSWORD').val(data.password);
            $('#CONFIRMPASSWORD').val(data.password);
            $('#userType').val(data.userType);
            $('#companyName').val(data.companyName);
            $('#companyFullName').val(data.companyFullName);
            $('#companyRegistrationNumber').val(data.companyRegistrationNumber);
            //$('#tradeLicenseExpirationDate').val(data.tradeLicenseExpirationDate);

            if (data.tradeLicenseExpirationDate != undefined && data.tradeLicenseExpirationDate != "" && data.tradeLicenseExpirationDate != null) {
                var dt = data.tradeLicenseExpirationDate;
                var ar = dt.split('-');
                var tradeLicenseDate = ar[2] + "-" + ar[1] + "-" + ar[0];
                $('#tradeLicenseExpirationDate').val(tradeLicenseDate);
            }


            $('#contactPersonFirstName').val(data.contactPersonFirstName);
            $('#contactPersonLastName').val(data.contactPersonLastName);
            $('#designation').val(data.designation);
            $('#telephoneNumber').val(data.telephoneNumber);
            $('#mobileNumber').val(data.mobileNumber);
            $('#email').val(data.email);
            $('#fax').val(data.fax);
            $('#streetName').val(data.streetName);
            $('#city').val(data.city);
            $('#province').val(data.province);
            $('#country').val(data.country);
            $('#postCode').val(data.postCode);

            $('#tradeLicenseSection').hide();
            $('#regCertificateSection').hide();
            $('#taxCertificateSection').hide();
            $('#tradeLicenseView').show();
            $('#regCertificateView').show();
            $('#taxCertificateView').show();
            $('#WlAccountStatus').text(data.status);

            $('#identificationNumber').val(data.identificationNumber);
            $('#contactPersonGender').val(data.contactPersonGender);
            $('#suburb').val(data.suburb);
            

            setTimeout(function () {
                $.fn.GetFormdataValues();
            }, 1000);

            
            
            $('#ContactTableBody').empty();
            //alert('success');
            $("#ShowContactPersonFooter").show();

            for (var i = 0; i < alternateContactdata.length; i++) {
                var value = alternateContactdata[i];
                Customer_ContactPerson.push({
                    contactId: value.contactId,
                    firstName: value.firstName,
                    lastName: value.lastName,
                    email: value.email,
                    contactNumber: value.contactNumber,
                    designation: value.designation,
                });

                //$('#ContactTableBody').append('<tr><td><input type="radio" name="radioContactPerson" id="' + Customer_ContactPerson[i].contactNumber + '" value="0" /></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].firstName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].lastName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].contactNumber + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].email + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].designation + '"></td> <td colspan="2"></td>  </tr>');
            }

            for (var i = 0; i < Customer_ContactPerson.length; i++) {
                $('#ContactTableBody').append('<tr><td><input type="radio" name="radioContactPerson" id="' + Customer_ContactPerson[i].contactNumber + '" value="0" /></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].firstName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].lastName + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].contactNumber + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].email + '"></td><td><input class="form-control" type="text" value="' + Customer_ContactPerson[i].designation + '"></td> <td colspan="2"></td>  </tr>');
            }

            $("#ContactFirstName").val('');
            $("#ContactLastName").val('');
            $("#ContactEmail").val('');
            $("#ContactNumber").val('');
            $("#ContactDesignation").val('');

            if (data.statusId == 7) {
                $('#IsWayleaveAccountResubmit').show();
            }
            if (data.status == 'Rejected') {
                $('#taxCertificateSection').show();
                $('#WlAccountComments').show();
                $('#WlAccountStatusComments').text(data.comments);
            }
            
            //set uploadcertificates
            wayleaveAccount.taxCertificate = data.taxCertificate;
            wayleaveAccount.registartionCertificate = data.registartionCertificate;
            wayleaveAccount.tradeLicenseFile = data.tradeLicenseFile;
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
};

$.fn.GetFormdataValues = function () {
    wayleaveAccount.userType = $('#userType').val();
    wayleaveAccount.companyName = $('#companyName').val();
    wayleaveAccount.companyFullName = $('#companyFullName').val();
    wayleaveAccount.companyRegistrationNumber = $('#companyRegistrationNumber').val();
    wayleaveAccount.tradeLicenseExpirationDate = $('#hdntradeLicenseExpirationDate').val();//$('#tradeLicenseExpirationDate').val();
    wayleaveAccount.contactPersonFirstName = $('#contactPersonFirstName').val();
    wayleaveAccount.contactPersonLastName = $('#contactPersonLastName').val();
    wayleaveAccount.designation = $('#designation').val();
    wayleaveAccount.telephoneNumber = $('#telephoneNumber').val();
    wayleaveAccount.mobileNumber = $('#mobileNumber').val();
    wayleaveAccount.email = $('#email').val();
    wayleaveAccount.fax = $('#fax').val();
    wayleaveAccount.streetName = $('#streetName').val();
    wayleaveAccount.city = $('#city').val();
    wayleaveAccount.province = $('#province').val();
    wayleaveAccount.country = $('#country').val();
    wayleaveAccount.postCode = $('#postCode').val();
    wayleaveAccount.identificationNumber = $('#identificationNumber').val();
    wayleaveAccount.contactPersonGender = $('#contactPersonGender').val();
    wayleaveAccount.suburb = $('#suburb').val();
    wayleaveAccount.password = $('#PASSWORD').val();
};

$.fn.CheckFormValidations = function () {
    var isFormValid = false;
    var ut=$('#userType').val();
    var cn=$('#companyName').val();
    var cf=$('#companyFullName').val();
    //$('#companyRegistrationNumber').val();
    //$('#tradeLicenseExpirationDate').val();
    var cpf=$('#contactPersonFirstName').val();
    var cpl=$('#contactPersonLastName').val();
    var des=$('#designation').val();
    //$('#telephoneNumber').val();
    var mb=$('#mobileNumber').val();
    var em = $('#email').val();
    var inum = $('#identificationNumber').val();
    var cpg = $('#contactPersonGender').val();
    var sub = $('#suburb').val();
    //$('#fax').val();
    var sn=$('#streetName').val();
    var ct=$('#city').val();
    var pv=$('#province').val();
    var cn=$('#country').val();
    var pc = $('#postCode').val();

    var pwd = $('#PASSWORD').val();
    var cpwd = $('#CONFIRMPASSWORD').val();
    if (ut != undefined && ut != "" && cn != undefined && cn != "" && cf != undefined && cf != "" && cpf != undefined && cpf != ""
        && cpl != undefined && cpl != "" && des != undefined && des != "" && mb != undefined && mb != "" && em != undefined && em != ""
        && sn != undefined && sn != "" && ct != undefined && ct != "" && pv != undefined && pv != "" && cn != undefined && cn != "" &&
        pc != undefined && pc != "" && inum != undefined && inum != "" && cpg != undefined && cpg != "" && sub != undefined && sub != "" && pwd != undefined && pwd != "" && cpwd != undefined && cpwd != "") {
        isFormValid = true;
        return isFormValid;
    }
    else {        
        isFormValid = false;
        return isFormValid;
    }
}

/*..............Update Application form details..................*/

$.fn.UpdateWlAccountForm = function () {
    $('#isAppUpdateLoading').show();
    var Customer_ContactPersonSingle = [];
    var formData = new FormData();
    var files = $('#tradeLicensefile').get(0).files;
    var files1 = $('#regCertificatefile').get(0).files;
    var files2 = $('#taxCertificatefile').get(0).files;
    $.fn.GetFormdataValues();

    formData.append("AccountData", JSON.stringify(wayleaveAccount));

    var isUploadDocumentSizeNotValid = false;

    //for (var i = 0; i < files.length; i++) {
    //    formData.append("tradeLicensefile", files[i]);
    //}
    //for (var i = 0; i < files1.length; i++) {
    //    formData.append("regCertificatefile", files1[i]);
    //}
    //for (var i = 0; i < files2.length; i++) {
    //    formData.append("taxCertificatefile", files2[i]);
    //}

    for (var i = 0; i < files.length; i++) {
        var isFileSizeValid = $.fn.CheckFileSize("tradeLicensefile", files);
        if (isFileSizeValid) {
            formData.append("tradeLicensefile", files[i]);
        }
        else {
            isUploadDocumentSizeNotValid = true;
        }

    }
    for (var i = 0; i < files1.length; i++) {
        var isFileSizeValid = $.fn.CheckFileSize("regCertificatefile", files1);
        if (isFileSizeValid) {
            formData.append("regCertificatefile", files1[i]);
        }
        else {
            isUploadDocumentSizeNotValid = true;
        }
    }
    for (var i = 0; i < files2.length; i++) {
        var isFileSizeValid = $.fn.CheckFileSize("taxCertificatefile", files2);
        if (isFileSizeValid) {
            formData.append("taxCertificatefile", files2[i]);
        }
        else {
            isUploadDocumentSizeNotValid = true;
        }

    }

    if (isUploadDocumentSizeNotValid) {
        return;
    }




    
    //alert(document.getElementById('identificationNumber').value);

    var validIdNumber = $.fn.ValidateRSAIDNo(document.getElementById('identificationNumber').value);
    var formValid = $.fn.CheckFormValidations();
    if (formValid && validIdNumber) {
        $('#isAppLoading').show();
        var emailFormat = re.test($("#email").val()); // This return result in Boolean type
        if (!emailFormat) {
            //$("#ContactEmail").css('color', 'red');
            toastr.warning('Invalid email address!', "Warning", {
                "timeOut": "0",
                "extendedTImeout": "0",
                "closeButton": true
            });
            return;
        }
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

        $.ajax({
            url: apiBaseUrl + 'update-wl-accounts-form',
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
                $('#isAppUpdateLoading').hide();
                if (data.success) {
                    // Display a success toast, with a title
                    toastr.success(`Wayleave account updated successfully!`, "Success", {
                        "timeOut": "0",
                        "extendedTImeout": "0",
                        "closeButton": true,
                    });                    
                } else if (data.exception) {
                    // Display an error toast, with a title
                    toastr.error(data.exception);
                } else if (data.emailExists) {

                    // Display an error toast, with a title
                    toastr.warning('Contact person email alredy has been taken, please choose another one.', "Error", {
                        "timeOut": "0",
                        "extendedTImeout": "0",
                        "closeButton": true
                    });
                }
                else {
                    toastr.error('Error in Operation');
                }
            },
            error: function (xhr, textStatus, errorThrown) {
                //console.log('Error in Operation');
                toastr.error('Error in Operation');
            }
        });
    }
    else {
        $('#isAppUpdateLoading').hide();
        if (!formValid)
        toastr.warning('* Fields are required!');
    }
}

$.fn.CheckFileSize = function (id, fileContent) {
    console.log(fileContent);
    //$('#' + decsionID).get(0).files;
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

$.fn.CheckConfirmPassword = function (id, confirmId) {
    var isPasswordMatch = false;
    var p1 = $("#" + id).val();
    var p2 = $("#" + confirmId).val();
    if (p1 === p2) {
        isPasswordMatch = true;
    }
    else {
        isPasswordMatch = false;
        toastr.error('Password and confirm password does not match!');
    }
    return isPasswordMatch;
}

$.fn.ValidatePassword = function (id) {
    var p1 = $("#" + id).val();
    var re = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
    var result = re.test(p1);
    if (!result) {
        toastr.error(`Password must contain:<br/>
- Minimum 8 characters<br/>
- Minimum 1 uppercase character<br/>
- Minimum 1 numeric character<br/>
- Minimum 1 special character`);
    }
    return result;
}






