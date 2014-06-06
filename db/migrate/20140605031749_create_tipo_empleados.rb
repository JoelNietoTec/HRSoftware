class CreateTipoEmpleados < ActiveRecord::Migration
  def change
    create_table :tipo_empleados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
