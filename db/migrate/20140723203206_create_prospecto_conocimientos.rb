class CreateProspectoConocimientos < ActiveRecord::Migration
  def change
    create_table :prospecto_conocimientos do |t|
      t.references :prospecto, index: true
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
