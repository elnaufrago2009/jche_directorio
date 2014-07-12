json.array!(@areas) do |area|
  json.extract! area, :id, :nombre, :descripcion
  json.url area_url(area, format: :json)
end
