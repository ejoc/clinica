class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
