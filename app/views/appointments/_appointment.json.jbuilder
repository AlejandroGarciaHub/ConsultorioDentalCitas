json.extract! appointment, :id, :fecha_programada, :finalizada, :aceptada, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)