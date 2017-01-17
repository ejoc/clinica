class Habitacion < ApplicationRecord
	belongs_to :habitacion_tipo

	validates :cod_habitacion, uniqueness: true
end
