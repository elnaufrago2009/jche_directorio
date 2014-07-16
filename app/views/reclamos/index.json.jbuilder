json.array!(@reclamos) do |reclamo|
  json.extract! reclamo, :id, :nombre, :descripcion
  json.url reclamo_url(reclamo, format: :json)
end
