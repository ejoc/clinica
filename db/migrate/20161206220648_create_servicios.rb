class CreateServicios < ActiveRecord::Migration[5.0]
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.integer :precio
      t.boolean :disponible, default: true

      t.timestamps
    end

    add_index :servicios, :nombre, :unique => true
  end
end
