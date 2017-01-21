class Reserva < ApplicationRecord
  belongs_to :paciente
  belongs_to :habitacion
end
