
var DepartmentUsers = new Object();
$("#isAppLoading").hide();

//Email validation
$.fn.validateEmail = function (id) {
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($("#" + id).val())) {
        $("#" + id).css('color', 'black');
        return (true)
    }
    $("#" + id).css('color', 'red');
    return false;
};

//Save department users
$.fn.AddDepartmentUser = function () {    
    var formData = new FormData();
    $.fn.GetFormdataValues();
    formData.append("UserData", JSON.stringify(DepartmentUsers));
    console.log(DepartmentUsers);
    //alert(DepartmentUsers.isActiveDirectory);
    //alert(validIdNumber);
    var formValid = $.fn.CheckFormValidations();
    if (formValid) {
        $('#isAppLoading').show();
        var emailFormat = $.fn.validateEmail('emailAddress'); // This return result in Boolean type
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

        $.ajax({
            url: apiBaseUrl + 'add-department-user',
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
                    toastr.error('User email already exist!');
                }
                if (data.usernameExists) {
                    toastr.error('User name already exist!');
                }
                if (data.success) {
                    toastr.success(`User created successfully!`, "Success", {
                        "timeOut": "10000",
                        "extendedTImeout": "15000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../WL/AddDepartmentUsers";
                    }, 5000);
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

//Getting form values
$.fn.GetFormdataValues = function () {
    DepartmentUsers.userType = $('#userType').val();
    DepartmentUsers.firstName = $('#firstName').val();
    DepartmentUsers.lastName = $('#lastName').val();
    DepartmentUsers.username = $('#username').val();
    DepartmentUsers.emailAddress = $('#emailAddress').val();
    DepartmentUsers.cellPhone = $('#cellPhone').val();
    DepartmentUsers.deptartmentname = $('#deptartmentname').val();
    DepartmentUsers.userid = 0;
    DepartmentUsers.userRole = $('#userRole').val();

    var isAD = document.getElementById("isActiveDirectory");
    if (isAD.checked) {
        DepartmentUsers.isActiveDirectory = "Y";
    } else {
        DepartmentUsers.isActiveDirectory = "N";
    }
};

//Check form validation
$.fn.CheckFormValidations = function () {
    var isFormValid = false;
    var ut = $('#userType').val();
    var cn = $('#firstName').val();
    var cf = $('#lastName').val();
    var cpf = $('#username').val();
    var cpl = $('#emailAddress').val();
    var des = $('#cellPhone').val();
    var mb = $('#deptartmentname').val();
    var ur = $('#userRole').val();

    if (ut != undefined && ut != "" && cn != undefined && cn != "" && cf != undefined && cf != "" && cpf != undefined && cpf != ""
        && cpl != undefined && cpl != "" && des != undefined && des != "" && mb != undefined && mb != "" && ur != undefined && ur != "") {
        isFormValid = true;
        return isFormValid;
    }
    else {
        isFormValid = false;
        return isFormValid;
    }
}

$.fn.UpdatePaymentPrice = function () {
    var pc = $('#APPLICATION_PRICE').val();
    $("#isAppLoading").show();
    if (pc != "" && pc != undefined) {
        var paymentData = new Object();
        paymentData.APPLICATION_PRICE = pc;
        paymentData.DEPARTMENT_USER = $('#CurrentUserName').val();;
        var formData = new FormData();        
        formData.append("FormData", JSON.stringify(paymentData));

        $.ajax({
            url: apiBaseUrl + 'update-application-price',
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
                $('#APPLICATION_PRICE').val('');
                if (data.update) {
                    toastr.success(`Application price updated successfully!`, "Success", {
                        "timeOut": "10000",
                        "extendedTImeout": "15000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../WL/UpdatePaymentPrice";
                    }, 5000);
                }
                if (data.success) {
                    toastr.success(`Application price saved successfully!`, "Success", {
                        "timeOut": "10000",
                        "extendedTImeout": "15000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../WL/UpdatePaymentPrice";
                    }, 5000);
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
        toastr.warning('* Fields are required!');
            
    }

}

$.fn.EditUser = function (userId,username,deptName,roleName) {
    console.log("========User Data=========");
    console.log(username);
    console.log(deptName);
    console.log(roleName);
    DepartmentUsers.userid = userId;
    $("#SelectedUsername").text(username);
    $("#EditDeptartmentName").val(deptName);
    $("#userEditRole").val(roleName);
    $("#EditUserModel").modal('show');
}

$.fn.AddNewUser = function () {
    DepartmentUsers.userid = "";
    $("#AddUser").show();
    $("#UserList").hide();
}

$.fn.backToList = function () {
    DepartmentUsers.userid = "";
    $("#AddUser").hide();
    $("#UserList").show();
}

$.fn.UpdateDepartmentUser = function () { 
    DepartmentUsers.deptartmentname = $('#EditDeptartmentName').val();
    DepartmentUsers.userRole = $('#userEditRole').val();
    var formData = new FormData();
    formData.append("UserData", JSON.stringify(DepartmentUsers));
    if (DepartmentUsers.deptartmentname != null && DepartmentUsers.deptartmentname != undefined && DepartmentUsers.deptartmentname != "" && DepartmentUsers.userRole != null && DepartmentUsers.userRole != undefined && DepartmentUsers.userRole != "") {
        $('#isAppLoadingUpdate').show();
        $.ajax({
            url: apiBaseUrl + 'update-department-user',
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
                $('#isAppLoadingUpdate').hide();                
                if (data.success) {
                    toastr.success(`User updated successfully!`, "Success", {
                        "timeOut": "10000",
                        "extendedTImeout": "15000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../WL/AddDepartmentUsers";
                    }, 5000);
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
        toastr.warning('* Fields are required!');
    }
    
}