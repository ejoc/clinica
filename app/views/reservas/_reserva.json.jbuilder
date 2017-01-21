json.extract! reserva, :id, :paciente_id, :habitacion_id, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)