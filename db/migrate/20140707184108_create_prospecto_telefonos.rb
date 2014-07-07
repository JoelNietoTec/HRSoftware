class CreateProspectoTelefonos < ActiveRecord::Migration
  def change
    create_table :prospecto_telefonos do |t|
      t.references :prospecto, index: true
      t.integer :tipos_telefono_id
      t.string :telefono

      t.timestamps
    end
  end
end
