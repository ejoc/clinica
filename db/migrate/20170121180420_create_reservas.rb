class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.references :paciente, foreign_key: true
      t.references :habitacion, foreign_key: true

      t.timestamp  :fecha_ingreso
      t.timestamp  :fecha_salida

      t.timestamps
    end
  end
end
