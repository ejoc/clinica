class Paciente < ApplicationRecord

	has_one :ficha

	accepts_nested_attributes_for :ficha

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

	validates_length_of :cedula, :minimum => 10, :maximum => 10

	validates_numericality_of :telefono, :cedula

	validates_presence_of :cedula, :nombres, :apellidos, :direccion, :email, :telefono, :fecha_nacimiento

	validate :validate_cedula

	def name
		cedula
	end

	protected

	def validate_cedula
		valor = 0
		posicion = 1
		n_last = self.cedula.last.to_i
		self.cedula[0..8].each_char do |n|
			current_n = n.to_i 
			if posicion % 2 == 0
				valor += current_n
			else
				if ((producto = current_n * 2)  >= 10)
					valor += producto.to_s.chars.map(&:to_i).sum
				else
					valor += current_n * 2 
				end
			end
			posicion += 1
		end
		digito_verificador = n_last == 0 ? valor % 10 : 10 - (valor % 10)
		errors.add(:cedula, "cedula incorrecta") unless digito_verificador == self.cedula.last.to_i
	end
end
