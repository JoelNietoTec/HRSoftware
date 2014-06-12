class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :codigo
      t.string :nombres
      t.string :apellidos
      t.string :cedula
      t.string :seguro_social
      t.string :dv
      t.string :clave_isr
      t.integer :grupo_pago_id
      t.integer :status_id
      t.integer :tipo_salario_id
      t.integer :tipo_empleado_id
      t.float :salario_pactado
      t.float :horas_base
      t.date :fecha_ingreso
      t.date :fecha_liquidacion
      t.integer :sucursal_id
      t.integer :departamento_id
      t.integer :centro_costo_id
      t.integer :proyecto_id
      t.integer :fase_id
      t.integer :seccion_id
      t.date :fecha_nacimiento
      t.integer :nacionalidad_id
      t.integer :cargo_id
      t.string :direccion
      t.string :email
      t.string :telefono
      t.integer :sexo_id
      t.integer :estado_civil_id
      t.integer :forma_pago_id
      t.integer :sector_id

      t.timestamps
    end
  end
end
