json.array!(@sucursals) do |sucursal|
  json.extract! sucursal, :id, :codigo, :nombre, :activo
  json.url sucursal_url(sucursal, format: :json)
end
