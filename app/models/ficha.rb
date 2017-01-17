class Ficha < ApplicationRecord
  belongs_to :paciente
  belongs_to :tipo_sangre
end
