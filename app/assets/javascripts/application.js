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
//= require_tree
//= require jquery.turbolinks.

$(document).ready(function() {
  var table = $('#datagrid').DataTable( {
    scrollX:        true,
    scrollCollapse: true
  } );
} );

$(document).ready(function() {
  $('.upper').blur(function() {
    $(this).val($(this).val().toUpperCase());
  });
});

$(document).ready(function() {
  /* swap open/close side menu icons */
  $('[data-toggle=collapse]').click(function(){
    // toggle icon
    $(this).find("i").toggleClass("fa-chevron-down fa-chevron-up");
  });
});

$(function() {
  $(".datepicker" ).datepicker({
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

jQuery(document).ready(function() {

  jQuery('#empleado_departamento_id').change(function() {

    var data=$('#empleado_departamento_id').val();

    $.ajax({
      type: "POST",
      url: "http://"+location.host+"cargos_dinamicos/"+data,
      data: data,

    });
  });
});
