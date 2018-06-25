json.extract! Donacion, :id, :user_id, :monto, :created_at, :updated_at
json.url Donacion_url(Donacion, format: :json)
