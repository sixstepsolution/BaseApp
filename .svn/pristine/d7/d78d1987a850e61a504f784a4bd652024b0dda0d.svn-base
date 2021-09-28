var isFilter = false;
var selectedApplicationList = [];
var accountCounts = [];
var AccountNumberList = [];
var AppFirstNamesList = [];
var AppLastNamesList = [];
var AppMobilesList = [];
var AppEmailsList = [];
var SeriveTypesList = [];
var AppCreated_ByList = [];
var created_byID = 0;
var apiBaseUrl = localStorage.getItem('apiBaseUrl');
$("#spinnerLoader").hide();
var LeftMenuAlerts = [];

$.fn.OpenWayleaveApplicationForm = function (id) {
    //alert();
    localStorage.setItem("appId", id);
    window.location.href = '../wayleaveaccount/WayleaveApplicationNew?id='+id;
}
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

function addIconCollapse(val, id) {   
    //var tt = "triangle_" + id;
    ////$(".collapse").on('show.bs.collapse', function () {
    ////    $("#" + tt).parent().find(".glyphicon").removeClass("glyphicon-triangle-bottom").addClass("glyphicon-triangle-top");
    ////}).on('hide.bs.collapse', function () {
    ////    $("#" + tt).parent().find(".glyphicon").removeClass("glyphicon-triangle-top").addClass("glyphicon-triangle-bottom");
    ////});

    //$('.collapse').on('show.bs.collapse', function () {
    //    $("#" + tt).parent("panel-heading").find(".glyphicon").removeClass("glyphicon-triangle-bottom").addClass("glyphicon-triangle-top");
    //})
    //$('.collapse').on('hide.bs.collapse', function () {
    //    $("#" + tt).parent("panel-heading").find(".glyphicon").removeClass("glyphicon-triangle-top").addClass("glyphicon-triangle-bottom");
    //});
}

