json.array!(@tiempo_soportes) do |tiempo_soporte|
  json.extract! tiempo_soporte, :id, :nombre, :descripcion
  json.url tiempo_soporte_url(tiempo_soporte, format: :json)
end
