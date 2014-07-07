class CreateTiposTelefonos < ActiveRecord::Migration
  def change
    create_table :tipos_telefonos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
