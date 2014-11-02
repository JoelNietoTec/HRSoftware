json.array!(@subdepartamentos) do |subdepartamento|
  json.extract! subdepartamento, :id, :departamento_id, :codigo, :nombre, :activo
  json.url subdepartamento_url(subdepartamento, format: :json)
end
