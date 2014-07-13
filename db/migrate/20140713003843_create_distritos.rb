class CreateDistritos < ActiveRecord::Migration
  def change
    create_table :distritos do |t|
      t.references :provincia, index: true
      t.string :nombre

      t.timestamps
    end
  end
end
