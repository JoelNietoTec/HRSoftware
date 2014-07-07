json.array!(@prospectos) do |prospecto|
  json.extract! prospecto, :id, :nombres, :apellidos, :cedula, :seguro_social, :sexo_id, :aspiracion_salario, :estado_civil_id, :direccion, :fecha_nacimiento, :licencia_id, :nacionalidad, :disponible
  json.url prospecto_url(prospecto, format: :json)
end
