class CreateTipoPuestos < ActiveRecord::Migration
  def change
    create_table :tipo_puestos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
