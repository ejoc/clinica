class CreatePacientes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientes do |t|
      t.string :cedula
      t.string :nombres
      t.string :apellidos
      t.date :fecha_nacimiento
      t.string :email
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
