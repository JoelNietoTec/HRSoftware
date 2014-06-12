json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :codigo, :nombres, :apellidos, :cedula, :seguro_social, :dv, :clave_isr, :grupo_pago_id, :status_id, :tipo_salario_id, :tipo_empleado_id, :salario_pactado, :horas_base, :fecha_ingreso, :fecha_liquidacion, :sucursal_id, :departamento_id, :centro_costo_id, :proyecto_id, :fase_id, :seccion_id, :fecha_nacimiento, :nacionalidad_id, :cargo_id, :direccion, :email, :telefono, :sexo_id, :estado_civil_id, :forma_pago_id, :sector_id
  json.url empleado_url(empleado, format: :json)
end
