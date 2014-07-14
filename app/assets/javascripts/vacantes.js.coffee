# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  distritos = $('#vacante_distrito_id').html();
  $(document).ready ->
    provincia = $('#vacante_provincia_id :selected').text()
    options = $(distritos).filter("optgroup[label='#{provincia}']").html()
    if options
      $('#vacante_distrito_id').html(options)
    else
      $('#vacante_distrito_id').html("No Disponible")
  $('#vacante_provincia_id').change ->
    provincia = $('#vacante_provincia_id :selected').text()
    options = $(distritos).filter("optgroup[label='#{provincia}']").html()
    if options
      $('#vacante_distrito_id').html(options)
    else
      $('#vacante_distrito_id').html("No Disponible")
