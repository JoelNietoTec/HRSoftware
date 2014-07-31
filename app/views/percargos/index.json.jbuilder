json.array!(@percargos) do |percargo|
  json.extract! percargo, :id, :cargo_id, :edadmax, :edadmin, :estcivil, :vehicprop, :nivelesc, :especesc, :sexopref, :tipoliccond, :habilidad, :comenta
  json.url percargo_url(percargo, format: :json)
end
