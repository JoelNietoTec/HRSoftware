class CreateVacantes < ActiveRecord::Migration
  def change
    create_table :vacantes do |t|
      t.integer :cargo_id
      t.date :fecha_inicio
      t.date :fecha_vencimiento
      t.boolean :activo
      t.integer :area_profesional_id

      t.timestamps
    end
  end
end
