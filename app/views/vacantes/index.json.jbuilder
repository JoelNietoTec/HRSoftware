json.array!(@vacantes) do |vacante|
  json.extract! vacante, :id, :cargo_id, :fecha_inicio, :fecha_vencimiento, :activo, :area_profesional_id
  json.url vacante_url(vacante, format: :json)
end
