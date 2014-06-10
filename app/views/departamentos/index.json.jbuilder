json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :codigo, :nombre, :activo
  json.url departamento_url(departamento, format: :json)
end
