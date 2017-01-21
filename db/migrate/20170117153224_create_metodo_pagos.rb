class CreateMetodoPagos < ActiveRecord::Migration[5.0]
  def change
    create_table :metodo_pagos do |t|
      t.string :descripcion
      t.string :banco

      t.timestamps
    end
  end
end
