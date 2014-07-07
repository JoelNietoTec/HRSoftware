class CreateProspectoCargos < ActiveRecord::Migration
  def change
    create_table :prospecto_cargos do |t|
      t.references :prospecto, index: true
      t.integer :cargo_id
      t.boolean :prioridad

      t.timestamps
    end
  end
end
