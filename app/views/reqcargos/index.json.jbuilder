json.array!(@reqcargos) do |reqcargo|
  json.extract! reqcargo, :id, :cargo_id, :nomrequis, :lactivo
  json.url reqcargo_url(reqcargo, format: :json)
end
