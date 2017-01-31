class Factura < ApplicationRecord
  belongs_to :paciente
  belongs_to :habitacion
  belongs_to :user
  belongs_to :metodo_pago

  has_many :detalles, class_name: 'FacturaDetalle', foreign_key: 'factura_id', dependent: :delete_all
  has_many :servicios, through: :factura_detalles

  accepts_nested_attributes_for :servicios, reject_if: :all_blank, allow_destroy: true

  accepts_nested_attributes_for :detalles, reject_if: :all_blank, allow_destroy: true

  after_create do
    self.subtotal = self.detalles.sum(:valor_total)
    self.iva = 0.14
    self.total = self.subtotal * (1 * self.iva)
  end

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
