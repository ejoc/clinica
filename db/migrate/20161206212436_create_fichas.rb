class CreateFichas < ActiveRecord::Migration[5.0]
  def change
    create_table :fichas do |t|
      t.references :paciente, foreign_key: true
      t.integer :altura
      t.integer :peso
      t.references :tipo_sangre, foreign_key: true

      t.timestamps
    end
  end
end
