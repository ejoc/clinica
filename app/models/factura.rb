class Factura < ApplicationRecord
  belongs_to :paciente
  belongs_to :habitacion
  belongs_to :user
  belongs_to :metodo_pago

  has_many :factura_detalles
  has_many :servicios, through: :factura_detalles

  rails_admin do

  	create do
  		# fields do
	   #    help false
	   #  end

  		group :paciente do 
	  		field :paciente do
	  			inline_edit false
	  		end
	  		field :habitacion do
	  			inline_edit false
	  			inline_add false
	  		end
	  		field :fecha_ingreso
	  		field :fecha_salida
	  		field :metodo_pago do
	  			inline_edit false
	  			inline_add false
	  		end

	  		field :user do
	  			label "Cajero"
	  			inline_edit false
	  			inline_add false
		      # visible false
		      default_value do
		        bindings[:view]._current_user.id
		      end
		    end
  		end

	  	group :detalle do
	  		field :factura_detalles do
	  			label "."
	  			help ""
	  			partial 'factura_detalles'
	  		end
	  	end
  	end

		exclude_fields :subtotal, :iva, :total, :factura_detalles
	end
end
