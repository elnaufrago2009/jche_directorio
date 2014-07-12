json.array!(@cargos) do |cargo|
  json.extract! cargo, :id, :nombre, :descripcion
  json.url cargo_url(cargo, format: :json)
end
