class CreateFacturaDetalles < ActiveRecord::Migration[5.0]
  def change
    create_table :factura_detalles do |t|
      t.references :factura, foreign_key: true
      t.references :servicio, foreign_key: true
      t.integer :cantidad
      t.float :valor_unitario
      t.float :valor_total

      t.timestamps
    end
  end
end
