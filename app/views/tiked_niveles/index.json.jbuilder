json.array!(@tiked_niveles) do |tiked_nivele|
  json.extract! tiked_nivele, :id, :nombre, :descripcion
  json.url tiked_nivele_url(tiked_nivele, format: :json)
end
