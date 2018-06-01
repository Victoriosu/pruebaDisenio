json.extract! donacion, :id, :user_id, :monto, :created_at, :updated_at
json.url donacion_url(donacion, format: :json)
