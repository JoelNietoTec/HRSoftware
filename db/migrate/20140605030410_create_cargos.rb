class CreateCargos < ActiveRecord::Migration
  def change
    create_table :cargos do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :activo
      t.references :departamento, index: true

      t.timestamps
    end
  end
end
