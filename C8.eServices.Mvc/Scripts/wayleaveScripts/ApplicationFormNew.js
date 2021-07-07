﻿//Intialize variables
var appFormData = new Object();
var Map_Locations = [];
var GPS_START_Lat = "";
var GPS_START_Lng = "";
var GPS_END_Lat = "";
var GPS_END_Lng = "";
var Customer_Region = [];
var Customer_ContactPerson = [];
var DepartmentList = [];
var MasterRegions = [];
var ServiceDocumentList = [];
var ServiceDeclarationList = [];
var ServiceDocumentListTemp = [];
var ServiceDepartmentList = [];
var Map_LocationsFromServer = [];
var Customer_RegionListFromServer = [];
var Customer_ContactPersonListFromServer = [];
var ServiceDocumentListFromServer = [];
var ServiceDeclarationListFromServer = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
var BaseUrl = localStorage.getItem('BaseUrl');
//alert(apiBaseUrl);
var accountID = localStorage.getItem('wayleaveAccountNumber');
//var appId = localStorage.getItem('appId');
$("#IsViewApplication").show();
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





/*......................Vew Google Map Route...................................*/
//Intialize google map
function initMap(sLat, sLng, eLat, eLng) {
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 8,
        center: { lat: sLat || 37.77, lng: sLng || -122.447 },
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    var polylineOptions = {
        map: map,
        strokeColor: '#000000',
        strokeOpacity: 1.0,
        strokeWeight: 5
    }
    const directionsService = new google.maps.DirectionsService();
    const directionsRenderer = new google.maps.DirectionsRenderer({
        draggable: true,
        map,
        polylineOptions: polylineOptions,
        suppressInfoWindows: true
        // panel: document.getElementById("right-panel")
    });
    directionsService.suppressMarkers = true;
    directionsService.preserveViewport = true;
    directionsService.draggable = true;
    directionsRenderer.addListener("directions_changed", () => {
        // alert()
        computeTotalDistance(directionsRenderer.getDirections());
    });
    var origin1 = { lat: sLat || 37.7780817, lng: sLng || -122.4476434 };
    var destination1 = { lat: eLat || 37.7791968, lng: eLng || -122.4476478 };
    displayRoute(
        origin1,
        destination1,
        directionsService,
        directionsRenderer
    );
}

//Display Start address and end address routes
function displayRoute(origin, destination, service, display) {
    service.route(
        {
            origin: origin,
            destination: destination,
            //waypoints: arr,
            travelMode: google.maps.TravelMode.WALKING,
            avoidTolls: true
        },
        (result, status) => {
            if (status === "OK") {
                //showSteps(result, markerArray, stepDisplay, map);
                display.setDirections(result);
            } else {
                alert("Could not display directions due to: " + status);
            }
        }
    );
}

//Calculate total distance for start and end address
function computeTotalDistance(result) {
    let total = 0;
    const myroute = result.routes[0];
    console.log(myroute.legs[0]);
    $("#GPS_START_LATITUDE").val(myroute.legs[0].start_location.lat());
    $("#GPS_START_LONGITUDE").val(myroute.legs[0].start_location.lng());
    $("#GPS_END_LATITUDE").val(myroute.legs[0].end_location.lat());
    $("#GPS_END_LONGITUDE").val(myroute.legs[0].end_location.lng());
    console.log('slat : ' + myroute.legs[0].start_location.lat() + "," + 'slng : ' + myroute.legs[0].start_location.lng());
    console.log('elat : ' + myroute.legs[0].end_location.lat() + "," + 'elng : ' + myroute.legs[0].end_location.lng());

    for (let i = 0; i < myroute.legs.length; i++) {
        total += myroute.legs[i].distance.value;
    }

    total = total / 1000;
    //document.getElementById("total").innerHTML = total + " km";
}

//Intialize starting address
function Startinitialize(sAddr) {
    GPS_START_Lat = "";
    GPS_START_Lng = "";
    var input = sAddr != "" ? sAddr : document.getElementById('GPS_START_ADDRESS');
    var autocomplete = new google.maps.places.Autocomplete(input);
    google.maps.event.addListener(autocomplete, 'place_changed', function () {
        var place = autocomplete.getPlace();
        console.log('place');
        console.log(place.formatted_address);
        GPS_START_Lat = place.geometry.location.lat();
        GPS_START_Lng = place.geometry.location.lng();

        $("#GPS_START_ADDRESS").val(place.formatted_address);
    });
}

//Intialize ending address
function Endinitialize(eAddr) {
    GPS_END_Lat = "";
    GPS_END_Lng = "";
    var input = eAddr != "" ? eAddr : document.getElementById('GPS_END_ADDRESS');
    var autocomplete = new google.maps.places.Autocomplete(input);
    google.maps.event.addListener(autocomplete, 'place_changed', function () {
        var place = autocomplete.getPlace();
        GPS_END_Lat = place.geometry.location.lat();
        GPS_END_Lng = place.geometry.location.lng();
        $("#GPS_END_ADDRESS").val(place.formatted_address);
    });
}

function ConsultingAddressinitialize(eAddr) {
    var input = eAddr != "" ? eAddr : document.getElementById('CONSULTANT_ADDRESS');
    var autocomplete = new google.maps.places.Autocomplete(input);
    google.maps.event.addListener(autocomplete, 'place_changed', function () {
        var place = autocomplete.getPlace();
        $("#CONSULTANT_ADDRESS").val(place.formatted_address);
    });
}

function ContractorAddressinitialize(eAddr) {
    var input = eAddr != "" ? eAddr : document.getElementById('CONTRACTOR_ADDRESS');
    var autocomplete = new google.maps.places.Autocomplete(input);
    google.maps.event.addListener(autocomplete, 'place_changed', function () {
        var place = autocomplete.getPlace();
        $("#CONTRACTOR_ADDRESS").val(place.formatted_address);
    });
}

$.fn.showGPS = function () {
    Startinitialize("");
    Endinitialize("");
}

//$.fn.showGPS();

//Get map routes
$.fn.getMapRoute = function () {
    initMap(37.7780509, -122.4478889, "37.7791968", "-122.4476479");
    initMap("14.4426", "79.9865", "13.0827", "80.2707");
}

// loading account numbers by change account number
$.fn.inputChanged = function (val) {
    //alert(val)
    //if (val) {
    //    mainService.getAccountsByKeyword(val).then(function (result) {
    //        console.log(result.data);
    //        AccountNumberList = result.data;

    //    }, function (error) {
    //        console.log(error.status)
    //        console.log("Bad Request Process");
    //    });
    //}
}

//Show and hide contractor/consultant details
$.fn.showOwnerConsultantDetails = function (val) {
    $("#contractorInfo").hide();
    $("#consultantInfo").hide();
    if (val == "Property Owner") {
        $("#contractorInfo").show();
    }
    else if (val == "Consultant") {
        $("#consultantInfo").show();
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

// loading supporting documents and departments on page load
$.fn.LoadSupportingDocumentsOnPageLoad = function () {
    ServiceDocumentList = [];
    ServiceDepartmentList = [];
    $.ajax({
        url: apiBaseUrl + 'get-service-documents/' + 2,
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Service DocumentList Result=========");
            console.log(data);
            //MasterRegions = data;
            ServiceDocumentList = data;
            ServiceDocumentListTemp = data;
            if (ServiceDocumentList.length > 0) {
                $('#ServiceDocumentList').empty();
                $("#ServiceDocumentListFromServer").hide();
                console.log("Service Document details");
                console.log(ServiceDocumentList);

                for (let i = 0; i < ServiceDocumentList.length; i++) {
                    var id = ServiceDocumentList[i].id + "SupportDocument";
                    var index = i + 1;
                    $('#ServiceDocumentList').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' /></td></tr>');
                };
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });

    $.ajax({
        url: apiBaseUrl + 'get-service-departments/' + 1,
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("====== Service DepartmentList Result=========");
            console.log(data);
            ServiceDepartmentList = data;
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
}

// bind Contractor Or Consultant details
$.fn.GetContractorOrConsultant = function () {
    //alert();
    $.ajax({
        url: apiBaseUrl + 'get-WLAccount-contractorOrConsultant/' + accountID,
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Consultant/Contractor Data Result=========");
            console.log(data);
            $("#PROPERTYOWNER_ACCOUNT_NO").val(data.accounT_NUMBER);
            $("#PROPERTYOWNER_NAME").val(data.contacT_PERSON_FIRST_NAME);
            $("#PROPERTYOWNER_SURNAME").val(data.contacT_PERSON_LAST_NAME);
            $("#PROPERTYOWNER_CONTACTNO").val(data.telephonE_NUMBER);
            $("#PROPERTYOWNER_MOBILENO").val(data.mobile);
            $("#PROPERTYOWNER_EMAIL").val(data.email);

            $("#CONSULTANT_NO").val(data.accounT_NUMBER);
            $("#CONSULTANT_NAME").val(data.contacT_PERSON_FIRST_NAME);
            $("#CONSULTANT_SURNAME").val(data.contacT_PERSON_LAST_NAME);
            $("#CONSULTANT_COMPANYNAME").val(data.companY_FULL_NAME);
            $("#CONSULTANT_CONTACTNO").val(data.telephonE_NUMBER);
            $("#CONSULTANT_MOBILENO").val(data.mobile);
            $("#CONSULTANT_EMAIL").val(data.email);
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });

}

$.fn.LoadDeclarationsOnPageLoad = function () {
    ServiceDeclarationList = [];
    //alert();
    $.ajax({
        url: apiBaseUrl + 'get-wayleave-declarations',
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        //enctype: 'multipart/form-data',
        //dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("====== Service Declarations Result=========");
            console.log(data);
            ServiceDeclarationList = data;
            if (ServiceDeclarationList.length > 0) {
                $('#ServiceDeclarationList').empty();
                $("#ServiceDeclarationListFromServer").hide();
                console.log("Service Declarations details");
                console.log(ServiceDeclarationList);

                for (let i = 0; i < ServiceDeclarationList.length; i++) {
                    var id = "CheckBox_" + ServiceDeclarationList[i].id;
                    $('#ServiceDeclarationList').append('<tr><td><input type="checkbox" class="checkbox-custom" id=' + id + ' value="' + ServiceDeclarationList[i].description + '"><label class="checkbox-custom-label" for=' + id + '>' + ServiceDeclarationList[i].description + '</label></td></tr>');
                };
                //alert();
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
}

//Load page load events
function Init() {
    //alert();
    $("#isAppLoading").hide();
    $("#IsAppEdit").hide();
    $.fn.GetContractorOrConsultant();
    //$.fn.GetServiceTypes();
    $.fn.getMapRoute();
    //GetApplicationStausTypes();
    
    //$.fn.GetCustomercareCenters();
    //if (!appId) {
    //$.fn.LoadSupportingDocumentsOnPageLoad();
    //}
    //$.fn.LoadDeclarationsOnPageLoad();
    Startinitialize('');
    Endinitialize('');
    ConsultingAddressinitialize('');
    ContractorAddressinitialize('');
}

$.fn.LoadApplicationsDetailsByAppId = function (appId) {
    if (appId) {
        $("#PageLoaderModel").modal('show');
        $("#IsViewApplication").show();
        $.getJSON(apiBaseUrl + 'get-wlApplication-by-id/' + appId, function (data, status, xhr) {
            console.log("========Wayleave Application form data by app id==========");
            console.log(data);
            if (data) {
                //$.fn.GetContractorOrConsultant(consultanT_NO);
                appFormData.APP_ID = data.apP_ID;
                ServiceDocumentListFromServer = [];
                $('#APPLICATION_STEP_DESCRIPTION_STATUS').show();
                $('#PROPERTYOWNER_ACCOUNT_NO').val(data.propertyowneR_ACCOUNT_NO);
                $('#PROPERTYOWNER_NAME').val(data.propertyowneR_NAME);
                $('#PROPERTYOWNER_SURNAME').val(data.propertyowneR_SURNAME);
                $('#PROPERTYOWNER_CONTACTNO').val(data.propertyowneR_CONTACTNO);
                $('#PROPERTYOWNER_MOBILENO').val(data.propertyowneR_MOBILENO);
                $('#PROPERTYOWNER_EMAIL').val(data.propertyowneR_EMAIL);                
                
                $('#CONSULTANT_NAME').val(data.consultanT_NAME);
                $('#CONSULTANT_SURNAME').val(data.consultanT_SURNAME);
                $('#CONSULTANT_CONTACTNO').val(data.consultanT_CONTACTNO);
                $('#CONSULTANT_MOBILENO').val(data.consultanT_MOBILENO);
                $('#CONSULTANT_EMAIL').val(data.consultanT_EMAIL);
                $('#CONSULTANT_ADDRESS').val(data.consultanT_ADDRESS);                

                $('#CONTRACTOR_NAME').val(data.contractoR_NAME);
                $('#CONTRACTOR_SURNAME').val(data.contractoR_SURNAME);
                $('#CONTRACTOR_CONTACTNO').val(data.contractoR_CONTACTNO);
                $('#CONTRACTOR_MOBILENO').val(data.ccontractoR_MOBILENO);
                $('#CONTRACTOR_EMAIL').val(data.contractoR_EMAIL);
                $('#CONTRACTOR_ADDRESS').val(data.contractoR_ADDRESS);                
               
                $('#STARTING_DATE').val(data.startinG_DATE);
                $('#COMPLETION_DATE').val(data.completioN_DATE);


                $('#GPS_START_ADDRESS').val(data.gpS_START_ADDRESS);
                $('#GPS_END_ADDRESS').val(data.gpS_END_ADDRESS);

                
                //appFormData.TYPE_OF_ROADCROSSING = $('#ChkHD').val();//*
                //appFormData.TYPE_OF_ROADCROSSING1 = $('#ChkOT').val();//*
                //appFormData.TYPE_OF_ROADCROSSING2 = $('#ChkNone').val();//*

                //$('#ChkHD').val(data.typE_OF_ROADCROSSING);
                if (data.typE_OF_ROADCROSSING) {
                    $("#ChkHD").prop('checked', true);
                }
                if (data.typE_OF_ROADCROSSING1) {
                    $("#ChkOT").prop('checked', true);
                }
                if (data.typE_OF_ROADCROSSING2) {
                    $("#ChkNone").prop('checked', true);
                }
                //$("#ChkHD").prop('checked', true);
                //$('#ChkOT').val(data.typE_OF_ROADCROSSING1);
                //$('#ChkNone').val(data.typE_OF_ROADCROSSING2);

                $('#EXCAVATION_LENGTH').val(data.excavatioN_LENGTH);
                $('#RIDING_SURFACE').val(data.ridinG_SURFACE);
                $('#KERBS').val(data.kerbs);               
                $('#APPLICATION_COMMENTS').val(data.applicatioN_COMMENTS);
                $('#ApplicationStatus').show();
                appFormData.APPLICATION_STEP_DESCRIPTION = data.applicatioN_STEP_DESCRIPTION;
                $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'red');
                $('#APPLICATION_STEP_DESCRIPTION_STATUS').text(data.applicatioN_STEP_DESCRIPTION);
                if (data.applicatioN_STEP_DESCRIPTION == "Completed") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'green');
                }
                if (data.applicatioN_STEP_DESCRIPTION == "Request for documents") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'red');
                    $('#APPLICATION_STEP_DESCRIPTIONComments').show();
                    $('#APPLICATION_DESCRIPTIONComments').text(data.applicatioN_COMMENTS);
                }

                if (data.applicatioN_STEP_DESCRIPTION == "Request for approvals") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'red');
                    $('#APPLICATION_STEP_DESCRIPTION_RequestStatus').show();                    
                }
                
                //if (data.applicatioN_STEP_DESCRIPTION == "Pending") {
                //    $('#ApplicationPendingStatus').show();
                //}

                //if (data.applicatioN_STEP_DESCRIPTION !== 'Approved' && data.applicatioN_STEP_DESCRIPTION !== 'Rejected' && data.applicatioN_STEP_DESCRIPTION !== 'Request for documents') {
                //    $('#ApplicationAdminSection').show();
                //}


                setTimeout(function () {
                    //$.fn.LoadDeclarationsByAppid();
                    $.getJSON(apiBaseUrl + 'get-wayleave-declarations/' + appId, function (dataDeclaration, status, xhr) {
                        ServiceDeclarationListFromServer = dataDeclaration;
                        console.log("===================dataDeclaration bi appid==================");
                        console.log(dataDeclaration); 
                        if (dataDeclaration) {
                            $.fn.LoadDeclarationsByAppid(dataDeclaration);
                        }
                        else {
                            $.fn.LoadDeclarationsOnPageLoad();
                        }                        
                        
                    });
                    $.fn.GetFormdataValues();                    
                    ServiceDocumentListFromServer = data.wL_SUPPORTING_DOCUMENTS;                    
                    $.fn.LoadSupportingDocumentsByAppid(data.applicatioN_STEP_DESCRIPTION);
                }, 5000);
                setTimeout(function () {
                    $("#PageLoaderModel").modal('hide');
                }, 15000);
            }
            else {

            }
        });
    }
    else {
        $("#IsViewApplication").show();
    }
}

//Add work locations
$.fn.AddLocations = function () {
    let WorkLocationModel = {};
    WorkLocationModel.GPS_START_ADDRESS = $("#GPS_START_ADDRESS").val();
    WorkLocationModel.GPS_END_ADDRESS = $("#GPS_END_ADDRESS").val();
    WorkLocationModel.WORK_LOCATION_TYPE = $("#WORK_LOCATION_TYPE").val();
    console.log(WorkLocationModel)
    //alert(ls);
    if (WorkLocationModel.GPS_START_ADDRESS != "" && WorkLocationModel.GPS_END_ADDRESS != "" && WorkLocationModel.WORK_LOCATION_TYPE != '') {
        WorkLocationModel.GPS_START_LATITUDE = GPS_START_Lat;
        WorkLocationModel.GPS_START_LONGITUDE = GPS_START_Lng;

        WorkLocationModel.GPS_END_LATITUDE = GPS_END_Lat;
        WorkLocationModel.GPS_END_LONGITUDE = GPS_END_Lng;

        var index = Map_Locations.findIndex(x => x.GPS_START_ADDRESS === WorkLocationModel.GPS_START_ADDRESS)
        var index1 = Map_Locations.findIndex(x => x.GPS_END_ADDRESS === WorkLocationModel.GPS_END_ADDRESS)

        if (index == -1 || index1 == -1) {
            Map_Locations.push(WorkLocationModel);
            console.log('lattitudesss');
            $.fn.BindLocations();
        }
        else {
            alert("Entered Locations already exist!");
        }
    }
    else {
        alert("Please enter location details!");
        $("#ShowMap_Locations").show();
    }
};

//Bind Worklocations from array

//Open Payment gateway modal
$.fn.SubmitApplication = function () {
    if (appFormData.APPLICATION_STEP_DESCRIPTION == "" || appFormData.APPLICATION_STEP_DESCRIPTION == null || appFormData.APPLICATION_STEP_DESCRIPTION == undefined) {
        $("#ShowPaynowButtons").show();
        $("#ShowEftMasterpass").hide();
        $("#PaymentModel").modal();        
    }
    else {
        $.fn.SaveApplicationForm("", "");
    }
}

//Save Wayleave application form details
$.fn.SaveApplicationForm = function (paymentStatus, alertStatus) {
    $("#EftLoader").hide();
    $("#MasterpassLoader").hide();
    var formData = new FormData();
    var DeclarationList = [];
    $.fn.GetFormdataValues();

    $.each(ServiceDeclarationList, function (data, value) {
        if ($("#CheckBox_" + value.id).is(":checked")) {
            // alert(value.description);
            DeclarationList.push({
                MD_ID: value.id,
                DECLARATION_NAME: value.description
            });
        }
    });
    console.log(DeclarationList)

    $.each(ServiceDepartmentList, function (data, value) {
        DepartmentList.push({
            DPT_ID: value.id,
            DEPARTMENT_NAME: value.description
        });
    });

    formData.append("FormData", JSON.stringify(appFormData));
    //formData.append("RegionData", JSON.stringify(Customer_Region));
    //formData.append("ContactPersonData", JSON.stringify(Customer_ContactPerson));
    formData.append("SupportDocumentList", JSON.stringify(ServiceDocumentList));
    //formData.append("WorkLocations", JSON.stringify(Map_Locations));
    formData.append("Departments", JSON.stringify(DepartmentList));
    formData.append("Declarations", JSON.stringify(DeclarationList));
    formData.append("PaymentStatus", JSON.stringify(paymentStatus));

    if (ServiceDocumentList.length > 0) {
        var isFileUploaded = false;
        console.log(ServiceDocumentList);
        $.each(ServiceDocumentList, function (data, value) {
            var decsionID = value.id + "SupportDocument";
            var fileslist = $('#' + decsionID).get(0).files;
            for (var i = 0; i < fileslist.length; i++) {
                isFileUploaded = true;
                formData.append(decsionID, fileslist[i]);
            }
        });
        if (!isFileUploaded) {
            toastr.warning('Please upload supporting documents!');
            return;
        }
    }

    $("#isAppLoading").show();
    if (paymentStatus == "EFT") {
        $("#EftLoader").show();
    }
    else if (paymentStatus == "MasterPass") {
        $("#MasterpassLoader").show();
    }
    else if (paymentStatus == "PayNow") {
        $("#PayNowLoader").show();
    }
    else {
        $("#PayLaterLoader").show();
    }

    $.ajax({
        url: apiBaseUrl + 'add-application-form',
        type: 'POST',
        processData: false,
        contentType: false,
        crossDomain: true,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Result=========");
            console.log(data);
            //console.log(data.accountUserName);
            $('#isAppLoading').hide();
            $("#PayLaterLoader").hide();
            if (alertStatus == "resubmission") {
                toastr.success('Application form re-submitted successfully');
            }
            else {
                var appNo = data;
                if (paymentStatus == "PayNow") {                     
                    window.location.href = "../WayleaveAccount/Payment_Test?q=" + appNo;
                }
                else if (paymentStatus == "PayLater") {
                    toastr.success(`Your Wayleave Application Is In Status <b>Pending Payment</b>. <br />Your Reference Number is: <b>` + appNo + `</b>
Please upload a receipt. <br />This can be done by navigating to the pending payment queue on your dashboard. <br />Click on your application with reference number <b>`+ appNo + `</b> and <br />upload your payment confirmation document, <br />under the supporting documents section.`, "Success", {
                    "timeOut": "30000",
                    "extendedTImeout": "50000",
                    "closeButton": true,
                    });
                    setTimeout(function () {
                        window.location.href = "../Home/WayleaveLogin";
                    }, 25000);
                }                 
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            //console.log('Error in Operation');
            toastr.error('Error in Operation');
        }
    });
    //if (wa != undefined && wa != "" && st != undefined && st != "") {
        
    //}
    //else {
    //    //$("#PaymentModel").modal('hide');
    //    toastr.warning('* Fields are required!');
    //}
}

//Remove uploaded file from pushed array
$.fn.RemoveUploadedFile = function (id) {
    if (window.confirm("Do you want to delete")) {
        $("#" + id + 'SupportDocument1').hide();
        $("#" + id + 'SupportDocument2').show();
        //mainService.DeleteSupportDocumentById(id).then(function (result) {
        //    console.log('DeleteSupportDocumentById');
        //    console.log(result.data);
        //    alert('deleted');
        //    $scope.bindApplicationDataFrom(sessionStorage.getItem('appId'));
        //    //$scope.IsShowDeletedDocument = id;
        //}, function (error) {
        //    console.log(error.status)
        //    console.log("Bad Request Process");
        //});
    }
}

// Set form data values
$.fn.GetFormdataValues = function () {
    appFormData.PROPERTYOWNER_ACCOUNT_NO = $('#PROPERTYOWNER_ACCOUNT_NO').val();
    appFormData.PROPERTYOWNER_NAME = $('#PROPERTYOWNER_NAME').val();
    appFormData.PROPERTYOWNER_SURNAME = $('#PROPERTYOWNER_SURNAME').val();
    appFormData.PROPERTYOWNER_CONTACTNO = $('#PROPERTYOWNER_CONTACTNO').val();
    appFormData.PROPERTYOWNER_MOBILENO = $('#PROPERTYOWNER_MOBILENO').val();//*
    appFormData.PROPERTYOWNER_EMAIL = $('#PROPERTYOWNER_EMAIL').val();

    appFormData.CONSULTANT_NAME = $('#CONSULTANT_NAME').val();
    appFormData.CONSULTANT_SURNAME = $('#CONSULTANT_SURNAME').val();
    appFormData.CONSULTANT_CONTACTNO = $('#CONSULTANT_CONTACTNO').val();
    appFormData.CONSULTANT_MOBILENO = $('#CONSULTANT_MOBILENO').val();//*
    appFormData.CONSULTANT_EMAIL = $('#CONSULTANT_EMAIL').val();
    appFormData.CONSULTANT_ADDRESS = $('#CONSULTANT_ADDRESS').val();//*

    appFormData.CONTRACTOR_NAME = $('#CONTRACTOR_NAME').val();//*
    appFormData.CONTRACTOR_SURNAME = $('#CONTRACTOR_SURNAME').val(); //*
    appFormData.CONTRACTOR_CONTACTNO = $('#CONTRACTOR_CONTACTNO').val();//*
    appFormData.CONTRACTOR_MOBILENO = $('#CONTRACTOR_MOBILENO').val();//*
    appFormData.CONTRACTOR_EMAIL = $('#CONTRACTOR_EMAIL').val();//*
    appFormData.CONTRACTOR_ADDRESS = $('#CONTRACTOR_ADDRESS').val();//*
    
    appFormData.STARTING_DATE = $('#STARTING_DATE').val();
    appFormData.COMPLETION_DATE = $('#COMPLETION_DATE').val();

    appFormData.TYPE_OF_ROADCROSSING = $('#ChkHD').val();//*
    appFormData.TYPE_OF_ROADCROSSING1 = $('#ChkOT').val();//*
    appFormData.TYPE_OF_ROADCROSSING2 = $('#ChkNone').val();//*
    appFormData.EXCAVATION_LENGTH = $('#EXCAVATION_LENGTH').val();
    appFormData.RIDING_SURFACE = $('#RIDING_SURFACE').val();
    appFormData.KERBS = $('#KERBS').val();

    appFormData.GPS_START_ADDRESS = $('#GPS_START_ADDRESS').val();
    appFormData.GPS_END_ADDRESS = $('#GPS_END_ADDRESS').val();
    appFormData.APPLICATION_COMMENTS = $('#APPLICATION_COMMENTS').val();
    //appFormData.postCode = $('#postCode').val();
    //appFormData.postCode = $('#postCode').val();
    //appFormData.postCode = $('#postCode').val();
};

$.fn.LoadDeclarationsByAppid = function (serverData) {
    ServiceDeclarationList = [];
    ServiceDeclarationListFromServer = [];
    ServiceDeclarationListFromServer = serverData;
    //alert();
    $.ajax({
        url: apiBaseUrl + 'get-wayleave-declarations',
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        //enctype: 'multipart/form-data',
        //dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("====== Service Declarations Result=========");
            console.log(data);
            ServiceDeclarationList = data;
           // setTimeout(function () {
                //alert(ServiceDeclarationListFromServer.length);
                if (ServiceDeclarationListFromServer.length > 0) {
                    $('#ServiceDeclarationListFromServer').empty();
                    $("#ServiceDeclarationList").hide();
                    console.log("Service Declarations details");
                    console.log(ServiceDeclarationListFromServer);
                    for (let i = 0; i < ServiceDeclarationList.length; i++) {
                        var sid = "CheckBox_" + ServiceDeclarationList[i].id;
                        var index = i + 1;
                        var isAppend = false;
                        for (let j = 0; j < ServiceDeclarationListFromServer.length; j++) {
                            var id = "CheckBox_" + ServiceDeclarationListFromServer[j].mD_ID;
                            if (sid == id) {
                                isAppend = true;
                                $('#ServiceDeclarationListFromServer').append('<tr><td><input type="checkbox" disabled checked="checked" class="checkbox-custom" id=' + id + ' value="' + ServiceDeclarationListFromServer[j].declaratioN_NAME + '"><label class="checkbox-custom-label" for=' + id + '>' + ServiceDeclarationListFromServer[j].declaratioN_NAME + '</label></td></tr>');
                                //$('#ServiceDeclarationListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' /><a id=' + id + ' onclick="ViewDocument("' + ServiceDocumentListFromServer[j].documenT_NAME + '")" style="color:darkblue">View</a></td></tr>');
                            }
                        };
                        if (!isAppend) {
                            $('#ServiceDeclarationListFromServer').append('<tr><td><input type="checkbox" disabled class="checkbox-custom" id=' + sid + ' value="' + ServiceDeclarationList[i].description + '"><label class="checkbox-custom-label" for=' + sid + '>' + ServiceDeclarationList[i].description + '</label></td></tr>');
                            //$('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + sid + ' /></td></tr>');
                        }
                    };
                }
                else {
                    $('#ServiceDeclarationListFromServer').empty();
                    $("#ServiceDeclarationList").hide();
                    ServiceDeclarationListFromServer = data;
                    for (let i = 0; i < ServiceDeclarationListFromServer.length; i++) {
                        var id = "CheckBox_" + ServiceDeclarationListFromServer[i].id;
                        $('#ServiceDeclarationListFromServer').append('<tr><td><input type="checkbox" class="checkbox-custom" id=' + id + ' value="' + ServiceDeclarationListFromServer[i].description + '"><label class="checkbox-custom-label" for=' + id + '>' + ServiceDeclarationListFromServer[i].description + '</label></td></tr>');
                    };
                }
            //},5000);
            
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });

}

// loading supporting documents and departments by application id
$.fn.LoadSupportingDocumentsByAppid = function (stepDescription) {

    ServiceDocumentList = [];
    ServiceDepartmentList = [];    
    $.ajax({
        url: apiBaseUrl + 'get-service-documents/' + 2,
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Service DocumentList Result=========");
            console.log(data);
            console.log(ServiceDocumentListFromServer);
            //MasterRegions = data;
            ServiceDocumentList = data;
            //if (ServiceDocumentList.length > 0) {
            //    $('#ServiceDocumentList').empty();
            //    $("#ServiceDocumentListFromServer").hide();
            //    console.log("Service Document details");
            //    console.log(ServiceDocumentList);

            //    for (let i = 0; i < ServiceDocumentList.length; i++) {
            //        var id = ServiceDocumentList[i].id + "SupportDocument";
            //        var index = i + 1;
            //        $('#ServiceDocumentList').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' /></td></tr>');
            //    };
            //}
            if (ServiceDocumentListFromServer.length > 0) {
                $('#ServiceDocumentList').hide();
                $('#ServiceDocumentListFromServer').empty();
                $("#ServiceDocumentListFromServer").show();
                console.log("ServiceDocumentListFromServer details");
                console.log(ServiceDocumentListFromServer);
                for (let i = 0; i < ServiceDocumentList.length; i++) {
                    var sid = ServiceDocumentList[i].id + "SupportDocument";
                    var index = i + 1;
                    var isAppend = false;
                    for (let j = 0; j < ServiceDocumentListFromServer.length; j++) {
                        var id = ServiceDocumentListFromServer[j].sD_ID + "SupportDocument";                        
                        if (sid == id) {
                            isAppend = true;
                            $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' /><a id=' + id + ' onclick="ViewDocument("' + ServiceDocumentListFromServer[j].documenT_NAME + '")" style="color:darkblue">View</a></td></tr>');
                        }                        
                    };
                    if (!isAppend) {
                        $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + sid + ' /></td></tr>');
                    }
                };
            }
            else {
                ServiceDocumentListFromServer = data;
                for (let j = 0; j < ServiceDocumentListFromServer.length; j++) {
                    var id = ServiceDocumentListFromServer[j].id + "SupportDocument";
                    var index = j + 1;
                    $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentListFromServer[j].description + '</td><td><input type="file" name="Add" id=' + id + ' /></td></tr>');
                };
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
   
}

function ViewDocument(filename) {
    window.location.href = "~/uploads/" + filename;
}

$.fn.ShowEftMasterpassDetails = function () {
    $("#ShowPaynowButtons").hide();
    $("#ShowEftMasterpass").show();
}


