class CreateHabitacions < ActiveRecord::Migration[5.0]
  def change

  	create_table :habitacion_tipos do |t|
      t.string :nombre
      t.integer :precio

      t.timestamps
    end

    create_table :habitacions do |t|
      t.string :cod_habitacion
      t.references :habitacion_tipo, foreign_key: true
      t.integer :piso

      t.timestamps
    end

    add_index :habitacions, :cod_habitacion, :unique => true
  end
end
