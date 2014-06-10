json.array!(@seccions) do |seccion|
  json.extract! seccion, :id, :codigo, :nombre, :activo
  json.url seccion_url(seccion, format: :json)
end
