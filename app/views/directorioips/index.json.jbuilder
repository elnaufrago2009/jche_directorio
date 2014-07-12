json.array!(@directorioips) do |directorioip|
  json.extract! directorioip, :id, :ip, :username, :hostname, :grupo, :admin_id, :mac, :ubicacion_actual, :empresa, :observaciones
  json.url directorioip_url(directorioip, format: :json)
end
