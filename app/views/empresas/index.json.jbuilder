json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre, :descripcion
  json.url empresa_url(empresa, format: :json)
end
