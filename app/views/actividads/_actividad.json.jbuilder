json.extract! actividad, :id, :nombre, :fecha, :estado, :created_at, :updated_at
json.url actividad_url(actividad, format: :json)
