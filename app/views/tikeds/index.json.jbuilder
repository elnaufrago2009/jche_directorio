json.array!(@tikeds) do |tiked|
  json.extract! tiked, :id, :user_id, :tipo_soporte_id, :observaciones, :tiked_nivele_id, :admin_id, :fecha_hora_atencion, :reclamo_id, :tiempo_soporte_id
  json.url tiked_url(tiked, format: :json)
end
