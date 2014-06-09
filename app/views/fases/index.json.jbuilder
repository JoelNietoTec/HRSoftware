json.array!(@fases) do |fase|
  json.extract! fase, :id, :codigo, :nombre, :activo
  json.url fase_url(fase, format: :json)
end
