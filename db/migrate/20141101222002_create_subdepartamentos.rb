class CreateSubdepartamentos < ActiveRecord::Migration
  def change
    create_table :subdepartamentos do |t|
      t.references :departamento, index: true
      t.string :codigo
      t.string :nombre
      t.boolean :activo

      t.timestamps
    end
  end
end
