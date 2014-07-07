class CreateProspectoExperiencia < ActiveRecord::Migration
  def change
    create_table :prospecto_experiencia do |t|
      t.references :prospecto, index: true
      t.string :empresa
      t.string :cargo
      t.text :descripcion_cargo
      t.date :fecha_ingreso
      t.date :fecha_salida
      t.boolean :actual
      t.float :ultimo_salario

      t.timestamps
    end
  end
end
