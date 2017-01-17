class CreateTipoSangres < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_sangres do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
