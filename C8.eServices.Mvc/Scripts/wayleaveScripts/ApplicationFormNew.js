﻿//Intialize variables
var appFormData = new Object();
var excavationFormData = new Object();
var Map_Locations = [];
var ExcavationData = [];
var ExcavationDataFromServer = [];
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
var GlobalSearchResult = "";
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
var BaseUrl = localStorage.getItem('BaseUrl');
var requiredDocumnetCount = 0;
var requiredUploadDocumentCount = 0;
var totalUploadDocumentCount = 0;
//alert(apiBaseUrl);
var accountID = localStorage.getItem('wayleaveAccountNumber');
//var appId = localStorage.getItem('appId');
$("#IsViewApplication").show();
circulatedDepartmentList = [];
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


//$.fn.ShowSearchMap = function (id) {
//    //ajaxOnComplete();
//    GlobalSearchResult = "";
//    GlobalSearchResult = id;
//    //$("#search").html('');
//    //$("#map").html('');
//    //ajaxOnComplete();
//    //("#ArcGisSearchMap").load(window.location.href + " #ArcGisSearchMap");
//    var url = "../Home/testMap?id="+id;

//    document.getElementById("Arciframe").setAttribute("src", url);
//    $("#locationPopup").modal('show');
//    //const apiKey = "AAPKc21c25baaf40479d9bd172699e2e7106yI9AiNPZK1BLrTgv85rEEOHiLzCrFTRtXeJnGtP45V62xfosNU9BaOu-IQJeRtAt";

//    //const basemapEnum = "ArcGIS:Navigation";

//    //const map = L.map("map", {
//    //    minZoom: 2

//    //}).setView([-26.18848, 28.32078], 14); // Sydney

//    //L.esri.Vector.vectorBasemapLayer(basemapEnum, {
//    //    apiKey: apiKey
//    //}).addTo(map);


//    //var searchControl = L.esri.Geocoding.geosearch({
//    //    position: "topright",
//    //    placeholder: "Enter an address or place e.g. 37 Brakpan Rd",
//    //    useMapBounds: false,
//    //    providers: [L.esri.Geocoding.arcgisOnlineProvider({
//    //        apikey: apiKey,
//    //        nearby: {
//    //            lat: -26.18848,
//    //            lng: 28.32078
//    //        },
//    //    })]
//    //}).addTo(map);

//    //var results = L.layerGroup().addTo(map);

//    //searchControl.on("results", (data) => {
//    //    alert(data.results.length);

//    //    results.clearLayers();
//    //    for (let i = data.results.length - 1; i >= 0; i--) {
//    //        console.log(data.results);
//    //        const lngLatString = `${Math.round(data.results[i].latlng.lng * 100000) / 100000}, ${Math.round(data.results[i].latlng.lat * 100000) / 100000}`;
//    //        const marker = L.marker(data.results[i].latlng);
//    //        marker.bindPopup(`<b>${lngLatString}</b><p>${data.results[i].properties.LongLabel}</p>`)
//    //        results.addLayer(marker);
//    //        var lat = data.results[i].latlng.lat;
//    //        var lng = data.results[i].latlng.lng;
//    //        var latilngi = lat + "," + lng;
//    //        //alert(latilngi);
//    //        //debugger;
//    //        //var streetnumber = data.results[i].properties.AddNum;
//    //        //var streetname = data.results[i].properties.StName;
//    //        //var township = data.results[i].properties.District;
//    //        //marker.openPopup();
//    //        //console.log(data.results[i]);
//    //        //debugger;
//    //        $.ajax({
//    //            type: 'GET',
//    //            url: '@Url.Action("GetAddress", "WayleaveAccount")',
//    //            data: { latilngi: latilngi },
//    //            success: function (response) {
//    //                //debugger;
//    //                console.log(response);
//    //                var obj1 = JSON.parse(response);
//    //                var obj = obj1;
//    //                if (obj.StreetName != "" || obj.StreetNumber != "" || obj.TownShip != "") {
//    //                    alert('success');
//    //                    //$("#" + GlobalSearchResult).val(evt.result.name);
//    //                    //window.parent.document.getElementById("streetnumber").value = streetnumber;
//    //                    //window.parent.document.getElementById("streetnamefield").value = streetname;
//    //                    ////window.parent.document.getElementById("streetnumber").value = obj.StreetNumber;
//    //                    ////window.parent.document.getElementById("streetnamefield").value = obj.StreetName;
//    //                    //window.parent.document.getElementById("suburbdist").value = township;
//    //                    //window.parent.document.getElementById("cityfield").value = data.results[i].properties.Subregion;
//    //                    //window.parent.document.getElementById("postalcode").value = data.results[i].properties.Postal;
//    //                    //window.parent.document.getElementById("customerLatLong").value = latilngi;
//    //                    //alert(streetnumber);
//    //                    //alert(streetname);

//    //                }
//    //                else {
//    //                    alert("Please note that the address provided is outside Ekurhuleni.");
//    //                    //parent.genericSystemMessage("Please note that the address provided is outside Ekurhuleni.");
//    //                }
//    //            }
//    //        });

//    //    }
//    //});
    
//};

function ajaxOnComplete() {
    require([
        "esri/map",
        "esri/dijit/Geocoder",
        "esri/graphic",
        "esri/symbols/SimpleMarkerSymbol",
        "esri/geometry/screenUtils",
        "dojo/dom",
        "dojo/dom-construct",
        "dojo/query",
        "dojo/_base/Color"
    ], function (Map, Geocoder, Graphic, SimpleMarkerSymbol, screenUtils, dom, domConstruct, query, Color) {
        // create a map and instance of the geocoder widget here
        var map = new Map("map", {
            basemap: "topo",
            center: [26.2041, 28.0473],
            zoom: 6,
            scale: 19000
        });
        var geocoder = new Geocoder({
            arcgisGeocoder: {
                placeholder: "Find a place"
            },
            autoComplete: true,
            map: map
        }, dom.byId("search"));

        map.on("load", enableSpotlight);

        geocoder.on("select", showLocation);
        geocoder.on("clear", removeSpotlight);

        function showLocation(evt) {
            //alert(evt.result.name);
            //alert(GlobalSearchResult);
            $("#" + GlobalSearchResult).val(evt.result.name);
            console.log(evt.result);
            map.graphics.clear();
            var point = evt.result.feature.geometry;
            var symbol = new SimpleMarkerSymbol().setStyle(
                SimpleMarkerSymbol.STYLE_SQUARE).setColor(
                    new Color([255, 0, 0, 0.5])
                );
            var graphic = new Graphic(point, symbol);
            map.graphics.add(graphic);

            map.infoWindow.setTitle("Search Result");
            map.infoWindow.setContent(evt.result.name);
            map.infoWindow.show(evt.result.feature.geometry);

            var spotlight = map.on("extent-change", function (extentChange) {
                var geom = screenUtils.toScreenGeometry(map.extent, map.width, map.height, extentChange.extent);
                var width = geom.xmax - geom.xmin;
                var height = geom.ymin - geom.ymax;

                var max = height;
                if (width > height) {
                    max = width;
                }

                var margin = '-' + Math.floor(max / 2) + 'px 0 0 -' + Math.floor(max / 2) + 'px';

                query(".spotlight").addClass("spotlight-active").style({
                    width: max + "px",
                    height: max + "px",
                    margin: margin
                });
                spotlight.remove();
            });
        }

        function enableSpotlight() {
            var html = "<div id='spotlight' class='spotlight'></div>"
            domConstruct.place(html, dom.byId("map_container"), "first");
        }

        function removeSpotlight() {
            query(".spotlight").removeClass("spotlight-active");
            map.infoWindow.hide();
            map.graphics.clear();
        }
    });
} 
/*......................Vew Google Map Route...................................*/
//Intialize google map
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

//function ConsultingAddressinitialize(eAddr) {
//    var input = eAddr != "" ? eAddr : document.getElementById('CONSULTANT_ADDRESS');
//    var autocomplete = new google.maps.places.Autocomplete(input);
//    google.maps.event.addListener(autocomplete, 'place_changed', function () {
//        var place = autocomplete.getPlace();
//        $("#CONSULTANT_ADDRESS").val(place.formatted_address);
//    });
//}

//function ContractorAddressinitialize(eAddr) {
//    var input = eAddr != "" ? eAddr : document.getElementById('CONTRACTOR_ADDRESS');
//    var autocomplete = new google.maps.places.Autocomplete(input);
//    google.maps.event.addListener(autocomplete, 'place_changed', function () {
//        var place = autocomplete.getPlace();
//        $("#CONTRACTOR_ADDRESS").val(place.formatted_address);
//    });
//}

$.fn.showGPS = function () {
    Startinitialize("");
    Endinitialize("");
}

//$.fn.showGPS();

//Get map routes
//$.fn.getMapRoute = function () {
//    initMap(37.7780509, -122.4478889, "37.7791968", "-122.4476479");
//    initMap("14.4426", "79.9865", "13.0827", "80.2707");
//}

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
    //alert();
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
                    if (ServiceDocumentList[i].description != "EFT Payment Receipt") {
                        //alert(ServiceDocumentList[i].isRequired);
                        if (ServiceDocumentList[i].isRequired == "Y") {
                            //alert('success');
                            $('#ServiceDocumentList').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '&nbsp;<b style="color:red !important">*</b></td><td><input type="file" name="Add" id=' + id + ' />&nbsp;<b style="color:blue;font-weight:400!important">(Max. 5mb)</b></td></tr>');
                        }
                        else {
                            $('#ServiceDocumentList').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '</td><td><input type="file" name="Add" id=' + id + ' />&nbsp;<b style="color:blue;font-weight:400!important">(Max. 5mb)</b></td></tr>');
                        }                        
                    }                    
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
            $("#IDENTIFICATION_NUMBER").val(data.identificatioN_NUMBER);
            $("#GENDER").val(data.gender);
            //s.STREET_NAME,s.CITY ,s.PROVINCE, s.COUNTRY ,s.POST_CODE

            $("#CONSULTANT_NO").val(data.accounT_NUMBER);
            $("#CONSULTANT_NAME").val(data.contacT_PERSON_FIRST_NAME);
            $("#CONSULTANT_SURNAME").val(data.contacT_PERSON_LAST_NAME);
            $("#CONSULTANT_COMPANYNAME").val(data.companY_FULL_NAME);
            $("#CONSULTANT_CONTACTNO").val(data.telephonE_NUMBER);
            $("#CONSULTANT_MOBILENO").val(data.mobile);
            $("#CONSULTANT_EMAIL").val(data.email);
            var consultantAddrs = data.streeT_NAME + " " + data.city + " " + data.province + " " + data.country + " " + data.posT_CODE;
            $("#CONSULTANT_ADDRESS").val('');
            setTimeout(function () {
                $("#CONSULTANT_ADDRESS").val(consultantAddrs);
            }, 5000);
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });

}

//Load declaration master data
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
    //alert('init');
    $("#isAppLoading").hide();
    $("#IsAppEdit").hide();
    $.fn.GetContractorOrConsultant();
    //$.fn.GetServiceTypes();
    //$.fn.getMapRoute();
    //GetApplicationStausTypes();
    
    //$.fn.GetCustomercareCenters();
    //if (!appId) {
    //$.fn.LoadSupportingDocumentsOnPageLoad();
    //}
    //$.fn.LoadDeclarationsOnPageLoad();
    //Startinitialize('');
    //Endinitialize('');
    //ConsultingAddressinitialize('');
    //ContractorAddressinitialize('');
}

//Load application details based on application id
$.fn.LoadApplicationsDetailsByAppId = function (appId) {
    if (appId) {
        $("#PageLoaderModel").modal('show');
        $("#IsViewApplication").show();
        $.getJSON(apiBaseUrl + 'get-wlApplication-by-id/' + appId, function (data, status, xhr) {
            console.log("========Wayleave Application form data by app id==========");
            console.log(data);
            if (data) {
                console.log("data.wL_SUPPORTING_DOCUMENTS");
                console.log(data.wL_SUPPORTING_DOCUMENTS);
                //$.fn.GetContractorOrConsultant(consultanT_NO);
                appFormData.APP_ID = data.apP_ID;
                ServiceDocumentListFromServer = [];
                $('#APPLICATION_STEP_DESCRIPTION_STATUS').show();
                $('#SERVICE_TYPE_NEW').val(data.servicE_TYPE_NEW);
                $('#PROPERTYOWNER_ACCOUNT_NO').val(data.propertyowneR_ACCOUNT_NO);
                $('#SERVICE_TYPE_NEW').val(data.servicE_TYPE_NEW);
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
               
                //$('#STARTING_DATE').val(data.startinG_DATE);
                //$('#COMPLETION_DATE').val(data.completioN_DATE);

                if (data.startinG_DATE != undefined && data.startinG_DATE != "" && data.startinG_DATE != null) {
                    var dt = data.startinG_DATE;
                    var ar = dt.split('-');
                    var startDate = ar[2] + "-" + ar[1] + "-" + ar[0];
                    $('#STARTING_DATE').val(startDate);
                }
                if (data.completioN_DATE != undefined && data.completioN_DATE != "" && data.completioN_DATE != null) {
                    var dt = data.completioN_DATE;
                    var ar = dt.split('-');
                    var completionDate = ar[2] + "-" + ar[1] + "-" + ar[0];
                    $('#COMPLETION_DATE').val(completionDate);
                    //appFormData.COMPLETION_DATE = completionDate;
                }


                $('#GPS_START_ADDRESS').val(data.gpS_START_ADDRESS);
                $('#GPS_END_ADDRESS').val(data.gpS_END_ADDRESS);

                $('#REGION_OR_AREA').val(data.regioN_OR_AREA);
                //appFormData.TYPE_OF_ROADCROSSING = $('#ChkHD').val();//*
                //appFormData.TYPE_OF_ROADCROSSING1 = $('#ChkOT').val();//*
                //appFormData.TYPE_OF_ROADCROSSING2 = $('#ChkNone').val();//*

                //$('#ChkHD').val(data.typE_OF_ROADCROSSING);
                if (data.typE_OF_ROADCROSSING) {
                    $("#ChkHD").prop('checked', true);
                }
                if (data.typE_OF_ROADCROSSING1) {
                    if (data.typE_OF_ROADCROSSING1 =="Horizontal drilling") {
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
                $('#APPLICATION_STEP_DESCRIPTION_STATUS').text(data.applicatioN_STEP_DESCRIPTION);

                if (data.applicatioN_STEP_DESCRIPTION == "Completed") {
                    $('#APPLICATION_STEP_DESCRIPTION_STATUS').css('color', 'green');
                }

                if (data.applicatioN_STEP_DESCRIPTION == "Distributed to Departments") {
                    $('#IsViewApplication').show();
                    $('#IsAppEdit').show();
                    $('#isNewApplication').hide();
                }

                

                if (data.applicatioN_STEP_DESCRIPTION == "Request for additional information") {
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

                //if (data.applicatioN_STEP_DESCRIPTION !== 'Approved' && data.applicatioN_STEP_DESCRIPTION !== 'Rejected' && data.applicatioN_STEP_DESCRIPTION !== 'Request for additional information') {
                //    $('#ApplicationAdminSection').show();
                //}
                if (data.applicatioN_STEP_DESCRIPTION == "Application Closed" || data.applicatioN_STEP_DESCRIPTION == "Pending Approval" || data.applicatioN_STEP_DESCRIPTION == "Application Granted" || data.applicatioN_STEP_DESCRIPTION == "Application Rejected") {
                    $('#IsViewApplication').hide();
                }
                if (data.applicatioN_STEP_DESCRIPTION == "Application Closed") {
                    $('#ApplicationClosureStatus').show();
                    //$('#INSPECTION_STATUS').val(data.inspectioN_STATUS);
                    //$('#INSPECTION_REFERENCE_NO').val(data.inspectioN_REFERENCE_NO);
                    //$('#INSPECTION_DATE').val(data.inspectioN_DATE);
                    //$('#INSPECTION_BY').val(data.inspectioN_BY);
                    $('#INSPECTION_FORM').val(data.inspectioN_FORM);
                    //$('#INSPECTION_COMMENTS').val(data.inspectioN_COMMENTS);
                }

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
                                if (CirculatedDeptStatus == "Affected - Not supported" || CirculatedDeptStatus == "Affected - Supported conditionally") {
                                    $("#DEPARTMENT_STATUS").val(CirculatedDeptStatus);
                                    $('#departmentRejectComment').show();
                                    $("#DEPARTMENT_COMMENTS").val(CirculatedDeptCmnt);
                                }
                                else if (CirculatedDeptStatus == "Not Affected" || CirculatedDeptStatus =="Affected - Supported") {
                                    $("#DEPARTMENT_STATUS").val(CirculatedDeptStatus);
                                }

                            }

                        }
                        $.fn.LoadDepartmentsByAppid(dataDept);
                    });
                    $.getJSON(apiBaseUrl + 'get-application-excavationDetails/' + appId, function (dataExcavation, status, xhr) {
                        //circulatedDepartmentList = dataDept;
                        console.log("===================excavation data by appid==================");
                        console.log(dataExcavation);
                        if (dataExcavation) {                            
                            $.fn.LoadExcavationDetailsByAppid(dataExcavation);
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
            if (status == "Not Affected" || status == "Affected - Not supported" || status == "Affected - Supported conditionally" || status =="Affected - Supported") {
                isDepartmentResponseReceived = true;
                tt = "text-success";
                circulateAllDepartmentResponses++;
            }
            if (status == "Affected - Not supported") {
                circulatedDepartmentScenario2 = true;
            }
            if (status == "Not Affected" || status =="Affected - Supported") {
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


$.fn.LoadExcavationDetailsByAppid = function (excavationdata) {
    //alert('dept');
    ExcavationData = [];
    ExcavationDataFromServer = [];
    ExcavationDataFromServer = excavationdata;
    //alert(ExcavationDataFromServer.length);
    if (ExcavationDataFromServer.length > 0) {
        //alert(ExcavationDataFromServer.length);
        $('#ExcavationListData').show();
        $('#ExcavationListDataFromServer').hide();
        for (let i = 0; i < ExcavationDataFromServer.length; i++) {
            var excavationFormData = {};
            excavationFormData.TYPE_OF_ROADCROSSING = ExcavationDataFromServer[i].typE_OF_ROADCROSSING;
            excavationFormData.EXCAVATION_LENGTH = ExcavationDataFromServer[i].excavatioN_LENGTH;
            excavationFormData.RIDING_SURFACE = ExcavationDataFromServer[i].ridinG_SURFACE;
            excavationFormData.KERBS = ExcavationDataFromServer[i].kerbs;
            excavationFormData.OPEN_TRENCH_COMMENT = ExcavationDataFromServer[i].opeN_TRENCH_COMMENT;
            excavationFormData.GPS_START_ADDRESS = ExcavationDataFromServer[i].gpS_START_ADDRESS;
            excavationFormData.GPS_END_ADDRESS = ExcavationDataFromServer[i].gpS_END_ADDRESS;
            excavationFormData.APPLICATION_COMMENTS = ExcavationDataFromServer[i].applicatioN_COMMENTS;
            ExcavationData.push(excavationFormData);
        };
        for (let j = 0; j < ExcavationData.length; j++) {
            var id = j + 1;
            //$('#ExcavationListData').append('<tr><td>' + id + '</td><td>' + ExcavationData[j].typE_OF_ROADCROSSING + '</td><td class="text-right">' + ExcavationData[j].excavatioN_LENGTH + '</td><td class="text-right">' + ExcavationData[j].ridinG_SURFACE + '</td><td class="text-right">' + ExcavationData[j].kerbs + '</td><td>' + ExcavationData[j].gpS_START_ADDRESS + '</td><td>' + ExcavationData[j].gpS_END_ADDRESS + '</td><td>' + ExcavationData[j].applicatioN_COMMENTS + '</td><td><a onclick="removeExcavation(' + id + ')"><i class="fa fa-trash text-danger"></i> </a></td></tr>');
            $('#ExcavationListData').append('<tr><td>' + id + '</td><td>' + ExcavationData[j].TYPE_OF_ROADCROSSING + '</td><td class="text-right">' + ExcavationData[j].EXCAVATION_LENGTH + '</td><td class="text-right">' + ExcavationData[j].RIDING_SURFACE + '</td><td class="text-right">' + ExcavationData[j].KERBS + '</td><td>' + ExcavationData[j].GPS_START_ADDRESS + '</td><td>' + ExcavationData[j].GPS_END_ADDRESS + '</td><td>' + ExcavationData[j].APPLICATION_COMMENTS + '</td><td><a onclick="removeExcavation(' + id + ')"><i class="fa fa-trash text-danger"></i> </a></td></tr>');
        };

        document.getElementById("ChkHD").checked = false;
        document.getElementById("ChkOT").checked = false;
        document.getElementById("ChkNone").checked = false;
        $('#EXCAVATION_LENGTH').val('');
        $('#RIDING_SURFACE').val('');
        $('#KERBS').val('');
        $('#OPEN_TRENCH_COMMENT').val('');
        $('#GPS_START_ADDRESS').val('');
        $('#GPS_END_ADDRESS').val('');
        $('#APPLICATION_COMMENTS').val('');
        $('#OpenTrenchComment').hide();
        $("#ExcavationDetailsPopup").modal('hide');
    }
}

//Bind Worklocations from array

//Open Payment gateway modal
$.fn.SubmitApplication = function () {
    //var startAdrs = $("#GPS_START_ADDRESS").val('Nellore');
    //var endAdrs = $("#GPS_END_ADDRESS").val('Chennai');
    //var startAdrs = $("#GPS_START_ADDRESS").val();
    //var endAdrs = $("#GPS_END_ADDRESS").val();
    var startDt = $("#STARTING_DATE").val();
    var completionDt = $("#COMPLETION_DATE").val();
    var serviceType = $("#SERVICE_TYPE_NEW").val();
    var regionData = $("#REGION_OR_AREA").val();
    requiredDocumnetCount = 0;
    requiredUploadDocumentCount = 0;
    totalUploadDocumentCount = 0;
    if (startDt != "" && startDt != undefined
        && completionDt != "" && completionDt != undefined && serviceType != "" && serviceType != undefined && regionData != "" && regionData != undefined) {
        if (ExcavationData.length == 0) {
            toastr.warning('Please add excavation details!');
            return;
        }
    }
    else {
        toastr.warning('* Fields are required!');
        return;
    }
    if (appFormData.APPLICATION_STEP_DESCRIPTION == "" || appFormData.APPLICATION_STEP_DESCRIPTION == null || appFormData.APPLICATION_STEP_DESCRIPTION == undefined) {
        
        if (ServiceDocumentList.length > 0) {           
            var isFileUploaded = false;
            console.log(ServiceDocumentList);
            var isUploadDocumentSizeNotValid = false;
            
            $.each(ServiceDocumentList, function (data, value) {
                var decsionID = value.id + "SupportDocument";
                //alert(decsionID);
                if (value.isRequired == "Y") {
                    requiredDocumnetCount = requiredDocumnetCount + 1;
                }
                var input = document.getElementById(decsionID);
                if (input) {
                    if (document.getElementById(decsionID).files.length > 0) {
                        if (value.isRequired == "Y") {
                            requiredUploadDocumentCount = requiredUploadDocumentCount + 1;
                        }
                        totalUploadDocumentCount = totalUploadDocumentCount + 1;
                        var fileslist = $('#' + decsionID).get(0).files;
                        for (var i = 0; i < fileslist.length; i++) {

                            var isFileSizeValid = $.fn.CheckFileSize(decsionID, fileslist);
                            if (isFileSizeValid) {
                                
                                isFileUploaded = true;
                            }
                            else {
                                isFileUploaded = false;
                                isUploadDocumentSizeNotValid = true;
                            }
                            //formData.append(decsionID, fileslist[i]);
                            //alert(fileslist[i]);
                        }
                    }
                }
            });
            if (isUploadDocumentSizeNotValid) {
                return;
            }
            //alert("normal"+requiredDocumnetCount);
            //alert("upload"+requiredUploadDocumentCount);
            if (isFileUploaded) {
                if (requiredDocumnetCount > 0 && requiredUploadDocumentCount > 0) {

                    if (requiredDocumnetCount <= totalUploadDocumentCount) {                         
                        if (requiredDocumnetCount == requiredUploadDocumentCount) {
                            $("#ShowPaynowButtons").hide();
                            $("#ShowEftMasterpass").hide();
                            //$("#PaymentModel").modal();
                            $.fn.SaveApplicationForm('', '')
                        }
                        else {
                            toastr.warning('Please upload required supporting documents!');
                        }
                     }
                     else {
                         toastr.warning('Please upload required supporting documents!');
                     }
                }
                else {
                    toastr.warning('Please upload required supporting documents!');
                    return;
                }
                //if (requiredDocumnetCount == 0 && requiredUploadDocumentCount == 0) {
                //    toastr.warning('Please upload required supporting documents!');
                //    return;
                //}
                //else if (requiredDocumnetCount == requiredUploadDocumentCount) {
                //    $("#ShowPaynowButtons").show();
                //    $("#ShowEftMasterpass").hide();
                //    $("#PaymentModel").modal();
                //}
                
            }
            else if (!isFileUploaded) {
                toastr.warning('Please upload required supporting documents!');
                //toastr.warning('Please upload minimum one supporting document!');
                return;
            }
        }
        else {
            toastr.warning('Please upload required supporting documents!');
            //toastr.warning('Please upload minimum one supporting document!');
            return;
        }
    }
    else {
        //alert(appFormData.APPLICATION_STEP_DESCRIPTION);
        if (appFormData.APPLICATION_STEP_DESCRIPTION == "Pending Payment") {
            if (ServiceDocumentList.length > 0) {
                var isEFTFileUploaded = false;
                console.log(ServiceDocumentList);
                $.each(ServiceDocumentList, function (data, value) {
                    var decsionID = value.id + "SupportDocument";
                    //alert(decsionID);
                    var input = document.getElementById('5SupportDocument');
                    if (input) {
                        if (document.getElementById('5SupportDocument').files.length > 0) {
                            var fileslist = $('#5SupportDocument').get(0).files;
                            if (fileslist.length > 0) {
                                isEFTFileUploaded = true;
                            }
                            else {
                                isEFTFileUploaded = false;
                            }
                        }
                    }
                });
                if (!isEFTFileUploaded) {
                    toastr.warning('Please upload EFT Payment Receipt!');
                    return;
                }
                else {
                    $.fn.SaveApplicationForm("", "");
                }
            }
            else {
                toastr.warning('Please upload EFT Payment Receipt!');
                return;
            }
        }
        if (appFormData.APPLICATION_STEP_DESCRIPTION == "Distributed to Departments") {
            $("#isAppLoadingUpdate").show();
            $.fn.SaveApplicationForm("", "");
        }
    }
}

//Save Wayleave application form details
$.fn.SaveApplicationForm = function (paymentStatus, alertStatus) {
    $("#EftLoader").hide();
    $("#MasterpassLoader").hide();
    //alert(paymentStatus);
    //alert(alertStatus);
    //alert($('#GPS_START_ADDRESS').val());
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
    formData.append("ExcavationData", JSON.stringify(ExcavationData));

    var isUploadDocumentSizeNotValid = false;
    if (ServiceDocumentList.length > 0) {
        //alert(ServiceDocumentList.length);
        var isFileUploaded = false;
        console.log(ServiceDocumentList);
        $.each(ServiceDocumentList, function (data, value) {
            var decsionID = value.id + "SupportDocument";
            var documentID = value.id;
            var input = document.getElementById(decsionID);
            if (input) {
                if (document.getElementById(decsionID).files.length > 0) {
                    var fileslist = $('#' + decsionID).get(0).files;
                    for (var i = 0; i < fileslist.length; i++) {
                        isFileUploaded = true;
                        var isFileSizeValid = $.fn.CheckFileSize(decsionID, fileslist);
                        if (isFileSizeValid) {
                            formData.append(documentID, fileslist[i]);
                        }
                        else {
                            isUploadDocumentSizeNotValid = true;
                        }
                    }
                }
            }

        });
        //if (!isFileUploaded) {
        //    toastr.warning('Please upload supporting documents!');
        //    return;
        //}
    }

    if (isUploadDocumentSizeNotValid) {
        return;
    }

    $("#isAppLoading").show();
    //if (paymentStatus == "EFT") {
    //    $("#EftLoader").show();
    //}
    //else if (paymentStatus == "MasterPass") {
    //    $("#MasterpassLoader").show();
    //}
    //else if (paymentStatus == "PayNow") {
    //    $("#PayNowLoader").show();
    //}
    //else {
    //    $("#PayLaterLoader").show();
    //}

    $.ajax({
        url: apiBaseUrl + 'add-application-form',
        type: 'POST',
        processData: false,
        contentType: false,
        //crossDomain: true,
        cache: false,
        enctype: 'multipart/form-data',
        dataType: 'json',
        data: formData,
        success: function (data, textStatus, xhr) {
            console.log("======Result=========");
            console.log(data);
            //console.log(data.accountUserName);
            $('#isAppLoading').hide();
            $("#isAppLoadingUpdate").hide();
            $("#PayLaterLoader").hide();
            //alert(data);
            if (alertStatus == "resubmission") {
                toastr.success('Application form re-submitted successfully');
            }
            else {
                var appNo = data;
                if (paymentStatus == "PayNow") {
                    window.location.href = "../WayleaveAccount/Payment_Test?q=" + appNo;
                }
                else if (paymentStatus == "PayLater") {

                    //alert(appNo);
                    toastr.success(`<div>Your Wayleave Application Is In Status <b>Pending Payment</b>. <br />Your Reference Number is: <b>` + appNo + `</b>
Please upload a receipt. <br />This can be done by navigating to the pending payment queue on your dashboard. <br />Click on your application with reference number <b>`+ appNo + `</b> and <br />upload your payment confirmation document, <br />under the supporting documents section.</div>`, "Success", {
                        "timeOut": "30000",
                        "extendedTImeout": "50000",
                        "closeButton": true,
                    });
                    setTimeout(function () {
                        $("#PaymentModel").modal('hide');
                        window.location.href = "../WayleaveAccount/Index";
                    }, 15000);
                }
                else {
                    if (appNo == "Application Form resubmitted successfully.") {
                        toastr.success(appNo);
                        setTimeout(function () {
                        window.location.href = "../WayleaveAccount/Index";
                    }, 5000);
                    }
                    else {
                        toastr.success(`<div>Your Wayleave Application Form Submitted Successfully, The Application Is In Status <b>Distributed to Departments</b>. <br />Your Reference Number is: <b>` + appNo + `</b></div>`, "Success", {
                            "timeOut": "30000",
                            "extendedTImeout": "50000",
                            "closeButton": true,
                        });
                        setTimeout(function () {
                            window.location.href = "../WayleaveAccount/Index";
                        }, 15000);
                    }
                    
                    //toastr.success('Application form submitted successfully');
                    //setTimeout(function () {
                    //    window.location.href = "../WayleaveAccount/Index";
                    //}, 1000);
                }
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            //console.log('Error in Operation');
            $('#isAppLoading').hide();
            $("#isAppLoadingUpdate").hide();
            $("#PayLaterLoader").hide();
            toastr.error('500 (Internal Server Error)');
        }
    });
    //if (wa != undefined && wa != "" && st != undefined && st != "") {

    //}
    //else {
    //    //$("#PaymentModel").modal('hide');
    //    toastr.warning('* Fields are required!');
    //}
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
    appFormData.SERVICE_TYPE_NEW = $('#SERVICE_TYPE_NEW').val();
    appFormData.PROPERTYOWNER_ACCOUNT_NO = $('#PROPERTYOWNER_ACCOUNT_NO').val();
    appFormData.PROPERTYOWNER_NAME = $('#PROPERTYOWNER_NAME').val();
    appFormData.PROPERTYOWNER_SURNAME = $('#PROPERTYOWNER_SURNAME').val();
    appFormData.PROPERTYOWNER_CONTACTNO = $('#PROPERTYOWNER_CONTACTNO').val();
    appFormData.PROPERTYOWNER_MOBILENO = $('#PROPERTYOWNER_MOBILENO').val();//*
    appFormData.PROPERTYOWNER_EMAIL = $('#PROPERTYOWNER_EMAIL').val();

    

    appFormData.IDENTIFICATION_NUMBER = $("#IDENTIFICATION_NUMBER").val();
    appFormData.GENDER = $("#GENDER").val();
    appFormData.PROJECT_NUMBER = $('#PROJECT_NUMBER').val();

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


    if ($('#STARTING_DATE').val() != undefined && $('#STARTING_DATE').val() != "" && $('#STARTING_DATE').val() != null) {
        var dt = $('#STARTING_DATE').val();
        var ar = dt.split('-');
        var startDate = ar[2] + "-" + ar[1] + "-" + ar[0];
        appFormData.STARTING_DATE = startDate;
    }
    if ($('#COMPLETION_DATE').val() != undefined && $('#COMPLETION_DATE').val() != "" && $('#COMPLETION_DATE').val() != null) {
        var dt = $('#COMPLETION_DATE').val();
        var ar = dt.split('-');
        var completionDate = ar[2] + "-" + ar[1] + "-" + ar[0];
        appFormData.COMPLETION_DATE = completionDate;
    }

    
    

    //var radioValue = $("input[name=ChkHD]:checked").val();
    //if (radioValue != undefined && radioValue != "" && radioValue != null) {
    //    appFormData.TYPE_OF_ROADCROSSING1 = radioValue;
    //}
    //appFormData.TYPE_OF_ROADCROSSING = $('#ChkHD').val();//*
    appFormData.TYPE_OF_ROADCROSSING1 = $("input[name=ChkHD]:checked").val();//*
    //appFormData.TYPE_OF_ROADCROSSING2 = $('#ChkNone').val();//*
    appFormData.EXCAVATION_LENGTH = $('#EXCAVATION_LENGTH').val();
    appFormData.RIDING_SURFACE = $('#RIDING_SURFACE').val();
    appFormData.KERBS = $('#KERBS').val();
    appFormData.OPEN_TRENCH_COMMENT = $('#OPEN_TRENCH_COMMENT').val();//*
    appFormData.GPS_START_ADDRESS = $('#GPS_START_ADDRESS').val();
    appFormData.GPS_END_ADDRESS = $('#GPS_END_ADDRESS').val();
    appFormData.APPLICATION_COMMENTS = $('#APPLICATION_COMMENTS').val();

    appFormData.GPS_START_LATITUDE = $('#GPS_START_LATITUDE').val();
    appFormData.GPS_START_LONGITUDE = $('#GPS_START_LONGITUDE').val();
    appFormData.GPS_END_LATITUDE = $('#GPS_END_LATITUDE').val();
    appFormData.GPS_END_LONGITUDE = $('#GPS_END_LONGITUDE').val();
    appFormData.REGION_OR_AREA = $('#REGION_OR_AREA').val();
    //appFormData.postCode = $('#postCode').val();
    //appFormData.postCode = $('#postCode').val();
    //appFormData.postCode = $('#postCode').val();
};

// Set form data values
$.fn.GetExcavationFormdataValues = function () {    
    excavationFormData.TYPE_OF_ROADCROSSING = $("input[name=ChkHD]:checked").val();//*
    excavationFormData.EXCAVATION_LENGTH = $('#EXCAVATION_LENGTH').val();
    excavationFormData.RIDING_SURFACE = $('#RIDING_SURFACE').val();
    excavationFormData.KERBS = $('#KERBS').val();
    excavationFormData.OPEN_TRENCH_COMMENT = $('#OPEN_TRENCH_COMMENT').val();//*
    excavationFormData.GPS_START_ADDRESS = $('#GPS_START_ADDRESS').val();
    excavationFormData.GPS_END_ADDRESS = $('#GPS_END_ADDRESS').val();
    excavationFormData.APPLICATION_COMMENTS = $('#APPLICATION_COMMENTS').val();
};


function GetFormattedDate(dateValue) {
    var todayTime = new Date(dateValue);
    var month = todayTime.getMonth() + 1;
    var day = todayTime.getDate();
    var year = todayTime.getFullYear();
    //alert(year);
    return year + "-" + month + "-" + day;
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

    //return [year, month, day].join('-');
    return [day, month, year].join('-');
}

function formatTime(date) {
    var time = new Date(date);
    return time.toLocaleString('en-US', { hour: 'numeric', minute: 'numeric', hour12: true });
}

function testdate() {
    var input = $("#STARTING_DATE").val();
    //alert(input);
    var ar = input.split('-');
    console.log(ar);
    //alert(ar[0]);
    //alert(ar[1]);
    //alert(ar[2]);
    var d = new Date(input);
    //alert(d);
    var tt = d.setMonth(d.getMonth() + 6);
    var m = new Date(tt);
    //var dddd = $.datepicker.parseDate("yy-mm-dd", input);
    //alert(dddd);

    //alert(tt);
    //var cDate = dateEntered.setMonth(tt);
    //alert(cDate);
    //var yy = m.getFullYear() + "-" + ("0" + (m.getMonth() + 1)).slice(-2) + "-" + ("0" + m.getDate()).slice(-2);
    var testYY = ("0" + m.getDate()).slice(-2) + "-" + ("0" + (m.getMonth() + 1)).slice(-2) + "-" + m.getFullYear();
    //$("#COMPLETION_DATE").val(testYY);
    console.log(input); //e.g. 2015-11-13
    //alert(input);
    //alert(dateEntered);
    //console.log(dateEntered); //e.g. Fri Nov 13 2015 00:00:00 GMT+0000 (GMT Standard Time)
};

function checkEstimatedDate(id) {
    var input = $("#STARTING_DATE").val();
    var d = new Date(input);
    var inputt = $("#"+id).val();
    var dd = new Date(inputt);

    // To calculate the time difference of two dates
    var Difference_In_Time = dd.getTime() - d.getTime();

    // To calculate the no. of days between two dates
    var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
    //alert(Difference_In_Days);
    if (Difference_In_Days <= 181) {
        if (Difference_In_Days > 0) {
            var yy = dd.getFullYear() + "-" + ("0" + (dd.getMonth() + 1)).slice(-2) + "-" + ("0" + dd.getDate()).slice(-2);
            $("#" + id).val(yy);
        }
        else {
            toastr.warning('Estimated Completion Date cannot be less than Starting Date', "warning", {
                "timeOut": "30000",
                "extendedTImeout": "50000",
                "closeButton": true,
            });
            $("#" + id).val('');
        }        
    }
    else {
        toastr.warning('Estimated Completion Date cannot be more than six months after Starting Date', "warning", {
            "timeOut": "30000",
            "extendedTImeout": "50000",
            "closeButton": true,
        });
        $("#" + id).val('');
    }    
};

$.fn.CheckOpenTrench = function () {
    $('#OpenTrenchComment').hide();
    var radioValue = $("input[name=ChkHD]:checked").val();
    if (radioValue === "Open trench") {
        $('#OpenTrenchComment').show();
    } 
}

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
                var isRequiredEFT = "";
                for (let i = 0; i < ServiceDocumentList.length; i++) {
                    var sid = ServiceDocumentList[i].id + "SupportDocument";
                    var index = i + 1;
                    var isAppend = false;
                    for (let j = 0; j < ServiceDocumentListFromServer.length; j++) {
                        var id = ServiceDocumentListFromServer[j].sD_ID + "SupportDocument";
                        var linkId = ServiceDocumentListFromServer[j].sD_ID + "LinkSupportDocument";
                        if (sid == id) {
                            isAppend = true;
                            var ttttgt = ServiceDocumentListFromServer[j].documenT_NAME;
                            var docUrl = "../uploads/" + ttttgt;
                            var docDescription = ServiceDocumentList[i].description;
                            //alert($("#APPLICATION_STEP_DESCRIPTION_STATUS").text());
                            if ($("#APPLICATION_STEP_DESCRIPTION_STATUS").text() == "Pending Payment") {
                                if (docDescription == "EFT Payment Receipt") {
                                    isRequiredEFT = "*";
                                }
                                else {
                                    isRequiredEFT = "";
                                }
                            }
                            

                            //menulink.href = "javascript: void (0)";
                            //menulink.onclick = ViewDocument(ServiceDocumentListFromServer[j].documenT_NAME);
                            $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '&nbsp;<b style="color:red !important">' + isRequiredEFT + '</b></td><td><input type="file" name="Add" id=' + sid + ' />&nbsp;<b style="color:blue;font-weight:400!important">(Max. 5mb)</b><a class="btn btn-green-custom btn-sm" id=' + linkId + ' target="_blank" href="' + docUrl +'" style="text-decoration:none!important;color:#fff!important;float:right!important;margin-right:20px!important;margin-top:-20px!important" rel="noopener noreferrer" name="LinkA">View Document</a></td></tr>');
                            var menulink = document.getElementById(linkId);
                            //menulink.setAttribute("onclick", "ViewDocument('" + ServiceDocumentListFromServer[j].documenT_NAME + "')");
                            //$('#ServiceDocumentListFromServer').append(menulink);693
                            //AddEvent(menulink, "click", ViewDocument(ServiceDocumentListFromServer[j].documenT_NAME));
                        }
                    };
                    if (!isAppend) {
                        var docDescription = ServiceDocumentList[i].description;
                        if ($("#APPLICATION_STEP_DESCRIPTION_STATUS").text() == "Pending Payment") {
                            if (docDescription == "EFT Payment Receipt") {
                                isRequiredEFT = "*";
                            }
                            else {
                                isRequiredEFT = "";
                            }
                        }
                        $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentList[i].description + '&nbsp;<b style="color:red !important">' + isRequiredEFT + '</b></td><td><input type="file" name="Add" id=' + sid + ' />&nbsp;<b style="color:blue;font-weight:400!important">(Max. 5mb)</b></td></tr>');
                    }
                };
            }
            else {
                ServiceDocumentListFromServer = data;
                for (let j = 0; j < ServiceDocumentListFromServer.length; j++) {
                    var id = ServiceDocumentListFromServer[j].id + "SupportDocument";
                    var index = j + 1;
                    var docDescription = ServiceDocumentListFromServer[j].description;
                    if ($("#APPLICATION_STEP_DESCRIPTION_STATUS").text() == "Pending Payment") {
                        if (docDescription == "EFT Payment Receipt") {
                            isRequiredEFT = "*";
                        }
                        else {
                            isRequiredEFT = "";
                        }
                    }
                    $('#ServiceDocumentListFromServer').append('<tr><td>' + index + '</td><td>' + ServiceDocumentListFromServer[j].description + '&nbsp;<b style="color:red !important">' + isRequiredEFT + '</b></td><td><input type="file" name="Add" id=' + id + ' /> &nbsp;<b style="color:blue;font-weight:400!important">(Max. 5mb)</b></td></tr>');
                };
            }
        },
        error: function (xhr, textStatus, errorThrown) {
            toastr.error('Error in Operation');
        }
    });
   
}

function fileValidation(id) {
    var fileInput = document.getElementById(id);
    var filePath = fileInput.value;
    var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
    if (!allowedExtensions.exec(filePath)) {
        alert('error .jpeg/.jpg/.png/.gif ');
        fileInput.value = '';
        return false;
    } else {
        //Image preview
        for (var i = 0; i < fileInput.files.length; i++) {
            if (fileInput.files && fileInput.files[i]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var img = document.createElement("img");
                    img.src = e.target.result;
                    document.getElementById('imagePreview').appendChild(img);
                };
                reader.readAsDataURL(fileInput.files[i]);
            }
        }
    }
}

function AddEvent(obj, eventType, functionName) {
    if (obj.addEventListener) {
        obj.addEventListener(eventType, functionName, false);//W3C standard
    }
    else if (obj.attachEvent) {
        obj.attachEvent("on" + eventType, functionName);//ie
    }
    else {
        obj["on" + eventType] = functionName;//dom
    }
}
function test(tt) {
    //alert(tt);
}
function ViewDocument(filename) {
    window.location.href = "~/uploads/" + filename;
}

function ViewInspectionDocument(id) {
    var filename = $("#" + id).val();
    window.location.href = "../uploads/" + filename;
}

$.fn.ShowEftMasterpassDetails = function () {
    $("#ShowPaynowButtons").hide();
    $("#ShowEftMasterpass").show();
}

//Show excavation popup
$.fn.ShowExcavationPopupModal = function () {
    $("#ExcavationDetailsPopup").modal();
}

//Save Excavation details
$.fn.SaveExcavationDetails = function () {
    //ExcavationData = [];
    //var startAdrs = $("#GPS_START_ADDRESS").val('Nellore');
    //var endAdrs = $("#GPS_END_ADDRESS").val('Chennai');
    var startAdrs = $("#GPS_START_ADDRESS").val();
    var endAdrs = $("#GPS_END_ADDRESS").val();
    if (startAdrs != "" && startAdrs != undefined && endAdrs != "" && endAdrs != undefined) {
        $('#ExcavationListData').empty();
        var radioValue = $("input[name=ChkHD]:checked").val();
        if (radioValue === "Open trench") {
            $('#OpenTrenchComment').show();
            var cmmnt = $('#OPEN_TRENCH_COMMENT').val();
            if (cmmnt != undefined && cmmnt != "" && cmmnt != null) {

            }
            else {
                toastr.warning('Please state the reason for open trench!');
                return false;
            }
        }

        var excavationFormData = {};
        excavationFormData.TYPE_OF_ROADCROSSING = $("input[name=ChkHD]:checked").val();//*
        excavationFormData.EXCAVATION_LENGTH = $('#EXCAVATION_LENGTH').val();
        excavationFormData.RIDING_SURFACE = $('#RIDING_SURFACE').val();
        excavationFormData.KERBS = $('#KERBS').val();
        excavationFormData.OPEN_TRENCH_COMMENT = $('#OPEN_TRENCH_COMMENT').val();//*
        excavationFormData.GPS_START_ADDRESS = $('#GPS_START_ADDRESS').val();
        excavationFormData.GPS_END_ADDRESS = $('#GPS_END_ADDRESS').val();
        excavationFormData.APPLICATION_COMMENTS = $('#APPLICATION_COMMENTS').val();
        ExcavationData.push(excavationFormData);
        console.log("===========ExcavationData============");
        console.log(ExcavationData);
        //alert(ExcavationData.length);
        if (ExcavationData.length > 0) {
            $('#ExcavationListData').show();
            $('#ExcavationListDataFromServer').hide();
            for (let j = 0; j < ExcavationData.length; j++) {
                var id = j + 1;
                $('#ExcavationListData').append('<tr><td>' + id + '</td><td>' + ExcavationData[j].TYPE_OF_ROADCROSSING + '</td><td class="text-right">' + ExcavationData[j].EXCAVATION_LENGTH + '</td><td class="text-right">' + ExcavationData[j].RIDING_SURFACE + '</td><td class="text-right">' + ExcavationData[j].KERBS + '</td><td>' + ExcavationData[j].GPS_START_ADDRESS + '</td><td>' + ExcavationData[j].GPS_END_ADDRESS + '</td><td>' + ExcavationData[j].APPLICATION_COMMENTS + '</td><td><a onclick="removeExcavation(' + id + ')"><i class="fa fa-trash text-danger"></i> </a></td></tr>');
            };

            document.getElementById("ChkHD").checked = false;
            document.getElementById("ChkOT").checked = false;
            document.getElementById("ChkNone").checked = false;
            $('#EXCAVATION_LENGTH').val('');
            $('#RIDING_SURFACE').val('');
            $('#KERBS').val('');
            $('#OPEN_TRENCH_COMMENT').val('');
            $('#GPS_START_ADDRESS').val('');
            $('#GPS_END_ADDRESS').val('');
            $('#APPLICATION_COMMENTS').val('');
            $('#OpenTrenchComment').hide();
            $("#ExcavationDetailsPopup").modal('hide');
        }
    }
    else {
        toastr.warning('* Fields are required!');
        return;
    }

    
}

function removeExcavation(id) {
    id = id - 1;
    ExcavationData.splice(id, 1);
    console.log("====remove ExcavationData===");
    console.log(ExcavationData);
    $('#ExcavationListData').empty();
    if (ExcavationData.length > 0) {
        $('#ExcavationListData').show();
        $('#ExcavationListDataFromServer').hide();
        for (let j = 0; j < ExcavationData.length; j++) {
            var id = j + 1;
            $('#ExcavationListData').append('<tr><td>' + id + '</td><td>' + ExcavationData[j].TYPE_OF_ROADCROSSING + '</td><td>' + ExcavationData[j].EXCAVATION_LENGTH + '</td><td>' + ExcavationData[j].RIDING_SURFACE + '</td><td>' + ExcavationData[j].KERBS + '</td><td>' + ExcavationData[j].GPS_START_ADDRESS + '</td><td>' + ExcavationData[j].GPS_END_ADDRESS + '</td><td>' + ExcavationData[j].APPLICATION_COMMENTS + '</td><td><a onclick="removeExcavation(' + id + ')"><i class="fa fa-trash text-danger"></i> </a></td></tr>');
        };
    }
}



