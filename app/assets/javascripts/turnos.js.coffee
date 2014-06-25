# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#turno_descanso").prop("checked", true)
  $("#turno_descanso").change ->
    if $("#turno_descanso").prop("checked") is true
      $("#turno_inicio_descanso").removeAttr "disabled"
      $("#turno_fin_descanso").removeAttr "disabled"

    else
      $("#turno_inicio_descanso").attr "disabled", true
      $("#turno_fin_descanso").attr "disabled", true
      $("#turno_inicio_descanso").val("")
      $("#turno_fin_descanso").val("")
    return

  return
