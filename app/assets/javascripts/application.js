// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require_tree
//= require toastr


$(document).ready(function() {
  var table = $('#datagrid').dataTable({
    "sPaginationType": "bootstrap",
    scrollX:        true,
    scrollCollapse: true
  });
} );

$(document).ready(function() {
  $('.upper').blur(function() {
    $(this).val($(this).val().toUpperCase());
  });
});

//$(document).ready(function() {
//  /* swap open/close side menu icons */
//  $('[data-toggle=collapse]').click(function(){
//    // toggle icon
//    $(this).find("i").toggleClass("fa-chevron-down fa-chevron-up");
//  });
//});

$(function() {
  $(".datepicker" ).datepicker({
    changeYear: true,
    changeMonth: true
  });
});

$(document).on('nested:fieldAdded', function(event){
  // this field was just inserted into your form
  var field = event.field;
  // it's a jQuery object already! Now you can find date input
  var dateField = field.find('.datepicker');
  // and activate datepicker on it
  dateField.datepicker(
    {
      changeYear: true,
      changeMonth: true
    });
});

$(function() {
  $(".timepicker" ).timepicker({
    showPeriod: true,
    showLeadingZero: true
  });
});

$(document).ready(function() {
  $('.multiselect').multiselect({
    enableCaseInsensitiveFiltering: true,
    includeSelectAllOption: true,
    includeSelectAllDivider: true,
    maxHeight: 400
  });
});

