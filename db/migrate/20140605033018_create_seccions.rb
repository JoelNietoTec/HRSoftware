class CreateSeccions < ActiveRecord::Migration
  def change
    create_table :seccions do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :activo

      t.timestamps
    end
  end
end
