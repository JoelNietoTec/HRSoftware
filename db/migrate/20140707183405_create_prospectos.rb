class CreateProspectos < ActiveRecord::Migration
  def change
    create_table :prospectos do |t|
      t.string :nombres
      t.string :apellidos
      t.string :cedula
      t.string :seguro_social
      t.integer :sexo_id
      t.float :aspiracion_salario
      t.integer :estado_civil_id
      t.string :direccion
      t.date :fecha_nacimiento
      t.integer :licencia_id
      t.string :nacionalidad
      t.boolean :disponible

      t.timestamps
    end
  end
end
