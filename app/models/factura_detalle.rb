class FacturaDetalle < ApplicationRecord
  belongs_to :factura, class_name: 'Factura'
  belongs_to :servicio

  before_create do
    self.valor_unitario = self.servicio.precio
    self.valor_total = self.valor_unitario * self.cantidad
  end
end
