# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Se cargan sólo los Cargos disponibles por el Departamento seleccionado// JNieto2014-06-16

jQuery ->
  cargos = $('#empleado_cargo_id').html();
  $('#empleado_departamento_id').change ->
    departamento = $('#empleado_departamento_id :selected').text()
    options = $(cargos).filter("optgroup[label='#{departamento}']").html()
    if options
      $('#empleado_cargo_id').html(options)
    else
      $('#empleado_cargo_id').html("No Disponible")
