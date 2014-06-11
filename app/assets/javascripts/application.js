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
//= require turbolinks
//= require_tree
//= require jquery.turbolinks.

$(document).ready(function() {
    var table = $('#datagrid').DataTable( {
        scrollX:        true,
        scrollCollapse: true
    } );
    new $.fn.dataTable.FixedColumns( table );
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
        $(this).find("i").toggleClass("fa-plus fa-minus");
    });
});

$(function() {
    $(".datepicker" ).datepicker({
        changeMonth: true,
        changeYear: true
    });
});

$(function() {
    $(".timepicker" ).timepicker({
        showPeriod: true,
        showLeadingZero: true
    });
});


$(document).ready(function() {
    $("#turno_descanso").change(function() {
        if ($('#turno_descanso').prop('checked') === true)   {
            $("#turno_inicio_descanso").removeAttr("disabled");
            $("#turno_fin_descanso").removeAttr("disabled");
        } else {
            $("#turno_inicio_descanso").attr("disabled", true);
            $("#turno_fin_descanso").attr("disabled", true);
        }
    });
});
