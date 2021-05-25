//Intialize variables
var wayleaveAccount = new Object();
var Customer_ContactPerson = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
var re = /^\w+([-+.'][^\s]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //Email validation regex
$('#loadSpinner').hide();
$('#accordionApprove').hide();
$('#WlAccountComments').hide();

//Email validation
$.fn.validateEmail = function () {
    var emailFormat1 = re.test($("#ContactEmail").val()); // This return result in Boolean type
    if (!emailFormat1) {
        $("#ContactEmail").css('color', 'red');
    }
    else {
        $("#ContactEmail").css('color', 'black');
    }
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
    alert();
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
    //$('#loadSpinner').show();
    var Customer_ContactPersonSingle = [];
    var formData = new FormData();
    var files = $('#tradeLicensefile').get(0).files;
    var files1 = $('#regCertificatefile').get(0).files;
    var files2 = $('#taxCertificatefile').get(0).files;
    $.fn.GetFormdataValues();

    formData.append("AccountData", JSON.stringify(wayleaveAccount));

    for (var i = 0; i < files.length; i++) {
        formData.append("tradeLicensefile", files[i]);
    }
    for (var i = 0; i < files1.length; i++) {
        formData.append("regCertificatefile", files1[i]);
    }
    for (var i = 0; i < files2.length; i++) {
        formData.append("taxCertificatefile", files2[i]);
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
            $('#loadSpinner').hide();
            toastr.success(`Wayleave account created successfully!
<br /><div>Please write down below account number for future reference<br />Account Number : <b style='color:#00337f'>`+ data.accountNumber + `</b><br />
User Name : <b style='color:#00337f'>`+ data.accountUserName + `</b><br />
Password : <b style='color:#00337f'>`+ data.accountPassword + `</b>
</div>
`, "Success", {
                "timeOut": "0",
                "extendedTImeout": "0",
                "closeButton": true,
            });

            setTimeout(function () {
                window.location.href = "../Home/WayleaveLogin";
            }, 10000);
        },
        error: function (xhr, textStatus, errorThrown) {
            //console.log('Error in Operation');
            toastr.error('Error in Operation');
        }
    });
};

//Load Wayleave Account Details
$.fn.LoadWayleaveAccountDetails = function (accountNumber) {
    //alert(accountNumber);
    Customer_ContactPerson = [];
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
            var alternateContactdata = data.accountContactModelDto;

            $('#IsWayleaveAccountSubmit').hide();
            $('#accordionApprove').show();
            $('#userType').val(data.userType);
            $('#companyName').val(data.companyName);
            $('#companyFullName').val(data.companyFullName);
            $('#companyRegistrationNumber').val(data.companyRegistrationNumber);
            $('#tradeLicenseExpirationDate').val(data.tradeLicenseExpirationDate);
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
    wayleaveAccount.tradeLicenseExpirationDate = $('#tradeLicenseExpirationDate').val();
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
};


