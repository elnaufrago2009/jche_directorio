json.array!(@personals) do |personal|
  json.extract! personal, :id, :nombre, :apellido, :cargo_id, :area_id, :empresa_id, :fecha_nacimiento, :dni, :email, :movil_1, :movil_2, :telefono_fijo, :nacionalidad, :estado_civil, :observaciones
  json.url personal_url(personal, format: :json)
end
