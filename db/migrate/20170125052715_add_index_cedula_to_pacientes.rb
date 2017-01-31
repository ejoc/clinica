class AddIndexCedulaToPacientes < ActiveRecord::Migration[5.0]
  def change
    add_index :pacientes, :cedula, unique: true 
  end
end
