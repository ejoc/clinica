class CreateFacturas < ActiveRecord::Migration[5.0]
  def change
    create_table :facturas do |t|
      t.references :paciente, foreign_key: true
      t.references :habitacion, foreign_key: true
      t.timestamp :fecha_ingreso
      t.timestamp :fecha_salida
      t.references :user, foreign_key: true
      t.references :metodo_pago, foreign_key: true
      t.float :subtotal
      t.float :iva
      t.float :total

      t.timestamps
    end
  end
end
