class CreateGrupoPagos < ActiveRecord::Migration
  def change
    create_table :grupo_pagos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
