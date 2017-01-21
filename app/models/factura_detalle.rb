class FacturaDetalle < ApplicationRecord
  belongs_to :factura
  belongs_to :servicio
end
