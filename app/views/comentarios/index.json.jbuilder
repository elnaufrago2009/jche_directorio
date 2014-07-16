json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :tiked_id, :user_id, :admin_id, :content
  json.url comentario_url(comentario, format: :json)
end
