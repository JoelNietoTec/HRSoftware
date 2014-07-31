class CreatePercargos < ActiveRecord::Migration
  def change
    create_table :percargos do |t|
      t.integer :cargo_id
      t.integer :edadmax
      t.integer :edadmin
      t.string :estcivil
      t.string :vehicprop
      t.string :nivelesc
      t.string :especesc
      t.string :sexopref
      t.string :tipoliccond
      t.text :habilidad
      t.text :comenta

      t.timestamps
    end
  end
end
