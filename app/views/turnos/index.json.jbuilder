json.array!(@turnos) do |turno|
  json.extract! turno, :id, :nombre, :entrada, :inicio_descanso, :fin_descanso, :salida, :activo
  json.url turno_url(turno, format: :json)
end
