json.array!(@turnos) do |turno|
  json.extract! turno, :id, :codigo, :nombre, :entrada, :inicio_descanso, :fin_descanso, :salida, :descanso, :activo
  json.url turno_url(turno, format: :json)
end
