json.array!(@tipo_soportes) do |tipo_soporte|
  json.extract! tipo_soporte, :id, :nombre, :descripcion
  json.url tipo_soporte_url(tipo_soporte, format: :json)
end
