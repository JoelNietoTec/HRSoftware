json.array!(@centro_costos) do |centro_costo|
  json.extract! centro_costo, :id, :codigo, :nombre, :activo
  json.url centro_costo_url(centro_costo, format: :json)
end
