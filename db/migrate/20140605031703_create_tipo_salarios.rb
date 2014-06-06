class CreateTipoSalarios < ActiveRecord::Migration
  def change
    create_table :tipo_salarios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
