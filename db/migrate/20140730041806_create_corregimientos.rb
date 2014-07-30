class CreateCorregimientos < ActiveRecord::Migration
  def change
    create_table :corregimientos do |t|
      t.integer :provincia_id
      t.integer :distrito_id
      t.string :nombre

      t.timestamps
    end
  end
end
