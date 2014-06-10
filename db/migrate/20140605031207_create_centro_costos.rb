class CreateCentroCostos < ActiveRecord::Migration
  def change
    create_table :centro_costos do |t|
      t.string :codigo
      t.string :nombre
      t.boolean :activo

      t.timestamps
    end
  end
end
