//Intialize variables
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
var ServiceDepartmentList = [];
var Map_LocationsFromServer = [];
var Customer_RegionListFromServer = [];
var Customer_ContactPersonListFromServer = [];
var ServiceDocumentListFromServer = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
//alert(apiBaseUrl);
var accountID = localStorage.getItem('wayleaveAccountNumber');
 //alert(localStorage.getItem('wayleaveAccountNumber'));

/*......................Vew Google Map Route...................................*/
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

$.fn.showGPS = function () {    
    Startinitialize("");
    Endinitialize("");
}

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

$.fn.ChangeServiceType = function () {
    var selectedValue = $("#SERVICE_TYPE").val();
    //alert(selectedValue);
    $("#SERVICE_SUB_TYPE").html("");
    //$("#SERVICE_SUB_TYPE")[0].selectedIndex = 0;
    $.fn.LoadServiceSubtypes(selectedValue);
}

// loading service sub types and documents
$.fn.LoadServiceSubtypes = function (id) {
    $.ajax({
        url: apiBaseUrl + 'get-serive-sub-types/' + id,
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Service Sub Types Result=========");
            console.log(data);
            $.each(data, function (data, value) {
                $("#SERVICE_SUB_TYPE").append($("<option></option>").val(value.id).html(value.description));
            })
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });     
}

// loading Customer care centers
$.fn.GetCustomercareCenters = function () {
    MasterRegions = [];
    $.ajax({
        url: apiBaseUrl + 'get-customercare-centers',
        type: 'GET',
        processData: false,
        contentType: false,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        //data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Region Result=========");
            console.log(data);
            MasterRegions = data;                                                                                                                           
            $('#MasterRegions').empty();            
            $.each(MasterRegions, function (data, value) {
                var rbnId = value.id + 'chkRegionsPopup';
                //alert(value.code);
                $("#MasterRegions").append('<tr><td><input type="radio" id=' + rbnId + ' name="chkRegionsPopup" onclick=bindRegionDataFromList("' + value.code + '") /></td> <td>' + value.code + '</td><td>' + value.name + '</td><td>' + value.road + '</td></tr>');
            });            
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
            if (ServiceDocumentList.length > 0) {
                $('#ServiceDocumentList').empty();
                $("#ServiceDocumentListFromServer").hide();
                console.log("Service Document details");
                console.log(ServiceDocumentList);

                for (let i = 0; i < ServiceDocumentList.length; i++) {
                    var id = ServiceDocumentList[i].id + "SupportDocument";
                    var index = i + 1;
                    $('#ServiceDocumentList').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id='+id+' /></td></tr>');
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
            if (ServiceDepartmentList.length > 0) {
                $('#ServiceDepartmentList').empty();
                console.log("Service Departments details");
                console.log(ServiceDepartmentList);

                for (let i = 0; i < ServiceDepartmentList.length; i++) {
                    var id = "CheckBox_"+ServiceDepartmentList[i].id;
                    var index = i + 1;
                    $('#ServiceDepartmentList').append('<div><input type="checkbox" class="checkbox-custom" checked="checked" disabled="disabled" id=' + id + ' value="' + ServiceDepartmentList[i].description + '"><label class="checkbox-custom-label" for=' + id + '>' + ServiceDepartmentList[i].description +'</label></div>');
                };
            }
            
            //MasterRegions = data;
            //$('#MasterRegions').empty();
            //$.each(MasterRegions, function (data, value) {
            //    var rbnId = value.id + 'chkRegionsPopup';
            //    //alert(value.code);
            //    $("#MasterRegions").append('<tr><td><input type="radio" id=' + rbnId + ' name="chkRegionsPopup" onclick=bindRegionDataFromList("' + value.code + '") /></td> <td>' + value.code + '</td><td>' + value.name + '</td><td>' + value.road + '</td></tr>');
            //});
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
}

// bind Contractor Or Consultant details
$.fn.GetContractorOrConsultant = function () {
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
            $("#PROPERTYOWNER_CONTACTNO").val(data.mobile);
            $("#PROPERTYOWNER_EMAIL").val(data.email);

            $("#CONSULTANT_NO").val(data.accounT_NUMBER);
            $("#CONSULTANT_NAME").val(data.contacT_PERSON_FIRST_NAME);
            $("#CONSULTANT_SURNAME").val(data.contacT_PERSON_LAST_NAME);
            $("#CONSULTANT_COMPANYNAME").val(data.companY_FULL_NAME);
            $("#CONSULTANT_CONTACTNO").val(data.mobile);
            $("#CONSULTANT_EMAIL").val(data.email);
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
    $.fn.GetServiceTypes();
    $.fn.getMapRoute();
    //GetApplicationStausTypes();
    $.fn.GetContractorOrConsultant();    
    $.fn.GetCustomercareCenters();
    $.fn.LoadSupportingDocumentsOnPageLoad();
    Startinitialize('');
    Endinitialize('');
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
$.fn.BindLocations = function () {
    $('#Map_Locations').empty();
    //alert('success');
    //Customer_ContactPerson.push(person);
    $("#ShowMap_Locations").show();
    $("#Map_LocationsFromServer").hide();
    console.log("Customer_Work location details");
    console.log(Map_Locations);
    var tLocation;
    for (let i = 0; i < Map_Locations.length; i++) {
        var id = "Map_Locations" + i;
        $('#Map_Locations').append('<tr><td><select style="border-radius: 4px" disabled class="form-control"> <option value=' + Map_Locations[i].WORK_LOCATION_TYPE + '>' + Map_Locations[i].WORK_LOCATION_TYPE + '</option></select></td><td><input class="form-control" readonly type="text" value="' + Map_Locations[i].GPS_START_ADDRESS + '"></td><td><input class="form-control" type="text" readonly value="' + Map_Locations[i].GPS_END_ADDRESS + '"></td><td class="text-center"> <a title="View work location on map" id="' + id + '" onclick=ShowWorkLoactionOnMap("' + i + '") class="fa fa-2x fa-map-marker text-blue" style="cursor:pointer"></a> <a title="Delete work location" style="padding-left:10px;cursor:pointer" class="fa fa-2x fa-trash text-red" onclick=RemoveWorkLoactionOnMap("local","' + i + '")></a></td></tr>');
    };

    //Clear the TextBoxes.
    $("#GPS_START_ADDRESS").val('');
    $("#GPS_END_ADDRESS").val('');
    $("#WORK_LOCATION_TYPE")[0].selectedIndex = 0;
    WorkLocationModel = {
        WORK_LOCATION_TYPE: '',
        GPS_START_ADDRESS: '',
        GPS_END_ADDRESS: ''
    };
}

$.fn.Add = function () {
    var rc = $('#RegionCode').val();
    var ren = $('#RegionName').val();
    var rn = $('#RoadNumber').val();
    if (rc != "" && rc != undefined && ren != "" && ren != undefined && rn != "" && rn != undefined) {
        //
    }
    else {
        $('#ShowRegionFooter').show();
    }
};

function bindRegionDataFromList(regionId) {
    //alert(MasterRegions.length);
    //ShowRegionFooter = true;     
    console.log(MasterRegions);
    var index = MasterRegions.findIndex(x => x.code === regionId);
    var index1 = Customer_Region.findIndex(x => x.REGION_CODE === regionId);
    //alert(index1);

    console.log(MasterRegions[index]);
    var customer = {};
    customer.REGION_ID = MasterRegions[index].id;
    customer.REGION_CODE = MasterRegions[index].code;
    customer.REGION_NAME = MasterRegions[index].name;
    customer.ROAD_NUMBER = MasterRegions[index].road;
    //var index = Customer_Region.findIndex(x => x.REGION_CODE === regionData.code)
    var indexServer = Customer_RegionListFromServer.findIndex(x => x.REGION_CODE === regionId)
    //alert(indexServer);
    if (index1 === -1 && indexServer === -1) {
        $("#ShowRegionFooter").show();
        Customer_Region.push(customer);
        $('#Customer_Region').empty();        
        $("#ShowRegionFooter").show();
        $("#Customer_RegionListFromServer").hide();
        console.log("Region details");
        console.log(Customer_Region);
        var tLocation;
        for (let i = 0; i < Customer_Region.length; i++) {
            var id = Customer_Region[i].REGION_ID+"ChkId";
            $('#Customer_Region').append('<tr><td><input type="radio" name="radioRegion" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_CODE + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_NAME + '"> </td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_Region[i].ROAD_NUMBER+'"></td></tr>');
        };

        //Clear the TextBoxes.
        $("#RegionCode").val('');
        $("#RegionName").val('');
        $("#RoadNumber").val('');
        
        $("#RegionPopup").modal('hide');
    }
    else {
        $("#RegionPopup").modal('hide');
        toastr.warning('Region already added!', "Warning", {
            "timeOut": "0",
            "extendedTImeout": "0",
            "closeButton": true
        });
    }

    //Clear the TextBoxes.
    $('#RegionCode').val('');
    $('#RegionName').val('');
    $('#RoadNumber').val('');
}

$.fn.removeAll = function () {
    console.log(Customer_Region);
    var isChecked = false;
    if (Customer_Region.length > 0) {
        if (window.confirm("Do you want to delete")) {
            for (var i = 0; i < Customer_Region.length; i++) {
                var d = Customer_Region[i];
                var decsionID = d.REGION_ID + "ChkId";

                if ($('#' + decsionID).is(":checked")) {
                    isChecked = true;
                    var searchCode = d.REGION_CODE;
                    var index = Customer_Region.findIndex(x => x.REGION_CODE === searchCode)
                    Customer_Region.splice(index, 1);
                    $('#Customer_Region').empty();
                    $("#ShowRegionFooter").show();
                    $("#Customer_RegionListFromServer").hide();
                    console.log("Region details");
                    console.log(Customer_Region);
                    var tLocation;
                    for (let i = 0; i < Customer_Region.length; i++) {
                        var id = Customer_Region[i].REGION_ID + "ChkId";
                        $('#Customer_Region').append('<tr><td><input type="radio" name="radioRegion" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_CODE + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_NAME + '"> </td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_Region[i].ROAD_NUMBER + '"></td></tr>');
                    };

                    //Clear the TextBoxes.
                    $("#RegionCode").val('');
                    $("#RegionName").val('');
                    $("#RoadNumber").val('');
                }
            }            
            if (Customer_Region.length > 0 && !isChecked) {
                alert("Please select region");
            }
        }
    } else if (Customer_RegionListFromServer.length > 0) {
        Customer_RegionListFromServer.forEach(function (d) {
            var decsionID = d.REGION_ID + "ChkId";
            if ($('#' + decsionID).is(":checked")) {
                isChecked = true;
                mainService.DeleteRegionById(d.RID).then(function (result) {
                    console.log('DeleteWorkLocationById');
                    console.log(result.data);
                    alert('deleted');
                    bindApplicationDataFrom(sessionStorage.getItem('appId'));
                }, function (error) {
                    console.log(error.status)
                    console.log("Bad Request Process");
                });

            }
        });
        if (Customer_RegionListFromServer.length > 0 && !isChecked) {
            alert("Please select region");
        } else if (window.confirm("Do you want to delete")) {

            //Delete region from server when selected region
        }
    }
    else {
        alert("Please select region");
    }

}

$.fn.AddRegion = function () {
    $.each(MasterRegions, function (index, value) {
        var decsionID = value.id + "chkRegionsPopup";
        if($('#' + decsionID).is(":checked")) {
            $('#' + decsionID).prop("checked", false);
        }
    });     
    $("#RegionPopup").modal('show');
}

$.fn.AddContactPerson = function () {
    var rc = $("#ContactFirstName").val();
    var ren = $("#ContactLastName").val();
    var rn = $("#ContactRegNumber").val();
    var cn = $("#ContactNumber").val();
    if (rc !== "" && rc !== undefined && ren !== "" && ren !== undefined && rn !== "" && rn !== undefined && cn !== "" && cn !== undefined) {
        var person = {};
        person.FIRST_NAME = rc;
        person.LAST_NAME = ren;
        person.REGISTRATION_NUMBER = rn;
        person.CONTACT_NUMBER = cn;
        var index = Customer_ContactPerson.findIndex(x => x.CONTACT_NUMBER === cn)
        var indexServer = Customer_ContactPersonListFromServer.findIndex(x => x.CONTACT_NUMBER === cn)
        if (index === -1 && indexServer === -1) {
            $("#ShowContactPersonFooter").show();
            Customer_ContactPerson.push(person);

            $('#Customer_ContactPerson').empty();
            $("#ShowContactPersonFooter").show();
            $("#Customer_ContactPersonListFromServer").hide();
            console.log("Customer contact details");
            console.log(Customer_ContactPerson);
            
            for (let i = 0; i < Customer_ContactPerson.length; i++) {
                var id = Customer_ContactPerson[i].CONTACT_NUMBER + "ChkPerson";
                $('#Customer_ContactPerson').append('<tr><td><input type="radio" name="radioContactPerson" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].FIRST_NAME + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].LAST_NAME + '"> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].REGISTRATION_NUMBER + '"></td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].CONTACT_NUMBER + '"></td></tr>');
            };

            $("#ContactFirstName").val('');
            $("#ContactLastName").val('');
            $("#ContactRegNumber").val('');
            $("#ContactNumber").val('');
        }
        else {
            alert("Contact number already exist!");
        }
        console.log(Customer_ContactPerson);
    }
    else {
        //alert("Please add contact details!");
        $("#ShowContactPersonFooter").show();
    }
};

$.fn.removeContactPerson = function () {
    console.log(Customer_ContactPerson);
    var isChecked = false;
    if (Customer_ContactPerson.length > 0) {
        if (window.confirm("Do you want to delete: " + name)) {

            for (var i = 0; i < Customer_ContactPerson.length; i++) {
                var d = Customer_ContactPerson[i];
                var decsionID = d.CONTACT_NUMBER + "ChkPerson";

                if ($('#' + decsionID).is(":checked")) {
                    isChecked = true;
                    var searchCode = d.CONTACT_NUMBER;
                    var index = Customer_ContactPerson.findIndex(x => x.CONTACT_NUMBER === searchCode)
                    Customer_ContactPerson.splice(index, 1);

                    $('#Customer_ContactPerson').empty();
                    $("#ShowContactPersonFooter").show();
                    $("#Customer_ContactPersonListFromServer").hide();
                    console.log("Customer contact details");
                    console.log(Customer_ContactPerson);

                    for (let i = 0; i < Customer_ContactPerson.length; i++) {
                        var id = Customer_ContactPerson[i].CONTACT_NUMBER + "ChkPerson";
                        $('#Customer_ContactPerson').append('<tr><td><input type="radio" name="radioContactPerson" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].FIRST_NAME + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].LAST_NAME + '"> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].REGISTRATION_NUMBER + '"></td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].CONTACT_NUMBER + '"></td></tr>');
                    };

                    $("#ContactFirstName").val('');
                    $("#ContactLastName").val('');
                    $("#ContactRegNumber").val('');
                    $("#ContactNumber").val('');
                }

            };
            if (Customer_ContactPerson.length > 0 && !isChecked) {
                alert("Please select contact person!");
            }
        }
    }
    else if (Customer_ContactPersonListFromServer.length > 0) {
        Customer_ContactPersonListFromServer.forEach(function (d) {
            var decsionID = d.CONTACT_NUMBER + "ChkPerson";
            if ($('#' + decsionID).is(":checked")) {
                isChecked = true;
                //mainService.DeleteContactPersonById(d.CID).then(function (result) {
                //    console.log('DeleteContactPersonById');
                //    console.log(result.data);
                //    alert('deleted');
                //    bindApplicationDataFrom(sessionStorage.getItem('appId'));
                //}, function (error) {
                //    console.log(error.status)
                //    console.log("Bad Request Process");
                //});

            }
        });
        if (Customer_ContactPersonListFromServer.length > 0 && !isChecked) {
            alert("Please select contact person!");
        } else if (window.confirm("Do you want to delete")) {

            //Delete contact person from server when selected contact person
        }
    }
    else {
        alert("Contact details can't be empty!");
    }

}

//Show work location on Map when click on Map icon
function ShowWorkLoactionOnMap(i) {
    let location = Map_Locations[i];
    $("#locationPopup").modal('show');
    initMap(parseFloat(location.GPS_START_LATITUDE), parseFloat(location.GPS_START_LONGITUDE), parseFloat(location.GPS_END_LATITUDE), parseFloat(location.GPS_END_LONGITUDE));
};

//Remove work location from pushed array
function RemoveWorkLoactionOnMap(where, id) {
    if (where === 'server') {
        if (window.confirm("Do you want to delete")) {
            // delete work location from database when  user click on delete
            //mainService.DeleteWorkLocationById(id).then(function (result) {
            //    console.log('DeleteWorkLocationById');
            //    console.log(result.data);
            //    alert('deleted');
            //    bindApplicationDataFrom(sessionStorage.getItem('appId'));
            //}, function (error) {
            //    console.log(error.status)
            //    console.log("Bad Request Process");
            //});
        }
    }
    else if (Map_Locations.length > 0) {
        if (window.confirm("Do you want to delete")) {
            Map_Locations.splice(id, 1);
            $.fn.BindLocations();
        }
    }
    else {
        alert("Location details can't be empty!");
    }

};

//Save Wayleave application form details
$.fn.SaveApplicationForm = function (appdata, alertStatus) { 
    //console.log(appdata);
    //console.log(Customer_Region);
    //console.log(Customer_ContactPerson);
    var wa = $("#WAYLEAVE_ATTENTION").val();
    var st = $("#SERVICE_TYPE").val();
    var sbt = $("#SERVICE_SUB_TYPE").val();
    
    if (wa != undefined && wa != "" && st != undefined && st != "") {
        var formData = new FormData();
        if (sbt == undefined || sbt == "") {
            $("#SERVICE_SUB_TYPE").val('1');
        }
        $("#isAppLoading").show();
        console.log('ServiceDepartmentList');
        console.log(ServiceDepartmentList);
        $.fn.GetFormdataValues();

        $.each(ServiceDepartmentList, function (data, value) {
            if ($("#CheckBox_" + value.id).is(":checked")) {
                // alert(value.description);
                DepartmentList.push({
                    DPT_ID: value.id,
                    DEPARTMENT_NAME: value.description
                });
            }
        });
        console.log(DepartmentList)

        formData.append("FormData", JSON.stringify(appFormData));
        formData.append("RegionData", JSON.stringify(Customer_Region));
        formData.append("ContactPersonData", JSON.stringify(Customer_ContactPerson));
        formData.append("SupportDocumentList", JSON.stringify(ServiceDocumentList));
        formData.append("WorkLocations", JSON.stringify(Map_Locations));
        formData.append("Departments", JSON.stringify(DepartmentList));

        if (ServiceDocumentList.length > 0) {
            console.log(ServiceDocumentList);
            $.each(ServiceDocumentList, function (data, value) {
                var decsionID = value.id + "SupportDocument";
                //alert(decsionID);
                //var files = $('#1SupportDocument').get(0).files;
                //alert(files.length);
                var fileslist = $('#' + decsionID).get(0).files;
                for (var i = 0; i < fileslist.length; i++) {
                    formData.append(decsionID, fileslist[i]);
                }
            });
        }

        $.ajax({
            url: apiBaseUrl + 'add-application-form',
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
                if (alertStatus == "resubmission") {
                    toastr.success('Application form re-submitted successfully');
                    //alert("Application form saved successfully.");
                    //setTimeout(function () {
                    //    window.location.href = "../WayleaveAccount/Index";
                    //}, 2000)

                }
                else {
                    toastr.success('Application form saved successfully');
                    //alert("Application form saved successfully.");
                    setTimeout(function () {
                        window.location.href = "../WayleaveAccount/Index";
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
        toastr.warning('* Fields are required!');
    }
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

$.fn.GetFormdataValues = function () {
    appFormData.PROPERTYOWNER_ACCOUNT_NO = $('#PROPERTYOWNER_ACCOUNT_NO').val();
    appFormData.PROPERTYOWNER_NAME = $('#PROPERTYOWNER_NAME').val();
    appFormData.PROPERTYOWNER_SURNAME = $('#PROPERTYOWNER_SURNAME').val();
    appFormData.PROPERTYOWNER_CONTACTNO = $('#PROPERTYOWNER_CONTACTNO').val();
    appFormData.PROPERTYOWNER_EMAIL = $('#PROPERTYOWNER_EMAIL').val();
    appFormData.CONSULTANT_NO = $('#CONSULTANT_NO').val();
    appFormData.CONSULTANT_COMPANYNAME = $('#CONSULTANT_COMPANYNAME').val();
    appFormData.CONSULTANT_NAME = $('#CONSULTANT_NAME').val();
    appFormData.CONSULTANT_SURNAME = $('#CONSULTANT_SURNAME').val();
    appFormData.CONSULTANT_CONTACTNO = $('#CONSULTANT_CONTACTNO').val();
    appFormData.CONSULTANT_EMAIL = $('#CONSULTANT_EMAIL').val();
    appFormData.WAYLEAVE_ATTENTION = $('#WAYLEAVE_ATTENTION').val();
    appFormData.SERVICE_TYPE = $('#SERVICE_TYPE').val();
    appFormData.SERVICE_SUB_TYPE = $('#SERVICE_SUB_TYPE').val();
    appFormData.STAGE_TYPE = $('#STAGE_TYPE').val();
    appFormData.PROJECT_NUMBER = $('#PROJECT_NUMBER').val();
    appFormData.PROJECT_NAME = $('#PROJECT_NAME').val();
    appFormData.APPLYING_ON_BEHALF = $('#APPLYING_ON_BEHALF').val();
    appFormData.PROJECT_DESCRIPTION = $('#PROJECT_DESCRIPTION').val();
    appFormData.APPLICATION_DATE = $('#APPLICATION_DATE').val();
    appFormData.STARTING_DATE = $('#STARTING_DATE').val();
    appFormData.COMPLETION_DATE = $('#COMPLETION_DATE').val();
    appFormData.DRAWING_NUMBER = $('#DRAWING_NUMBER').val();
    appFormData.EXCAVATION_LENGTH = $('#EXCAVATION_LENGTH').val();
    appFormData.RIDING_SURFACE = $('#RIDING_SURFACE').val();
    appFormData.KERBS = $('#KERBS').val();
    appFormData.ASPH_FOOTWAY = $('#ASPH_FOOTWAY').val();
    appFormData.INTERL_BLOCK = $('#INTERL_BLOCK').val();
    appFormData.UNPAVED_FOOTWAYS = $('#UNPAVED_FOOTWAYS').val();
    //appFormData.postCode = $('#postCode').val();
    //appFormData.postCode = $('#postCode').val();
    //appFormData.postCode = $('#postCode').val();
};

