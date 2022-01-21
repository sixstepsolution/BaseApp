////Intialize variables
//var appFormData = new Object();
//var Map_Locations = [];
//var GPS_START_Lat = "";
//var GPS_START_Lng = "";
//var GPS_END_Lat = "";
//var GPS_END_Lng = "";
//var Customer_Region = [];
//var Customer_ContactPerson = [];
//var DepartmentList = [];
//var MasterRegions = [];
//var ServiceDocumentList = [];
//var ServiceDepartmentList = [];
//var Map_LocationsFromServer = [];
//var Customer_RegionListFromServer = [];
//var Customer_ContactPersonListFromServer = [];
//var ServiceDocumentListFromServer = [];
//var circulatedDepartmentList = [];
//var IsRequestDocuments = false;
//var IsStatusReject = false;
//var CurrentUserDepartmentName = "";
//var apiBaseUrl = localStorage.getItem('apiBaseUrl');
////alert(apiBaseUrl);
////var accountID = localStorage.getItem('wayleaveAccountNumber');
////alert(localStorage.getItem('wayleaveAccountNumber'));

///*......................Vew Google Map Route...................................*/
////Intialize google map
//function initMap(sLat, sLng, eLat, eLng) {
//    const map = new google.maps.Map(document.getElementById("map"), {
//        zoom: 8,
//        center: { lat: sLat || 37.77, lng: sLng || -122.447 },
//        mapTypeId: google.maps.MapTypeId.ROADMAP
//    });

//    var polylineOptions = {
//        map: map,
//        strokeColor: '#000000',
//        strokeOpacity: 1.0,
//        strokeWeight: 5
//    }
//    const directionsService = new google.maps.DirectionsService();
//    const directionsRenderer = new google.maps.DirectionsRenderer({
//        draggable: true,
//        map,
//        polylineOptions: polylineOptions,
//        suppressInfoWindows: true
//        // panel: document.getElementById("right-panel")
//    });
//    directionsService.suppressMarkers = true;
//    directionsService.preserveViewport = true;
//    directionsService.draggable = true;
//    directionsRenderer.addListener("directions_changed", () => {
//        // alert()
//        computeTotalDistance(directionsRenderer.getDirections());
//    });
//    var origin1 = { lat: sLat || 37.7780817, lng: sLng || -122.4476434 };
//    var destination1 = { lat: eLat || 37.7791968, lng: eLng || -122.4476478 };
//    displayRoute(
//        origin1,
//        destination1,
//        directionsService,
//        directionsRenderer
//    );
//}

////Display Start address and end address routes
//function displayRoute(origin, destination, service, display) {
//    service.route(
//        {
//            origin: origin,
//            destination: destination,
//            //waypoints: arr,
//            travelMode: google.maps.TravelMode.WALKING,
//            avoidTolls: true
//        },
//        (result, status) => {
//            if (status === "OK") {
//                //showSteps(result, markerArray, stepDisplay, map);
//                display.setDirections(result);
//            } else {
//                alert("Could not display directions due to: " + status);
//            }
//        }
//    );
//}

////Calculate total distance for start and end address
//function computeTotalDistance(result) {
//    let total = 0;
//    const myroute = result.routes[0];
//    console.log(myroute.legs[0]);
//    $("#GPS_START_LATITUDE").val(myroute.legs[0].start_location.lat());
//    $("#GPS_START_LONGITUDE").val(myroute.legs[0].start_location.lng());
//    $("#GPS_END_LATITUDE").val(myroute.legs[0].end_location.lat());
//    $("#GPS_END_LONGITUDE").val(myroute.legs[0].end_location.lng());
//    console.log('slat : ' + myroute.legs[0].start_location.lat() + "," + 'slng : ' + myroute.legs[0].start_location.lng());
//    console.log('elat : ' + myroute.legs[0].end_location.lat() + "," + 'elng : ' + myroute.legs[0].end_location.lng());

//    for (let i = 0; i < myroute.legs.length; i++) {
//        total += myroute.legs[i].distance.value;
//    }

//    total = total / 1000;
//    //document.getElementById("total").innerHTML = total + " km";
//}

////Intialize starting address
//function Startinitialize(sAddr) {
//    GPS_START_Lat = "";
//    GPS_START_Lng = "";
//    var input = sAddr != "" ? sAddr : document.getElementById('GPS_START_ADDRESS');
//    var autocomplete = new google.maps.places.Autocomplete(input);
//    google.maps.event.addListener(autocomplete, 'place_changed', function () {
//        var place = autocomplete.getPlace();
//        console.log('place');
//        console.log(place.formatted_address);
//        GPS_START_Lat = place.geometry.location.lat();
//        GPS_START_Lng = place.geometry.location.lng();

//        $("#GPS_START_ADDRESS").val(place.formatted_address);
//    });
//}

////Intialize ending address
//function Endinitialize(eAddr) {
//    GPS_END_Lat = "";
//    GPS_END_Lng = "";
//    var input = eAddr != "" ? eAddr : document.getElementById('GPS_END_ADDRESS');
//    var autocomplete = new google.maps.places.Autocomplete(input);
//    google.maps.event.addListener(autocomplete, 'place_changed', function () {
//        var place = autocomplete.getPlace();
//        GPS_END_Lat = place.geometry.location.lat();
//        GPS_END_Lng = place.geometry.location.lng();
//        $("#GPS_END_ADDRESS").val(place.formatted_address);
//    });
//}

//$.fn.showGPS = function () {
//    Startinitialize("");
//    Endinitialize("");
//}

////Get map routes
//$.fn.getMapRoute = function () {
//    initMap(37.7780509, -122.4478889, "37.7791968", "-122.4476479");
//    initMap("14.4426", "79.9865", "13.0827", "80.2707");
//}

//// loading account numbers by change account number
//$.fn.inputChanged = function (val) {
//    //alert(val)
//    //if (val) {
//    //    mainService.getAccountsByKeyword(val).then(function (result) {
//    //        console.log(result.data);
//    //        AccountNumberList = result.data;

//    //    }, function (error) {
//    //        console.log(error.status)
//    //        console.log("Bad Request Process");
//    //    });
//    //}
//}

////Show and hide contractor/consultant details
//$.fn.showOwnerConsultantDetails = function (val) {
//    $("#contractorInfo").hide();
//    $("#consultantInfo").hide();
//    if (val == "Property Owner") {
//        $("#contractorInfo").show();
//    }
//    else if (val == "Consultant") {
//        $("#consultantInfo").show();
//    }
//}

//// loading service types
//$.fn.GetServiceTypes = function () {
//    $.ajax({
//        url: apiBaseUrl + 'get-serive-types',
//        type: 'GET',
//        processData: false,
//        contentType: false,
//        cache: false,
//        enctype: 'multipart/form-data',
//        dataType: 'json',
//        //data: formData,
//        success: function (data, textStatus, xhr) {
//            console.log("======Service Types Result=========");
//            console.log(data);
//            $.each(data, function (data, value) {
//                $("#SERVICE_TYPE").append($("<option></option>").val(value.id).html(value.description));
//            })
//        },
//        error: function (xhr, textStatus, errorThrown) {
//            toastr.error('Error in Operation');
//        }
//    });
//}

//$.fn.ChangeServiceType = function () {
//    var selectedValue = $("#SERVICE_TYPE").val();
//    //alert(selectedValue);
//    $("#SERVICE_SUB_TYPE").html("");
//    //$("#SERVICE_SUB_TYPE")[0].selectedIndex = 0;
//    $.fn.LoadServiceSubtypes(selectedValue);
//}

//// loading service sub types and documents
//$.fn.LoadServiceSubtypes = function (id) {
//    $.ajax({
//        url: apiBaseUrl + 'get-serive-sub-types/' + id,
//        type: 'GET',
//        processData: false,
//        contentType: false,
//        cache: false,
//        enctype: 'multipart/form-data',
//        dataType: 'json',
//        //data: formData,
//        success: function (data, textStatus, xhr) {
//            console.log("======Service Sub Types Result=========");
//            console.log(data);
//            $.each(data, function (data, value) {
//                $("#SERVICE_SUB_TYPE").append($("<option></option>").val(value.id).html(value.description));
//            })
//        },
//        error: function (xhr, textStatus, errorThrown) {
//            toastr.error('Error in Operation');
//        }
//    });
//}

//// loading Customer care centers
//$.fn.GetCustomercareCenters = function () {
//    MasterRegions = [];
//    $.ajax({
//        url: apiBaseUrl + 'get-customercare-centers',
//        type: 'GET',
//        processData: false,
//        contentType: false,
//        cache: false,
//        enctype: 'multipart/form-data',
//        dataType: 'json',
//        //data: formData,
//        success: function (data, textStatus, xhr) {
//            console.log("======Region Result=========");
//            console.log(data);
//            MasterRegions = data;
//            $('#MasterRegions').empty();
//            $.each(MasterRegions, function (data, value) {
//                var rbnId = value.id + 'chkRegionsPopup';
//                //alert(value.code);
//                $("#MasterRegions").append('<tr><td><input type="radio" id=' + rbnId + ' name="chkRegionsPopup" onclick=bindRegionDataFromList("' + value.code + '") /></td> <td>' + value.code + '</td><td>' + value.name + '</td><td>' + value.road + '</td></tr>');
//            });
//        },
//        error: function (xhr, textStatus, errorThrown) {
//            toastr.error('Error in Operation');
//        }
//    });
//}

//// loading supporting documents and departments on page load
//$.fn.LoadSupportingDocumentsOnPageLoad = function () {

//    ServiceDocumentList = [];
//    ServiceDepartmentList = [];
//    $.ajax({
//        url: apiBaseUrl + 'get-service-documents/' + 2,
//        type: 'GET',
//        processData: false,
//        contentType: false,
//        cache: false,
//        enctype: 'multipart/form-data',
//        dataType: 'json',
//        //data: formData,
//        success: function (data, textStatus, xhr) {
//            console.log("======Service DocumentList Result=========");
//            console.log(data);
//            //MasterRegions = data;
//            ServiceDocumentList = data;
//            if (ServiceDocumentList.length > 0) {
//                $('#ServiceDocumentList').empty();
//                $("#ServiceDocumentListFromServer").hide();
//                console.log("Service Document details");
//                console.log(ServiceDocumentList);

//                for (let i = 0; i < ServiceDocumentList.length; i++) {
//                    var id = ServiceDocumentList[i].id + "SupportDocument";
//                    var index = i + 1;
//                    $('#ServiceDocumentList').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' /></td></tr>');
//                };
//            }
//        },
//        error: function (xhr, textStatus, errorThrown) {
//            toastr.error('Error in Operation');
//        }
//    });

//    $.ajax({
//        url: apiBaseUrl + 'get-service-departments/' + 1,
//        type: 'GET',
//        processData: false,
//        contentType: false,
//        cache: false,
//        enctype: 'multipart/form-data',
//        dataType: 'json',
//        //data: formData,
//        success: function (data, textStatus, xhr) {
//            console.log("====== Service DepartmentList Result=========");
//            console.log(data);
//            ServiceDepartmentList = data;
//            if (ServiceDepartmentList.length > 0) {
//                $('#ServiceDepartmentList').empty();
//                console.log("Service Departments details");
//                console.log(ServiceDepartmentList);

//                for (let i = 0; i < ServiceDepartmentList.length; i++) {
//                    var id = "CheckBox_" + ServiceDepartmentList[i].id;
//                    var index = i + 1;
//                    $('#ServiceDepartmentList').append('<div><input type="checkbox" class="checkbox-custom" checked="checked" disabled="disabled" id=' + id + ' value="' + ServiceDepartmentList[i].description + '"><label class="checkbox-custom-label" for=' + id + '>' + ServiceDepartmentList[i].description + '</label></div>');
//                };
//            }

//            //MasterRegions = data;
//            //$('#MasterRegions').empty();
//            //$.each(MasterRegions, function (data, value) {
//            //    var rbnId = value.id + 'chkRegionsPopup';
//            //    //alert(value.code);
//            //    $("#MasterRegions").append('<tr><td><input type="radio" id=' + rbnId + ' name="chkRegionsPopup" onclick=bindRegionDataFromList("' + value.code + '") /></td> <td>' + value.code + '</td><td>' + value.name + '</td><td>' + value.road + '</td></tr>');
//            //});
//        },
//        error: function (xhr, textStatus, errorThrown) {
//            toastr.error('Error in Operation');
//        }
//    });

//    if (ServiceDocumentListFromServer.length > 0) {
//        $('#ServiceDocumentList').hide();
//        $("#ServiceDocumentListFromServer").show();
//        console.log("ServiceDocumentListFromServer details");
//        console.log(ServiceDocumentListFromServer);

//        for (let i = 0; i < ServiceDocumentListFromServer.length; i++) {
//            var id = ServiceDocumentListFromServer[i].sD_ID + "SupportDocument";
//            var index = i + 1;
//            $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentListFromServer[i].documenT_TYPE + '</td><td><a href="#" id=' + id + ' onclick=ViewDocument("' + ServiceDocumentListFromServer[i].documenT_NAME + '") style="color:darkblue">View</a></td></tr>');
//        };                                                                                                                                              
//    }

//    if (circulatedDepartmentList.length > 0) {
//        $('#DepartmentInfo').show();
//        $('#circulatedDepartmentList').empty();
//        console.log("circulated Department List");
//        console.log(circulatedDepartmentList);

//        for (let i = 0; i < circulatedDepartmentList.length; i++) {
//            var dptInfo = circulatedDepartmentList[i];
//            var status = "";
//            var dptComment = "";

//            if (dptInfo.applicationStatus != null && dptInfo.applicationStatus != '') {
//                status = dptInfo.applicationStatus;
//            }

//            if (dptInfo.comment != null && dptInfo.comment != '') {
//                dptComment = dptInfo.comment;
//            }
            
//            $('#circulatedDepartmentList').append('<tr><td>' + circulatedDepartmentList[i].id + '</td> <td>' + circulatedDepartmentList[i].description + '</td> <td>' + status + '</td> <td>' + dptComment + '</td> <td>' + circulatedDepartmentList[i].createdDate +'</td> </tr>');
//        };
//    }     
//}

//// bind Contractor Or Consultant details
//$.fn.GetContractorOrConsultant = function (accountID) {
//    $.ajax({
//        url: apiBaseUrl + 'get-WLAccount-contractorOrConsultant/' + accountID,
//        type: 'GET',
//        processData: false,
//        contentType: false,
//        cache: false,
//        enctype: 'multipart/form-data',
//        dataType: 'json',
//        //data: formData,
//        success: function (data, textStatus, xhr) {
//            console.log("======Consultant/Contractor Data Result=========");
//            console.log(data);
//            $("#PROPERTYOWNER_ACCOUNT_NO").val(data.accounT_NUMBER);
//            $("#PROPERTYOWNER_NAME").val(data.contacT_PERSON_FIRST_NAME);
//            $("#PROPERTYOWNER_SURNAME").val(data.contacT_PERSON_LAST_NAME);
//            $("#PROPERTYOWNER_CONTACTNO").val(data.mobile);
//            $("#PROPERTYOWNER_EMAIL").val(data.email);

//            $("#CONSULTANT_NO").val(data.accounT_NUMBER);
//            $("#CONSULTANT_NAME").val(data.contacT_PERSON_FIRST_NAME);
//            $("#CONSULTANT_SURNAME").val(data.contacT_PERSON_LAST_NAME);
//            $("#CONSULTANT_COMPANYNAME").val(data.companY_FULL_NAME);
//            $("#CONSULTANT_CONTACTNO").val(data.mobile);
//            $("#CONSULTANT_EMAIL").val(data.email);
//        },
//        error: function (xhr, textStatus, errorThrown) {
//            toastr.error('Error in Operation');
//        }
//    });

//}

////Load page load events
//function Init() {
//    //alert();
//    $("#isAppLoading").hide();
//    $("#IsAppEdit").hide();
//    $.fn.GetServiceTypes();
//    $.fn.getMapRoute();
//    //GetApplicationStausTypes();
//    //$.fn.GetContractorOrConsultant();
//    //$.fn.GetCustomercareCenters();
//    //$.fn.LoadSupportingDocumentsOnPageLoad();
//    //Startinitialize('');
//    //Endinitialize('');
//}

////Add work locations
//$.fn.AddLocations = function () {
//    let WorkLocationModel = {};
//    WorkLocationModel.GPS_START_ADDRESS = $("#GPS_START_ADDRESS").val();
//    WorkLocationModel.GPS_END_ADDRESS = $("#GPS_END_ADDRESS").val();
//    WorkLocationModel.WORK_LOCATION_TYPE = $("#WORK_LOCATION_TYPE").val();
//    console.log(WorkLocationModel)
//    //alert(ls);
//    if (WorkLocationModel.GPS_START_ADDRESS != "" && WorkLocationModel.GPS_END_ADDRESS != "" && WorkLocationModel.WORK_LOCATION_TYPE != '') {
//        WorkLocationModel.GPS_START_LATITUDE = GPS_START_Lat;
//        WorkLocationModel.GPS_START_LONGITUDE = GPS_START_Lng;

//        WorkLocationModel.GPS_END_LATITUDE = GPS_END_Lat;
//        WorkLocationModel.GPS_END_LONGITUDE = GPS_END_Lng;

//        var index = Map_Locations.findIndex(x => x.GPS_START_ADDRESS === WorkLocationModel.GPS_START_ADDRESS)
//        var index1 = Map_Locations.findIndex(x => x.GPS_END_ADDRESS === WorkLocationModel.GPS_END_ADDRESS)

//        if (index == -1 || index1 == -1) {
//            Map_Locations.push(WorkLocationModel);
//            console.log('lattitudesss');
//            $.fn.BindLocations();
//        }
//        else {
//            alert("Entered Locations already exist!");
//        }
//    }
//    else {
//        alert("Please enter location details!");
//        $("#ShowMap_Locations").show();
//    }
//};

////Bind Worklocations from array
//$.fn.BindLocations = function () {
//    $('#Map_LocationsFromServer').empty();
//    //alert('success');
//    //Customer_ContactPerson.push(person);
//    $("#ShowMap_Locations").hide();
//    $("#Map_Locations").hide();
//    $("#Map_LocationsFromServer").show();
//    console.log("Customer_Work location details");
//    console.log(Map_LocationsFromServer);
//    var tLocation;
//    for (let i = 0; i < Map_LocationsFromServer.length; i++) {
//        var id = "Map_LocationsFromServer" + i;
//        $('#Map_LocationsFromServer').append('<tr><td><select style="border-radius: 4px" disabled class="form-control"> <option value=' + Map_LocationsFromServer[i].worK_LOCATION_TYPE + '>' + Map_LocationsFromServer[i].worK_LOCATION_TYPE + '</option></select></td><td><input class="form-control" readonly type="text" value="' + Map_LocationsFromServer[i].gpS_START_ADDRESS + '"></td><td><input class="form-control" type="text" readonly value="' + Map_LocationsFromServer[i].gpS_END_ADDRESS + '"></td><td class="text-center"> <a title="View work location on map" id="' + id + '" onclick=ShowWorkLoactionOnMap("' + i + '") class="fa fa-2x fa-map-marker text-blue" style="cursor:pointer"></a></td></tr>');
//    };    
//}

////Add region validation
//$.fn.Add = function () {
//    var rc = $('#RegionCode').val();
//    var ren = $('#RegionName').val();
//    var rn = $('#RoadNumber').val();
//    if (rc != "" && rc != undefined && ren != "" && ren != undefined && rn != "" && rn != undefined) {
//        //
//    }
//    else {
//        $('#ShowRegionFooter').show();
//    }
//};

////Bind region data
//function bindRegionDataFromList() {
//    $("#ShowRegionFooter").hide();
//    $('#Customer_Region').hide();
//    $("#ShowRegionFooter").hide();
//    $("#Customer_RegionListFromServer").show();
//    console.log("Customer_RegionListFromServer details");
//    console.log(Customer_RegionListFromServer);
//    var tLocation;
//    for (let i = 0; i < Customer_RegionListFromServer.length; i++) {
//        var id = Customer_RegionListFromServer[i].regioN_ID + "ChkId";
//        $('#Customer_RegionListFromServer').append('<tr><td><input type="radio" name="radioRegion" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_RegionListFromServer[i].regioN_CODE + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_RegionListFromServer[i].regioN_NAME + '"> </td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_RegionListFromServer[i].roaD_NUMBER + '"></td></tr>');
//    };
//    ////alert(MasterRegions.length);
//    ////ShowRegionFooter = true;     
//    //console.log(MasterRegions);
//    //var index = MasterRegions.findIndex(x => x.code === regionId);
//    //var index1 = Customer_Region.findIndex(x => x.REGION_CODE === regionId);
//    ////alert(index1);

//    //console.log(MasterRegions[index]);
//    //var customer = {};
//    //customer.REGION_ID = MasterRegions[index].id;
//    //customer.REGION_CODE = MasterRegions[index].code;
//    //customer.REGION_NAME = MasterRegions[index].name;
//    //customer.ROAD_NUMBER = MasterRegions[index].road;
//    ////var index = Customer_Region.findIndex(x => x.REGION_CODE === regionData.code)
//    //var indexServer = Customer_RegionListFromServer.findIndex(x => x.REGION_CODE === regionId)
//    ////alert(indexServer);
//    //if (index1 === -1 && indexServer === -1) {
//    //    $("#ShowRegionFooter").show();
//    //    Customer_Region.push(customer);
//    //    $('#Customer_Region').empty();
//    //    $("#ShowRegionFooter").show();
//    //    $("#Customer_RegionListFromServer").hide();
//    //    console.log("Region details");
//    //    console.log(Customer_Region);
//    //    var tLocation;
//    //    for (let i = 0; i < Customer_Region.length; i++) {
//    //        var id = Customer_Region[i].REGION_ID + "ChkId";
//    //        $('#Customer_Region').append('<tr><td><input type="radio" name="radioRegion" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_CODE + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_NAME + '"> </td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_Region[i].ROAD_NUMBER + '"></td></tr>');
//    //    };

//    //    //Clear the TextBoxes.
//    //    $("#RegionCode").val('');
//    //    $("#RegionName").val('');
//    //    $("#RoadNumber").val('');

//    //    $("#RegionPopup").modal('hide');
//    //}
//    //else {
//    //    $("#RegionPopup").modal('hide');
//    //    toastr.warning('Region already added!', "Warning", {
//    //        "timeOut": "0",
//    //        "extendedTImeout": "0",
//    //        "closeButton": true
//    //    });
//    //}

//    ////Clear the TextBoxes.
//    //$('#RegionCode').val('');
//    //$('#RegionName').val('');
//    //$('#RoadNumber').val('');
//}

////Remove regions from the array list
//$.fn.removeAll = function () {
//    console.log(Customer_Region);
//    var isChecked = false;
//    if (Customer_Region.length > 0) {
//        if (window.confirm("Do you want to delete")) {
//            for (var i = 0; i < Customer_Region.length; i++) {
//                var d = Customer_Region[i];
//                var decsionID = d.REGION_ID + "ChkId";

//                if ($('#' + decsionID).is(":checked")) {
//                    isChecked = true;
//                    var searchCode = d.REGION_CODE;
//                    var index = Customer_Region.findIndex(x => x.REGION_CODE === searchCode)
//                    Customer_Region.splice(index, 1);
//                    $('#Customer_Region').empty();
//                    $("#ShowRegionFooter").show();
//                    $("#Customer_RegionListFromServer").hide();
//                    console.log("Region details");
//                    console.log(Customer_Region);
//                    var tLocation;
//                    for (let i = 0; i < Customer_Region.length; i++) {
//                        var id = Customer_Region[i].REGION_ID + "ChkId";
//                        $('#Customer_Region').append('<tr><td><input type="radio" name="radioRegion" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_CODE + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_Region[i].REGION_NAME + '"> </td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_Region[i].ROAD_NUMBER + '"></td></tr>');
//                    };

//                    //Clear the TextBoxes.
//                    $("#RegionCode").val('');
//                    $("#RegionName").val('');
//                    $("#RoadNumber").val('');
//                }
//            }
//            if (Customer_Region.length > 0 && !isChecked) {
//                alert("Please select region");
//            }
//        }
//    } else if (Customer_RegionListFromServer.length > 0) {
//        Customer_RegionListFromServer.forEach(function (d) {
//            var decsionID = d.REGION_ID + "ChkId";
//            if ($('#' + decsionID).is(":checked")) {
//                isChecked = true;
//                mainService.DeleteRegionById(d.RID).then(function (result) {
//                    console.log('DeleteWorkLocationById');
//                    console.log(result.data);
//                    alert('deleted');
//                    bindApplicationDataFrom(sessionStorage.getItem('appId'));
//                }, function (error) {
//                    console.log(error.status)
//                    console.log("Bad Request Process");
//                });

//            }
//        });
//        if (Customer_RegionListFromServer.length > 0 && !isChecked) {
//            alert("Please select region");
//        } else if (window.confirm("Do you want to delete")) {

//            //Delete region from server when selected region
//        }
//    }
//    else {
//        alert("Please select region");
//    }

//}

//// Show Region list from database
//$.fn.AddRegion = function () {
//    $.each(MasterRegions, function (index, value) {
//        var decsionID = value.id + "chkRegionsPopup";
//        if ($('#' + decsionID).is(":checked")) {
//            $('#' + decsionID).prop("checked", false);
//        }
//    });
//    $("#RegionPopup").modal('show');
//}

////Add Contact persons
//$.fn.AddContactPerson = function () {

//    $("#ShowContactPersonFooter").hide();
//    $('#Customer_ContactPersonListFromServer').hide();
//    $("#ShowContactPersonFooter").hide();
//    $("#Customer_ContactPersonListFromServer").show();
//    console.log("ContactPersonListFromServer details");
//    console.log(Customer_ContactPersonListFromServer);

//    for (let i = 0; i < Customer_ContactPersonListFromServer.length; i++) {
//        var id = Customer_ContactPersonListFromServer[i].contacT_NUMBER + "ChkPerson";
//        $('#Customer_ContactPersonListFromServer').append('<tr><td><input class="form-control" readonly type="text" value="' + Customer_ContactPersonListFromServer[i].firsT_NAME + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPersonListFromServer[i].lasT_NAME + '"> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPersonListFromServer[i].registratioN_NUMBER + '"></td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_ContactPersonListFromServer[i].contacT_NUMBER + '"></td></tr>');
//    };
//    //var rc = $("#ContactFirstName").val();
//    //var ren = $("#ContactLastName").val();
//    //var rn = $("#ContactRegNumber").val();
//    //var cn = $("#ContactNumber").val();
//    //if (rc !== "" && rc !== undefined && ren !== "" && ren !== undefined && rn !== "" && rn !== undefined && cn !== "" && cn !== undefined) {
//    //    var person = {};
//    //    person.FIRST_NAME = rc;
//    //    person.LAST_NAME = ren;
//    //    person.REGISTRATION_NUMBER = rn;
//    //    person.CONTACT_NUMBER = cn;
//    //    var index = Customer_ContactPerson.findIndex(x => x.CONTACT_NUMBER === cn)
//    //    var indexServer = Customer_ContactPersonListFromServer.findIndex(x => x.CONTACT_NUMBER === cn)
//    //    if (index === -1 && indexServer === -1) {
//    //        $("#ShowContactPersonFooter").show();
//    //        Customer_ContactPerson.push(person);

//    //        $('#Customer_ContactPerson').empty();
//    //        $("#ShowContactPersonFooter").show();
//    //        $("#Customer_ContactPersonListFromServer").hide();
//    //        console.log("Customer contact details");
//    //        console.log(Customer_ContactPerson);

//    //        for (let i = 0; i < Customer_ContactPerson.length; i++) {
//    //            var id = Customer_ContactPerson[i].CONTACT_NUMBER + "ChkPerson";
//    //            $('#Customer_ContactPerson').append('<tr><td><input type="radio" name="radioContactPerson" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].FIRST_NAME + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].LAST_NAME + '"> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].REGISTRATION_NUMBER + '"></td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].CONTACT_NUMBER + '"></td></tr>');
//    //        };

//    //        $("#ContactFirstName").val('');
//    //        $("#ContactLastName").val('');
//    //        $("#ContactRegNumber").val('');
//    //        $("#ContactNumber").val('');
//    //    }
//    //    else {
//    //        alert("Contact number already exist!");
//    //    }
//    //    console.log(Customer_ContactPerson);
//    //}
//    //else {
//    //    //alert("Please add contact details!");
//    //    $("#ShowContactPersonFooter").show();
//    //}
//};

////Remove contact persons from array
//$.fn.removeContactPerson = function () {
//    console.log(Customer_ContactPerson);
//    var isChecked = false;
//    if (Customer_ContactPerson.length > 0) {
//        if (window.confirm("Do you want to delete: " + name)) {

//            for (var i = 0; i < Customer_ContactPerson.length; i++) {
//                var d = Customer_ContactPerson[i];
//                var decsionID = d.CONTACT_NUMBER + "ChkPerson";

//                if ($('#' + decsionID).is(":checked")) {
//                    isChecked = true;
//                    var searchCode = d.CONTACT_NUMBER;
//                    var index = Customer_ContactPerson.findIndex(x => x.CONTACT_NUMBER === searchCode)
//                    Customer_ContactPerson.splice(index, 1);

//                    $('#Customer_ContactPerson').empty();
//                    $("#ShowContactPersonFooter").show();
//                    $("#Customer_ContactPersonListFromServer").hide();
//                    console.log("Customer contact details");
//                    console.log(Customer_ContactPerson);

//                    for (let i = 0; i < Customer_ContactPerson.length; i++) {
//                        var id = Customer_ContactPerson[i].CONTACT_NUMBER + "ChkPerson";
//                        $('#Customer_ContactPerson').append('<tr><td><input type="radio" name="radioContactPerson" id="' + id + '" value="0" /> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].FIRST_NAME + '"></td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].LAST_NAME + '"> </td><td><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].REGISTRATION_NUMBER + '"></td><td colspan="2"><input class="form-control" readonly type="text" value="' + Customer_ContactPerson[i].CONTACT_NUMBER + '"></td></tr>');
//                    };

//                    $("#ContactFirstName").val('');
//                    $("#ContactLastName").val('');
//                    $("#ContactRegNumber").val('');
//                    $("#ContactNumber").val('');
//                }

//            };
//            if (Customer_ContactPerson.length > 0 && !isChecked) {
//                alert("Please select contact person!");
//            }
//        }
//    }
//    else if (Customer_ContactPersonListFromServer.length > 0) {
//        Customer_ContactPersonListFromServer.forEach(function (d) {
//            var decsionID = d.CONTACT_NUMBER + "ChkPerson";
//            if ($('#' + decsionID).is(":checked")) {
//                isChecked = true;
//                //mainService.DeleteContactPersonById(d.CID).then(function (result) {
//                //    console.log('DeleteContactPersonById');
//                //    console.log(result.data);
//                //    alert('deleted');
//                //    bindApplicationDataFrom(sessionStorage.getItem('appId'));
//                //}, function (error) {
//                //    console.log(error.status)
//                //    console.log("Bad Request Process");
//                //});

//            }
//        });
//        if (Customer_ContactPersonListFromServer.length > 0 && !isChecked) {
//            alert("Please select contact person!");
//        } else if (window.confirm("Do you want to delete")) {

//            //Delete contact person from server when selected contact person
//        }
//    }
//    else {
//        alert("Contact details can't be empty!");
//    }

//}

////Show work location on Map when click on Map icon
//function ShowWorkLoactionOnMap(i) {
//    let location = Map_LocationsFromServer[i];
//    $("#locationPopup").modal('show');
//    initMap(parseFloat(location.gpS_START_LATITUDE), parseFloat(location.gpS_START_LONGITUDE), parseFloat(location.gpS_END_LATITUDE), parseFloat(location.gpS_END_LONGITUDE));
//};

////Remove work location from pushed array
//function RemoveWorkLoactionOnMap(where, id) {
//    if (where === 'server') {
//        if (window.confirm("Do you want to delete")) {
//            // delete work location from database when  user click on delete
//            //mainService.DeleteWorkLocationById(id).then(function (result) {
//            //    console.log('DeleteWorkLocationById');
//            //    console.log(result.data);
//            //    alert('deleted');
//            //    bindApplicationDataFrom(sessionStorage.getItem('appId'));
//            //}, function (error) {
//            //    console.log(error.status)
//            //    console.log("Bad Request Process");
//            //});
//        }
//    }
//    else if (Map_Locations.length > 0) {
//        if (window.confirm("Do you want to delete")) {
//            Map_Locations.splice(id, 1);
//            $.fn.BindLocations();
//        }
//    }
//    else {
//        alert("Location details can't be empty!");
//    }

//};

////Save Wayleave application form details
//$.fn.SaveApplicationForm = function (appdata, alertStatus) {
//    //console.log(appdata);
//    //console.log(Customer_Region);
//    //console.log(Customer_ContactPerson);
//    var wa = $("#WAYLEAVE_ATTENTION").val();
//    var st = $("#SERVICE_TYPE").val();
//    var sbt = $("#SERVICE_SUB_TYPE").val();

//    if (wa != undefined && wa != "" && st != undefined && st != "") {
//        var formData = new FormData();
//        if (sbt == undefined || sbt == "") {
//            $("#SERVICE_SUB_TYPE").val('1');
//        }
//        $("#isAppLoading").show();
//        console.log('ServiceDepartmentList');
//        console.log(ServiceDepartmentList);
//        $.fn.GetFormdataValues();

//        $.each(ServiceDepartmentList, function (data, value) {
//            if ($("#CheckBox_" + value.id).is(":checked")) {
//                // alert(value.description);
//                DepartmentList.push({
//                    DPT_ID: value.id,
//                    DEPARTMENT_NAME: value.description
//                });
//            }
//        });
//        console.log(DepartmentList)

//        formData.append("FormData", JSON.stringify(appFormData));
//        formData.append("RegionData", JSON.stringify(Customer_Region));
//        formData.append("ContactPersonData", JSON.stringify(Customer_ContactPerson));
//        formData.append("SupportDocumentList", JSON.stringify(ServiceDocumentList));
//        formData.append("WorkLocations", JSON.stringify(Map_Locations));
//        formData.append("Departments", JSON.stringify(DepartmentList));

//        if (ServiceDocumentList.length > 0) {
//            console.log(ServiceDocumentList);
//            $.each(ServiceDocumentList, function (data, value) {
//                var decsionID = value.id + "SupportDocument";
//                //alert(decsionID);
//                //var files = $('#1SupportDocument').get(0).files;
//                //alert(files.length);
//                var fileslist = $('#' + decsionID).get(0).files;
//                for (var i = 0; i < fileslist.length; i++) {
//                    formData.append(decsionID, fileslist[i]);
//                }
//            });
//        }

//        $.ajax({
//            url: apiBaseUrl + 'add-application-form',
//            type: 'POST',
//            processData: false,
//            contentType: false,
//            cache: false,
//            enctype: 'multipart/form-data',
//            dataType: 'json',
//            data: formData,
//            success: function (data, textStatus, xhr) {
//                console.log("======Result=========");
//                console.log(data);
//                //console.log(data.accountUserName);
//                $('#isAppLoading').hide();
//                if (alertStatus == "resubmission") {
//                    toastr.success('Application form re-submitted successfully');
//                    //alert("Application form saved successfully.");
//                    //setTimeout(function () {
//                    //    window.location.href = "../WayleaveAccount/Index";
//                    //}, 2000)

//                }
//                else {
//                    toastr.success('Application form saved successfully');
//                    //alert("Application form saved successfully.");
//                    setTimeout(function () {
//                        window.location.href = "../WayleaveAccount/Index";
//                    }, 2000)

//                }
//            },
//            error: function (xhr, textStatus, errorThrown) {
//                //console.log('Error in Operation');
//                toastr.error('Error in Operation');
//            }
//        });
//    }
//    else {
//        toastr.warning('* Fields are required!');
//    }
//}

////Remove uploaded file from pushed array
//$.fn.RemoveUploadedFile = function (id) {
//    if (window.confirm("Do you want to delete")) {
//        $("#" + id + 'SupportDocument1').hide();
//        $("#" + id + 'SupportDocument2').show();
//        //mainService.DeleteSupportDocumentById(id).then(function (result) {
//        //    console.log('DeleteSupportDocumentById');
//        //    console.log(result.data);
//        //    alert('deleted');
//        //    $scope.bindApplicationDataFrom(sessionStorage.getItem('appId'));
//        //    //$scope.IsShowDeletedDocument = id;
//        //}, function (error) {
//        //    console.log(error.status)
//        //    console.log("Bad Request Process");
//        //});
//    }
//}

//// Set form data values
//$.fn.GetFormdataValues = function () {
//    appFormData.PROPERTYOWNER_ACCOUNT_NO = $('#PROPERTYOWNER_ACCOUNT_NO').val();
//    appFormData.PROPERTYOWNER_NAME = $('#PROPERTYOWNER_NAME').val();
//    appFormData.PROPERTYOWNER_SURNAME = $('#PROPERTYOWNER_SURNAME').val();
//    appFormData.PROPERTYOWNER_CONTACTNO = $('#PROPERTYOWNER_CONTACTNO').val();
//    appFormData.PROPERTYOWNER_EMAIL = $('#PROPERTYOWNER_EMAIL').val();
//    appFormData.CONSULTANT_NO = $('#CONSULTANT_NO').val();
//    appFormData.CONSULTANT_COMPANYNAME = $('#CONSULTANT_COMPANYNAME').val();
//    appFormData.CONSULTANT_NAME = $('#CONSULTANT_NAME').val();
//    appFormData.CONSULTANT_SURNAME = $('#CONSULTANT_SURNAME').val();
//    appFormData.CONSULTANT_CONTACTNO = $('#CONSULTANT_CONTACTNO').val();
//    appFormData.CONSULTANT_EMAIL = $('#CONSULTANT_EMAIL').val();
//    appFormData.WAYLEAVE_ATTENTION = $('#WAYLEAVE_ATTENTION').val();
//    appFormData.SERVICE_TYPE = $('#SERVICE_TYPE').val();
//    appFormData.SERVICE_SUB_TYPE = $('#SERVICE_SUB_TYPE').val();
//    appFormData.STAGE_TYPE = $('#STAGE_TYPE').val();
//    appFormData.PROJECT_NUMBER = $('#PROJECT_NUMBER').val();
//    appFormData.PROJECT_NAME = $('#PROJECT_NAME').val();
//    appFormData.APPLYING_ON_BEHALF = $('#APPLYING_ON_BEHALF').val();
//    appFormData.PROJECT_DESCRIPTION = $('#PROJECT_DESCRIPTION').val();
//    appFormData.APPLICATION_DATE = $('#APPLICATION_DATE').val();
//    appFormData.STARTING_DATE = $('#STARTING_DATE').val();
//    appFormData.COMPLETION_DATE = $('#COMPLETION_DATE').val();
//    appFormData.DRAWING_NUMBER = $('#DRAWING_NUMBER').val();
//    appFormData.EXCAVATION_LENGTH = $('#EXCAVATION_LENGTH').val();
//    appFormData.RIDING_SURFACE = $('#RIDING_SURFACE').val();
//    appFormData.KERBS = $('#KERBS').val();
//    appFormData.ASPH_FOOTWAY = $('#ASPH_FOOTWAY').val();
//    appFormData.INTERL_BLOCK = $('#INTERL_BLOCK').val();
//    appFormData.UNPAVED_FOOTWAYS = $('#UNPAVED_FOOTWAYS').val();
//    //appFormData.postCode = $('#postCode').val();
//    //appFormData.postCode = $('#postCode').val();
//    //appFormData.postCode = $('#postCode').val();
//};

//$.fn.changeDepartmentStatus = function () {
//    var status = $('#DEPARTMENT_STATUS').val();
//    $('#departmentRejectComment').hide();

//    if (status == "Rejected") {
//        $('#departmentRejectComment').show();
//    }
//}

////bin application form by appId
//$.fn.bindApplicationDataFrom = function (appId) {
//    //alert(appId);
//    if (appId) {
//        //$scope.isLoading = true;
//        $.getJSON(apiBaseUrl + 'get-wlApplication-by-id/' + appId, function (data, status, xhr) {
//            console.log("========Wl Application form data by app id==========");
//            console.log(data);
//            if (data) {
//                //$.fn.GetContractorOrConsultant(consultanT_NO);
//                appFormData.APP_ID = data.apP_ID;
//                $('#PROPERTYOWNER_ACCOUNT_NO').val(data.propertyowneR_ACCOUNT_NO);
//                $('#PROPERTYOWNER_NAME').val(data.propertyowneR_NAME);
//                $('#PROPERTYOWNER_SURNAME').val(data.propertyowneR_SURNAME);
//                $('#PROPERTYOWNER_CONTACTNO').val(data.propertyowneR_CONTACTNO);
//                $('#PROPERTYOWNER_EMAIL').val(data.propertyowneR_EMAIL);

//                $('#CONSULTANT_NO').val(data.consultanT_NO);
//                $('#CONSULTANT_COMPANYNAME').val(data.consultanT_COMPANYNAME);
//                $('#CONSULTANT_NAME').val(data.consultanT_NAME);
//                $('#CONSULTANT_SURNAME').val(data.consultanT_SURNAME);
//                $('#CONSULTANT_CONTACTNO').val(data.consultanT_CONTACTNO);
//                $('#CONSULTANT_EMAIL').val(data.consultanT_EMAIL);

//                $('#WAYLEAVE_ATTENTION').val(data.wayleavE_ATTENTION);                
//                $('#STAGE_TYPE').val(data.stagE_TYPE);
//                $('#PROJECT_NUMBER').val(data.projecT_NUMBER);
//                $('#PROJECT_NAME').val(data.projecT_NAME);
//                $('#APPLYING_ON_BEHALF').val(data.applyinG_ON_BEHALF);
//                $('#PROJECT_DESCRIPTION').val(data.projecT_DESCRIPTION);

//                $('#APPLICATION_DATE').val(data.applicatioN_DATE);
//                $('#STARTING_DATE').val(data.startinG_DATE);
//                $('#COMPLETION_DATE').val(data.completioN_DATE);
//                $('#DRAWING_NUMBER').val(data.drawinG_NUMBER);

//                $('#EXCAVATION_LENGTH').val(data.excavatioN_LENGTH);
//                $('#RIDING_SURFACE').val(data.ridinG_SURFACE);
//                $('#KERBS').val(data.kerbs);
//                $('#ASPH_FOOTWAY').val(data.aspH_FOOTWAY);
//                $('#INTERL_BLOCK').val(data.interL_BLOCK);
//                $('#UNPAVED_FOOTWAYS').val(data.unpaveD_FOOTWAYS);

//                $('#ApplicationStatus').show();
//                $('#APPLICATION_STEP_DESCRIPTION').text(data.applicatioN_STEP_DESCRIPTION);
//                if (data.applicatioN_STEP_DESCRIPTION == "Request for documents") {
//                    $('#APPLICATION_STEP_DESCRIPTIONComments').show();
//                    $('#APPLICATION_DESCRIPTIONComments').text(data.applicatioN_COMMENTS);                    
//                }
                
//                if (data.applicatioN_STEP_DESCRIPTION == "Request for approvals") {
//                    $('#APPLICATION_STEP_DESCRIPTION_RequestStatus').show();
//                    $('#APPLICATION_COMMENTS').val(data.applicatioN_COMMENTS);
//                }

//                if (data.applicatioN_STEP_DESCRIPTION == "Pending") {
//                    $('#ApplicationPendingStatus').show();
//                }

//                if (data.applicatioN_STEP_DESCRIPTION !== 'Approved' && data.applicatioN_STEP_DESCRIPTION !== 'Rejected' && data.applicatioN_STEP_DESCRIPTION !== 'Request for documents') {
//                    $('#ApplicationAdminSection').show();
//                }


//                setTimeout(function () {
//                    $('#SERVICE_TYPE').val(data.servicE_TYPE);
//                    $.fn.ChangeServiceType();
//                    $('#SERVICE_SUB_TYPE').val(data.servicE_SUB_TYPE);
//                    $.fn.GetFormdataValues();
//                    Map_LocationsFromServer = data.wL_WORK_LOCATIONS;
//                    circulatedDepartmentList = data.departments;
//                    Customer_RegionListFromServer = data.wL_REGIONS;
//                    Customer_ContactPersonListFromServer = data.wL_CONTACT_PERSONS;
//                    ServiceDocumentListFromServer = data.wL_SUPPORTING_DOCUMENTS;
//                    $.fn.BindLocations();
//                    $.fn.AddContactPerson();
//                    bindRegionDataFromList()
//                    $.fn.LoadSupportingDocumentsOnPageLoad();

//                    if (circulatedDepartmentList.length > 0) {
//                        console.log("ServiceDepartmentList");
//                        console.log(ServiceDepartmentList);
//                        $('#showUpdateDepartmentStaus').show();
//                        //$.each(ServiceDepartmentList, function (a, i) {
//                        //    $.each(circulatedDepartmentList, function (b, j) {
//                        //        alert(i.description);
//                        //        alert(j.description);
//                        //        if (i.description === j.description) {
//                        //            //$("#CheckBox_" + i.id).prop("checked", true);                                    
//                        //            if ($("#CurrentUserDepartmentName").val() === j.description) {
//                        //                $("#DEPARTMENT_STATUS").val(j.applicationStatus);
//                        //                $("#DEPARTMENT_COMMENTS").val(j.comment);
//                        //            }

//                        //        }
//                        //    })
//                        //})

//                        for (let i = 0; i < ServiceDepartmentList.length; i++) {
//                            var id = ServiceDocumentList[i].id + "SupportDocument";
//                            var index = i + 1;
//                            $('#ServiceDocumentList').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' /></td></tr>');
//                        };
//                    }                    
//                    }, 5000)                
//            }
//            else {
                
//            }
//        });
//    }
//}

//// Update application status only
//$.fn.UpdateApplicationFormStaus = function () {
//    if (appFormData.AppStatus != null && appFormData.AppStatus != undefined && appFormData.AppStatus != "") {
//        $('#isAppLoading').show();

//        var inpuclaims = {
//            appId: appFormData.APP_ID,
//            appStatus: appFormData.AppStatus,
//            comments: $("#APPLICATION_COMMENTS").val(),
//            deptComments: $("#DEPARTMENT_COMMENTS").val(),
//            deptName: $("#CurrentUserDepartmentName").val(),
//            deptStatus: $("#DEPARTMENT_STATUS").val(),
//        };
//        $.ajax({
//            headers: {
//                'Accept': 'application/json',
//                'Content-Type': 'application/json'
//            },
//            'type': 'POST',
//            'url': apiBaseUrl + 'update-application-form-status',
//            'data': JSON.stringify(inpuclaims),
//            'dataType': 'json',            
//            'success': function (data, textStatus, xhr) {
//                console.log("======Application update Result=========");
//                console.log(data);
//                if (data) {
//                    toastr.success('Application status has been updated successfully!');
//                    setTimeout(function () {
//                        window.location.href = "../WL/index";
//                    }, 1000)
//                }
//                $('#isAppLoading').hide();
//            },
//            error: function (xhr, textStatus, errorThrown) {
//                //console.log('Error in Operation');
//                toastr.error('Error in Operation');
//            }
//        });
//    }
//    else {
//        toastr.warning('Please select status!');
//    }
//}

//// Update Departments status only
//$.fn.UpdateDepartmentStaus = function () {
//    var ds = $("#DEPARTMENT_STATUS").val();
//    var dc = $("#DEPARTMENT_COMMENTS").val()
//    if (ds != undefined && ds != null && ds != "") {
//        if (ds == "Rejected") {
//            if (dc != undefined && dc != null && dc != "") {

//            }
//            else {
//                toastr.warning('* fields are required!');
//                return;
//            }
//        }
//        $('#isAppLoading').show();
//        var inpuclaims = {
//            appId: appFormData.APP_ID,
//            appStatus: appFormData.AppStatus,
//            comments: $("#APPLICATION_COMMENTS").val(),
//            deptComments: $("#DEPARTMENT_COMMENTS").val(),
//            deptName: $("#CurrentUserDepartmentName").val(),
//            deptStatus: $("#DEPARTMENT_STATUS").val(),
//        };
//        $.ajax({
//            headers: {
//                'Accept': 'application/json',
//                'Content-Type': 'application/json'
//            },
//            'type': 'POST',
//            'url': apiBaseUrl + 'update-circulated-department-status',
//            'data': JSON.stringify(inpuclaims),
//            'dataType': 'json',
//            'success': function (data, textStatus, xhr) {
//                console.log("======circulated department Result=========");
//                console.log(data);
//                if (data) {
//                    toastr.success('Department status has been updated successfully!');
//                    setTimeout(function () {
//                        window.location.href = "../WL/index";
//                    }, 1000)
//                }
//                $('#isAppLoading').hide();
//            },
//            error: function (xhr, textStatus, errorThrown) {
//                //console.log('Error in Operation');
//                toastr.error('Error in Operation');
//            }
//        });
//    }
//    else {
//        toastr.warning('* fields are required!');
//    }
//}

//function ViewDocument(DOCUMENT_NAME) {
//    var filename = window.href = '../uploads/' + DOCUMENT_NAME;
//    window.open(filename);
//}


////Change application status
//$.fn.ChangeAppSatus = function (flag) {
//    var val = "";
//    $('#IsStatusReject').hide();
//    $('#IsRequestDocuments').hide();

//    if (flag =="ApproveStatus") {
//        val = $('#AppStatus').val();
//        appFormData.AppStatus = val;
//        if (val == "Rejected") {
//            $('#IsStatusReject').show();
//        }
//    }

//    if (flag == "PendingStatus") {
//        val = $('#AppPendingStatus').val();
//        appFormData.AppStatus = val;
//        if (val == "Request for documents") {
//            $('#IsRequestDocuments').show();
//        }
//    }
    
//    IsRequestDocuments = val === 'Request for documents' ? true : false;
//    IsStatusReject = val === 'Rejected' ? true : false;
//}


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
var ServiceDeclarationList = [];
var ServiceDocumentListTemp = [];
var ServiceDepartmentList = [];
var Map_LocationsFromServer = [];
var circulatedDepartmentList = [];
var Customer_RegionListFromServer = [];
var Customer_ContactPersonListFromServer = [];
var ServiceDocumentListFromServer = [];
var ServiceDeclarationListFromServer = [];
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
var BaseUrl = localStorage.getItem('BaseUrl');
//alert(apiBaseUrl);
var accountID = localStorage.getItem('wayleaveAccountNumber');
var isDepartmentResponseReceived = false;
var circulateAllDepartmentResponses = 0
var circulatedDepartmentScenario1 = false;
var circulatedDepartmentScenario2 = false;
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

$.fn.showGPS = function () {
    Startinitialize("");
    Endinitialize("");
}
//$.fn.ShowSearchMap = function (id) {
//    //ajaxOnComplete();

//    GlobalSearchResult = "";
//    GlobalSearchResult = id;
//    var mapAddress = $("#" + id).val();
//    //$("#search").html('');
//    //$("#map").html('');
//    //ajaxOnComplete();
//    //("#ArcGisSearchMap").load(window.location.href + " #ArcGisSearchMap");
//    var url = "../Home/testMap?address=" + mapAddress;
    

//    //$("#search_input").val("225 Commissioner St, Boksburg, Ekurhuleni, Gauteng, 1459");
    
//    //var e = jQuery.Event("keypress");
//    //e.which = 13; //enter keycode
//    //e.keyCode = 13;
//    //$("#search_input").trigger(e); search_menu_button
//    //document.getElementById('search_input').click();
//    document.getElementById("Arciframe").setAttribute("src", url);
    
//    setTimeout(function () {
//        $("#locationPopup").modal('show');
//        //$('#search select').on('change', function () {
//        //    alert(this.value);
//        //});
//        //var input = document.getElementById("search_input");
//        //input.addEventListener("keyup", function (event) {
//        //    if (event.keyCode === 13) {
//        //        event.preventDefault();
//        //        document.getElementById("myBtn").click();
//        //    }
//        //});
//        //document.getElementById("search_input").focus();
//        //$(".esriGeocoderSearch").submit();
//        //document.getElementById("search_input").click();
//        //var elem = document.getElementById("search_input");
//        //elem.setAttribute("onclick", "javascript:this.form.submit();");
//        //$(document).on('keydown', function (e) {
//        //    if (e.which == 13) {
//        //        alert('User pressed Enter!');
//        //    }
//        //});
//        //document.getElementById("search_input").addEventListener("keydown", function (event) {
//        //        if (event.ctrlKey && event.key === "z") {
//        //            // Do Something, may be an 'Undo' operation
//        //        }
//        //    });
//        //clickevent();
//        //document.getElementById("search_menu_button").click();
        
//        //document.getElementById("search_input")
//        //    .addEventListener("keyup", function (event) {
//        //        event.preventDefault();
//        //        if (event.keyCode === 13) {
//        //            document.getElementById("search_menu_button").click();
//        //        }
//        //    });
//    }, 5000);
   
    
//};

$.fn.ShowSearchMap = function (id) {
    //alert(id);
    
    $("#ShowMapLoader").show();
    GlobalSearchResult = "";
    GlobalSearchResult = id;
    var mapAddress = $("#" + id).val();
    var iframe = document.getElementById('Arciframe');
    iframe.src = "";
    var url = "../Home/MapMarker?address=" + mapAddress;
    $("#locationPopup").modal('show');
    //document.getElementById("Arciframe").setAttribute("src", url);
    setTimeout(function () {
        iframe.src = url;
        //$("#ShowMapLoader").hide();
    }, 3000);
};

function LoadMapPointer(lattitude, longgitude) {
    //alert(lattitude);
    //alert(longgitude);

    //require([
    //    "esri/config",
    //    "esri/map",
    //    "esri/dijit/Geocoder",
    //    //"esri/graphic",
    //    "esri/Graphic",
    //    "esri/symbols/SimpleMarkerSymbol",
    //    "esri/geometry/screenUtils",
    //    "dojo/dom",
    //    "dojo/dom-construct",
    //    "dojo/query",
    //    "dojo/_base/Color",
        
    //    //"esri/layers/GraphicsLayer"
    //], function (esriConfig, Map, Geocoder, Graphic, SimpleMarkerSymbol, screenUtils, dom, domConstruct, query, Color) {
    //    // create a map and instance of the geocoder widget here
    //    esriConfig.apiKey = "AAPKc21c25baaf40479d9bd172699e2e7106yI9AiNPZK1BLrTgv85rEEOHiLzCrFTRtXeJnGtP45V62xfosNU9BaOu-IQJeRtAt";
    //    var map = new Map("map", {
    //        basemap: "topo",
    //        center: [-38.8587, 31.0218],
    //        zoom: 3,
    //        scale: 500000
    //    });
    //    var geocoder = new Geocoder({
    //        arcgisGeocoder: {
    //            placeholder: "Choose Address"
    //        },
    //        autoComplete: true,
    //        map: map
    //    }, dom.byId("search"));

    //    //const graphicsLayer = new GraphicsLayer();

    //    //const point = { //Create a point
    //    //    type: "point",
    //    //    longitude: 29.8587,
    //    //    latitude: 31.0218
    //    //};
    //    //const simpleMarkerSymbol = {
    //    //    type: "simple-marker",
    //    //    color: [226, 119, 40],  // Orange
    //    //    outline: {
    //    //        color: [255, 255, 255], // White
    //    //        width: 1
    //    //    }
    //    //};
    //    //const pointGraphic = new Graphic({
    //    //    geometry: point,
    //    //    symbol: simpleMarkerSymbol
    //    //});
    //    //graphicsLayer.add(pointGraphic);
    //    //map.add(graphicsLayer);
    //    map.on("load", enableSpotlight);

    //    geocoder.on("select", showLocation);
    //    geocoder.on("clear", removeSpotlight);


    //    function showLocation(evt) {
    //        //alert(evt.result.name);
    //        //alert(GlobalSearchResult);
    //        var selectedAddress = evt.result.name;
    //        $("#" + GlobalSearchResult).val(evt.result.name);
    //        console.log(evt.result);
    //        map.graphics.clear();
    //        var point = evt.result.feature.geometry;
    //        var symbol = new SimpleMarkerSymbol().setStyle(
    //            SimpleMarkerSymbol.STYLE_SQUARE).setColor(
    //                new Color([255, 0, 0, 0.5])
    //            );
    //        var graphic = new Graphic(point, symbol);
    //        map.graphics.add(graphic);


    //        map.infoWindow.setTitle("Search Result");
    //        map.infoWindow.setContent(evt.result.name);
    //        map.infoWindow.show(evt.result.feature.geometry);

    //        var spotlight = map.on("extent-change", function (extentChange) {
    //            var geom = screenUtils.toScreenGeometry(map.extent, map.width, map.height, extentChange.extent);
    //            var width = geom.xmax - geom.xmin;
    //            var height = geom.ymin - geom.ymax;

    //            var max = height;
    //            if (width > height) {
    //                max = width;
    //            }

    //            var margin = '-' + Math.floor(max / 2) + 'px 0 0 -' + Math.floor(max / 2) + 'px';

    //            query(".spotlight").addClass("spotlight-active").style({
    //                width: max + "px",
    //                height: max + "px",
    //                margin: margin
    //            });
    //            spotlight.remove();

    //        });
    //        //geocoder.on("clear", removeSpotlight);
    //        //removeSpotlight();
    //        //map.graphics.clear();
    //    }

    //    function enableSpotlight() {
    //        var html = "<div id='spotlight' class='spotlight'></div>"
    //        domConstruct.place(html, dom.byId("map_container"), "first");
    //    }

    //    function removeSpotlight() {
    //        //alert('remove');
    //        //map.graphics.remove(graphic);
    //        query(".spotlight").removeClass("spotlight-active");
    //        map.infoWindow.hide();
    //        map.graphics.clear();
    //    }
    //});
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
    //$.fn.GetServiceTypes();
    //$.fn.getMapRoute();
    //GetApplicationStausTypes();
    //$.fn.GetContractorOrConsultant();
    //$.fn.GetCustomercareCenters();
    //if (!appId) {
    //$.fn.LoadSupportingDocumentsOnPageLoad();
    //}
    //$.fn.LoadDeclarationsOnPageLoad();
    //Startinitialize('');
    //Endinitialize('');
}

//Load Application details by application id
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
                $('#SERVICE_TYPE_NEW').val(data.servicE_TYPE_NEW);
                $('#PROPERTYOWNER_ACCOUNT_NO').val(data.propertyowneR_ACCOUNT_NO);
                $('#PROPERTYOWNER_NAME').val(data.propertyowneR_NAME);
                $('#PROPERTYOWNER_SURNAME').val(data.propertyowneR_SURNAME);
                $('#PROPERTYOWNER_CONTACTNO').val(data.propertyowneR_CONTACTNO);
                $('#PROPERTYOWNER_MOBILENO').val(data.propertyowneR_MOBILENO);
                $('#PROPERTYOWNER_EMAIL').val(data.propertyowneR_EMAIL);

                $("#IDENTIFICATION_NUMBER").val(data.identificatioN_NUMBER);
                $("#GENDER").val(data.gender);
                $('#PROJECT_NUMBER').val(data.projecT_NUMBER);

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

                $('#GPS_START_LATITUDE').val(data.gpS_START_LATITUDE);
                $('#GPS_START_LONGITUDE').val(data.gpS_START_LONGITUDE);
                $('#GPS_END_LATITUDE').val(data.gpS_END_LATITUDE);
                $('#GPS_END_LONGITUDE').val(data.gpS_END_LONGITUDE);
                $('#REGION_OR_AREA').val(data.regioN_OR_AREA);
                //appFormData.TYPE_OF_ROADCROSSING = $('#ChkHD').val();//*
                //appFormData.TYPE_OF_ROADCROSSING1 = $('#ChkOT').val();//*
                //appFormData.TYPE_OF_ROADCROSSING2 = $('#ChkNone').val();//*

                //$('#ChkHD').val(data.typE_OF_ROADCROSSING);
                if (data.typE_OF_ROADCROSSING) {
                    $("#ChkHD").prop('checked', true);
                }
                if (data.typE_OF_ROADCROSSING1) {
                    if (data.typE_OF_ROADCROSSING1 == "Horizontal drilling") {
                        $("#ChkHD").prop('checked', true);
                    }
                    if (data.typE_OF_ROADCROSSING1 == "Open trench") {
                        $('#OpenTrenchComment').show();
                        $("#ChkOT").prop('checked', true);
                        $("#OPEN_TRENCH_COMMENT").val(data.opeN_TRENCH_COMMENT);
                    }
                    if (data.typE_OF_ROADCROSSING1 == "None") {
                        $("#ChkNone").prop('checked', true);
                    }
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
                $('#APPLICATION_STEP_DESCRIPTION1').css('color', 'red');
                $('#APPLICATION_STEP_DESCRIPTION_STATUS').text(data.applicatioN_STEP_DESCRIPTION);
                $('#APPLICATION_STEP_DESCRIPTION1').text(data.applicatioN_STEP_DESCRIPTION);

                //if (data.applicatioN_STEP_DESCRIPTION == "Application Supported") {
                //    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'green');
                //    $('#APPLICATION_STEP_DESCRIPTION1').css('color', 'green');
                //}
                if (data.applicatioN_STEP_DESCRIPTION == "Request for documents") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'red');
                    $('#APPLICATION_STEP_DESCRIPTION1').css('color', 'red');
                    $('#APPLICATION_STEP_DESCRIPTIONComments').show();
                    $('#APPLICATION_DESCRIPTIONComments').text(data.applicatioN_COMMENTS);
                }

                if (data.applicatioN_STEP_DESCRIPTION == "Request for approvals" || data.applicatioN_STEP_DESCRIPTION == "Distributed to Departments") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'red');
                    $('#APPLICATION_STEP_DESCRIPTION1').css('color', 'red');
                    //$('#APPLICATION_STEP_DESCRIPTION_RequestStatus').show();
                    $('#ApplicationAdminSection').hide();                    
                }

                if (data.applicatioN_STEP_DESCRIPTION == "Pending") {
                    //$('#ApplicationPendingStatus').show();
                    //$('#APPLICATION_STEP_DESCRIPTION_RequestStatus').show();
                }

                //if (data.applicatioN_STEP_DESCRIPTION !== 'Approved' && data.applicatioN_STEP_DESCRIPTION !== 'Completed' && data.applicatioN_STEP_DESCRIPTION !== 'Rejected' && data.applicatioN_STEP_DESCRIPTION !== 'Request for documents') {
                //    $('#ApplicationAdminSection').show();
                //}

                if (data.applicatioN_STEP_DESCRIPTION == "Awaiting Wayleave Officer Review") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'red');
                    $('#APPLICATION_STEP_DESCRIPTION1').css('color', 'red');
                    $('#APPLICATION_STEP_DESCRIPTION_RequestStatus').show();
                    $('#ApplicationAdminSection').show();
                }

                if (data.applicatioN_STEP_DESCRIPTION == "Application Supported") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'green');
                    $('#APPLICATION_STEP_DESCRIPTION1').css('color', 'green');
                    $('#ApplicationAdminSection').hide();
                    $('#ApplicationClosureStatus').show();
                }

                //alert($("#CurrentUserDepartmentName").val());
                setTimeout(function () {
                    //$.fn.LoadDeclarationsByAppid();
                    $.getJSON(apiBaseUrl + 'get-wayleave-declarations/' + appId, function (dataDeclaration, status, xhr) {
                        ServiceDeclarationListFromServer = dataDeclaration;
                        console.log("===================dataDeclaration bi appid==================");
                        console.log(dataDeclaration);
                        $.fn.LoadDeclarationsByAppid(dataDeclaration);
                    });
                    if (data.applicatioN_STEP_DESCRIPTION == "Distributed to Departments" || data.applicatioN_STEP_DESCRIPTION == "Awaiting Wayleave Officer Review") {
                        $.getJSON(apiBaseUrl + 'get-application-departments/' + appId, function (dataDept, status, xhr) {
                            circulatedDepartmentList = dataDept;
                            console.log("===================dataDepartments by appid==================");
                            console.log(dataDept);
                            if (dataDept) {
                                var departmentName = $("#CurrentUserDepartmentName").val();
                                if (departmentName == "Energy") {
                                    departmentName = "Electricity";
                                }
                                var newArray = dataDept.filter(function (el) {
                                    return el.departmenT_NAME == departmentName;
                                });
                                console.log("newArray");
                                console.log(newArray);
                                if (newArray.length > 0) {
                                    var CirculatedDeptStatus = newArray[0].applicatioN_STATUS;
                                    var CirculatedDeptCmnt = newArray[0].approvE_OR_REJECT_COMMENTS;
                                    if (CirculatedDeptStatus == "Affected - Not supported" || CirculatedDeptStatus == "Affected - Conditional" || CirculatedDeptStatus == "Request for documents") {
                                        $("#DEPARTMENT_STATUS").val(CirculatedDeptStatus);
                                        $('#departmentRejectComment').show();
                                        $("#DEPARTMENT_COMMENTS").val(CirculatedDeptCmnt);
                                    }
                                    else if (CirculatedDeptStatus == "Not Affected") {
                                        $("#DEPARTMENT_STATUS").val(CirculatedDeptStatus);
                                    }

                                }

                            }
                            $.fn.LoadDepartmentsByAppid(dataDept);
                        });
                    }

                    $.fn.GetFormdataValues();
                    ServiceDocumentListFromServer = data.wL_SUPPORTING_DOCUMENTS;
                    $.fn.LoadSupportingDocumentsByAppid(data.applicatioN_STEP_DESCRIPTION);
                                      
                }, 10000);
                setTimeout(function () {
                    $("#PageLoaderModel").modal('hide');
                }, 15000);
            }
            else {
                $("#PageLoaderModel").modal('hide');
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
    if (appFormData.APPLICATION_STEP_DESCRIPTION == "Pending Payment") {
        $.fn.SaveApplicationForm("", "");
    }
    else {
        $("#PaymentModel").modal();
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

    formData.append("FormData", JSON.stringify(appFormData));
    //formData.append("RegionData", JSON.stringify(Customer_Region));
    //formData.append("ContactPersonData", JSON.stringify(Customer_ContactPerson));
    formData.append("SupportDocumentList", JSON.stringify(ServiceDocumentList));
    //formData.append("WorkLocations", JSON.stringify(Map_Locations));
    //formData.append("Departments", JSON.stringify(DepartmentList));
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
            }
            else {
                toastr.success('Application form submitted successfully');
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

    appFormData.IDENTIFICATION_NUMBER = $("#IDENTIFICATION_NUMBER").val();
    appFormData.GENDER = $("#GENDER").val();
    appFormData.PROJECT_NUMBER = $('#PROJECT_NUMBER').val();

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
                $('#ServiceDeclarationList').empty();
                $("#ServiceDeclarationListFromServer").hide();
                //ServiceDeclarationListFromServer = data;
                //for (let i = 0; i < ServiceDeclarationListFromServer.length; i++) {
                //    var id = "CheckBox_" + ServiceDeclarationListFromServer[i].id;
                //    $('#ServiceDeclarationListFromServer').append('<tr><td><input type="checkbox" class="checkbox-custom" id=' + id + ' value="' + ServiceDeclarationListFromServer[i].description + '"><label class="checkbox-custom-label" for=' + id + '>' + ServiceDeclarationListFromServer[i].description + '</label></td></tr>');
                //};
                $.fn.LoadDeclarationsOnPageLoad();
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
            console.log("======Service DocumentList from server Result=========");
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
                    //for (let j = 0; j < ServiceDocumentListFromServer.length; j++) {
                    //    var id = ServiceDocumentListFromServer[j].sD_ID + "SupportDocument";
                    //    if (sid == id) {
                    //        isAppend = true;
                    //        var ttt = ServiceDocumentListFromServer[j].documenT_NAME;
                    //        //alert(ServiceDocumentListFromServer[j].documenT_NAME);
                    //        $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' /><a id=' + id + ' onclick="ViewDocument("'+ ttt + '")" style="color:darkblue">'+ServiceDocumentListFromServer[j].documenT_NAME+'</a></td></tr>');
                    //    }
                    //};
                    for (let j = 0; j < ServiceDocumentListFromServer.length; j++) {
                        var id = ServiceDocumentListFromServer[j].sD_ID + "SupportDocument";
                        var linkId = ServiceDocumentListFromServer[j].sD_ID + "LinkSupportDocument";
                        if (sid == id) {
                            isAppend = true;
                            var ttttgt = ServiceDocumentListFromServer[j].documenT_NAME;
                            var docUrl = "../uploads/" + ttttgt;
                            //menulink.href = "javascript: void (0)";
                            //menulink.onclick = ViewDocument(ServiceDocumentListFromServer[j].documenT_NAME);
                            $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><a id=' + linkId + ' target="_blank" href="' + docUrl + '" style="text-decoration:none!important;color:#000!important" rel="noopener noreferrer" name="LinkA">View</a></td></tr>');
                            //var menulink = document.getElementById(linkId);
                            //menulink.setAttribute("onclick", "ViewDocument('" + ServiceDocumentListFromServer[j].documenT_NAME + "')");
                            //$('#ServiceDocumentListFromServer').append(menulink);
                            //AddEvent(menulink, "click", ViewDocument(ServiceDocumentListFromServer[j].documenT_NAME));
                        }
                    };
                    if (!isAppend) {
                        $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td></td></tr>');
                    }
                };
            }
            else {
                ServiceDocumentListFromServer = data;
                for (let j = 0; j < ServiceDocumentListFromServer.length; j++) {
                    var id = ServiceDocumentListFromServer[j].id + "SupportDocument";
                    var index = j + 1;
                    $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentListFromServer[j].description + '</td><td></td></tr>');
                };
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });   

}

$.fn.LoadDepartmentsByAppid = function (deptdata) {
    //alert('dept');
    isDepartmentResponseReceived = false;
    ServiceDepartmentList = [];
    circulatedDepartmentList = [];
    circulatedDepartmentList = deptdata;
    circulateAllDepartmentResponses = 0;
    circulatedDepartmentScenario1 = false;
    circulatedDepartmentScenario2 = false;
    if (circulatedDepartmentList.length > 0) {
        $('#DepartmentInfo').show();
        $('#showUpdateDepartmentStaus').show();
        $('#circulatedDepartmentList').empty();
        console.log("circulated Department List");
        console.log(circulatedDepartmentList);
        //alert(circulatedDepartmentList.length);
        for (let i = 0; i < circulatedDepartmentList.length; i++) {
            var dptInfo = circulatedDepartmentList[i];
            var status = "";
            var dptComment = "";
            //alert(circulatedDepartmentList[i].createD_ON);
            //alert(Date.parse(circulatedDepartmentList[i].createD_ON));
            //var dt = formatDate(circulatedDepartmentList[i].createD_ON);
            var responseDate = "";
            var responseTime = "";
            if (circulatedDepartmentList[i].responsE_DATE != null) {
                responseDate = formatDate(circulatedDepartmentList[i].responsE_DATE);
                responseTime = formatTime(circulatedDepartmentList[i].responsE_DATE);
            }
            
            //;
            if (dptInfo.applicatioN_STATUS != null && dptInfo.applicatioN_STATUS != '') {
                
                status = dptInfo.applicatioN_STATUS;
            }

            if (dptInfo.approvE_OR_REJECT_COMMENTS != null && dptInfo.approvE_OR_REJECT_COMMENTS != '') {
                dptComment = dptInfo.approvE_OR_REJECT_COMMENTS;
            }
            var tt = "";
            if (status == "Not Affected" || status == "Affected - Not supported" || status =="Affected - Conditional") {
                isDepartmentResponseReceived = true;
                tt = "text-success";
                circulateAllDepartmentResponses++;
            }
            if (status == "Affected - Not supported") {
                circulatedDepartmentScenario2 = true;
            }
            if (status == "Not Affected") {
                tt = "text-success";
            }
            else {
                tt = "text-red";
            }
            $('#circulatedDepartmentList').append('<tr><td>' + circulatedDepartmentList[i].dpT_ID + '</td> <td>' + circulatedDepartmentList[i].departmenT_NAME + '</td> <td class="' + tt + '">' + status + '</td> <td>' + dptComment + '</td> <td>' + responseDate + '</td><td>' + responseTime + '</td> </tr>');

        };

        if (circulatedDepartmentScenario2) {
            $("#circulateScenarioOne").hide();
        }
        else {
            $("#circulateScenarioOne").show();
        }
    }
    //$("#PageLoaderModel").modal('hide');
}

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2)
        month = '0' + month;
    if (day.length < 2)
        day = '0' + day;

    return [year, month, day].join('-');
}

function formatTime(date) {
    var time = new Date(date);
    return time.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true });
}

// Update application status only
$.fn.UpdateApplicationFormStaus = function () {
    if (appFormData.AppStatus != null && appFormData.AppStatus != undefined && appFormData.AppStatus != "") {

        if ($("#AppStatus").val() == "Application Not Supported") {
            var arc = $("#APPLICATIONReject_COMMENTS").val();
            if (arc != "" && arc != undefined) {

            }
            else {
                toastr.warning('* Fields are required!');
                return;
            }
        }

        if (circulateAllDepartmentResponses == circulatedDepartmentList.length) {
            $('#isAppLoading').show();
            var departmentName = $("#CurrentUserDepartmentName").val();
            if (departmentName == "Energy") {
                departmentName = "Electricity";
            }
            var inpuclaims = {
                appId: appFormData.APP_ID,
                appStatus: appFormData.AppStatus,
                comments: $("#APPLICATIONReject_COMMENTS").val(),
                deptComments: $("#DEPARTMENT_COMMENTS").val(),
                deptName: departmentName,
                deptStatus: $("#DEPARTMENT_STATUS").val(),
                first_name: $("#CurrentUserName").val(),
            };
            $.ajax({
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                'type': 'POST',
                'url': apiBaseUrl + 'update-application-form-status',
                'data': JSON.stringify(inpuclaims),
                'dataType': 'json',
                'success': function (data, textStatus, xhr) {
                    console.log("======Application update Result=========");
                    console.log(data);
                    if (data) {
                        toastr.success('Application submitted successfully!');
                        setTimeout(function () {
                            window.location.href = "../WL/index";
                        }, 1000)
                    }
                    $('#isAppLoading').hide();
                },
                error: function (xhr, textStatus, errorThrown) {
                    //console.log('Error in Operation');
                    toastr.error('Error in Operation');
                }
            });
        }
        else {
            toastr.warning('All department response is required!');
        }        
    }
    else {
        toastr.warning('Please select status!');
    }
}

$.fn.CloseApplicationForm = function () {
    //alert(appFormData.AppStatus);
    var inspectionBy = $("#INSPECTION_BY").val();
    if (appFormData.AppStatus != null && appFormData.AppStatus != undefined && appFormData.AppStatus != "") {
        
        if ($("#INSPECTION_STATUS").val() == "Application Closed") {
            var insReference = $("#INSPECTION_REFERENCE_NO").val();
            var insDate = $("#INSPECTION_DATE").val();
            var insBy = $("#INSPECTION_BY").val();
            var insComments = $("#INSPECTION_COMMENTS").val();
            if (insReference != "" && insReference != undefined && insDate != "" && insDate != undefined && insBy != "" && insBy != undefined && insComments != "" && insComments != undefined) {

            }
            else {
                toastr.warning('* Fields are required!');
                return;
            }
        }

        $('#isAppLoadingNew').show();
        var departmentName = $("#CurrentUserDepartmentName").val();
        if (departmentName == "Energy") {
            departmentName = "Electricity";
        }

        var inpuclaims = {
            appId: appFormData.APP_ID,
            appStatus: appFormData.AppStatus,
            
            deptName: departmentName,
            deptStatus: $("#DEPARTMENT_STATUS").val(),
            first_name: $("#CurrentUserName").val(),
            inspectionStatus: $("#INSPECTION_STATUS").val(),
            inspectionComments: $("#INSPECTION_COMMENTS").val(),
            inspectionBy: $("#INSPECTION_BY").val(),
            inspectionReferenceNo :$("#INSPECTION_REFERENCE_NO").val(),
            inspectionDate : $("#INSPECTION_DATE").val()
        };
        $.ajax({
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            'type': 'POST',
            'url': apiBaseUrl + 'close-application-form',
            'data': JSON.stringify(inpuclaims),
            'dataType': 'json',
            'success': function (data, textStatus, xhr) {
                console.log("======Application closed Result=========");
                console.log(data);
                if (data) {
                    toastr.success('Application closed successfully!');
                    setTimeout(function () {
                        window.location.href = "../WL/index";
                    }, 1000)
                }
                $('#isAppLoading').hide();
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

//// Update Departments status only
$.fn.UpdateDepartmentStaus = function () {
    var ds = $("#DEPARTMENT_STATUS").val();
    var dc = $("#DEPARTMENT_COMMENTS").val()
    //alert(ds);
    if (ds != undefined && ds != null && ds != "") {
        if (ds == "Affected - Not supported" || ds == "Affected - Conditional" || ds == "Request for documents") {
            if (dc != undefined && dc != null && dc != "") {

            }
            else {
                toastr.warning('* fields are required!');
                return;
            }
        }
        $('#isAppLoading').show();
        var departmentName = $("#CurrentUserDepartmentName").val();
        if (departmentName == "Energy") {
            departmentName = "Electricity";
        }
        var inpuclaims = {
            appId: appFormData.APP_ID,
            appStatus: appFormData.AppStatus,
            comments: $("#APPLICATION_COMMENTS").val(),
            deptComments: $("#DEPARTMENT_COMMENTS").val(),
            deptName: departmentName,
            deptStatus: $("#DEPARTMENT_STATUS").val(),
            first_name: $("#CurrentUserName").val(),
        };
        console.log("====inpuclaims===========");
        console.log(inpuclaims);
        $.ajax({
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            'type': 'POST',
            'url': apiBaseUrl + 'update-circulated-department-status',
            'data': JSON.stringify(inpuclaims),
            'dataType': 'json',
            'success': function (data, textStatus, xhr) {
                console.log("======circulated department Result=========");
                console.log(data);
                if (data) {
                    toastr.success('Department status has been updated successfully!');
                    setTimeout(function () {
                        window.location.href = "../WL/index";
                    }, 1000)
                }
                $('#isAppLoading').hide();
            },
            error: function (xhr, textStatus, errorThrown) {
                //console.log('Error in Operation');
                toastr.error('Error in Operation');
            }
        });
    }
    else {
        toastr.warning('* fields are required!');
    }
}

function ViewDocument(DOCUMENT_NAME) {
    //alert(DOCUMENT_NAME);
    var filename = window.href = '../uploads/' + DOCUMENT_NAME;
    window.open(filename);
}

$.fn.CloseApplicationFormModal = function () {
    $('#CloseApplicationModel').modal('show');
}
//Change application status
$.fn.ChangeAppSatus = function (flag) {
    var val = "";
    $('#IsStatusReject').hide();
    $('#IsRequestDocuments').hide();
    $('#IsInspectionOutcomeComments').hide();
    if (flag =="ApproveStatus") {
        val = $('#AppStatus').val();
        appFormData.AppStatus = val;
        if (val == "Application Not Supported") {
            $('#IsStatusReject').show();
        }
    }

    if (flag == "PendingStatus") {
        val = $('#AppPendingStatus').val();
        appFormData.AppStatus = val;
        if (val == "Request for documents") {
            $('#IsRequestDocuments').show();
        }
    }

    if (flag == "INSPECTION_STATUS") {
        val = $('#INSPECTION_STATUS').val();
        appFormData.AppStatus = val;
        if (val == "Application Closed") {
            $('#IsInspectionOutcomeComments').show();
        }
    }

    IsRequestDocuments = val === 'Request for documents' ? true : false;
    IsStatusReject = val === 'Application Not Supported' ? true : false;
}

 $.fn.changeDepartmentStatus = function () {
    var status = $('#DEPARTMENT_STATUS').val();
    $('#departmentRejectComment').hide();

     if (status == "Affected - Not supported" || status == "Affected - Conditional" || status == "Request for documents") {
        $('#departmentRejectComment').show();
    }
}



