require 'test_helper'

class EmpleadosControllerTest < ActionController::TestCase
  setup do
    @empleado = empleados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empleados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empleado" do
    assert_difference('Empleado.count') do
      post :create, empleado: { apellidos: @empleado.apellidos, cargo_id: @empleado.cargo_id, cedula: @empleado.cedula, centro_costo_id: @empleado.centro_costo_id, clave_isr: @empleado.clave_isr, codigo: @empleado.codigo, departamento_id: @empleado.departamento_id, direccion: @empleado.direccion, dv: @empleado.dv, email: @empleado.email, estado_civil_id: @empleado.estado_civil_id, fase_id: @empleado.fase_id, fecha_ingreso: @empleado.fecha_ingreso, fecha_liquidacion: @empleado.fecha_liquidacion, fecha_nacimiento: @empleado.fecha_nacimiento, forma_pago_id: @empleado.forma_pago_id, grupo_pago_id: @empleado.grupo_pago_id, horas_base: @empleado.horas_base, nacionalidad_id: @empleado.nacionalidad_id, nombres: @empleado.nombres, proyecto_id: @empleado.proyecto_id, salario_pactado: @empleado.salario_pactado, seccion_id: @empleado.seccion_id, sector_id: @empleado.sector_id, seguro_social: @empleado.seguro_social, sexo_id: @empleado.sexo_id, status_id: @empleado.status_id, sucursal_id: @empleado.sucursal_id, telefono: @empleado.telefono, tipo_empleado_id: @empleado.tipo_empleado_id, tipo_salario_id: @empleado.tipo_salario_id }
    end

    assert_redirected_to empleado_path(assigns(:empleado))
  end

  test "should show empleado" do
    get :show, id: @empleado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empleado
    assert_response :success
  end

  test "should update empleado" do
    patch :update, id: @empleado, empleado: { apellidos: @empleado.apellidos, cargo_id: @empleado.cargo_id, cedula: @empleado.cedula, centro_costo_id: @empleado.centro_costo_id, clave_isr: @empleado.clave_isr, codigo: @empleado.codigo, departamento_id: @empleado.departamento_id, direccion: @empleado.direccion, dv: @empleado.dv, email: @empleado.email, estado_civil_id: @empleado.estado_civil_id, fase_id: @empleado.fase_id, fecha_ingreso: @empleado.fecha_ingreso, fecha_liquidacion: @empleado.fecha_liquidacion, fecha_nacimiento: @empleado.fecha_nacimiento, forma_pago_id: @empleado.forma_pago_id, grupo_pago_id: @empleado.grupo_pago_id, horas_base: @empleado.horas_base, nacionalidad_id: @empleado.nacionalidad_id, nombres: @empleado.nombres, proyecto_id: @empleado.proyecto_id, salario_pactado: @empleado.salario_pactado, seccion_id: @empleado.seccion_id, sector_id: @empleado.sector_id, seguro_social: @empleado.seguro_social, sexo_id: @empleado.sexo_id, status_id: @empleado.status_id, sucursal_id: @empleado.sucursal_id, telefono: @empleado.telefono, tipo_empleado_id: @empleado.tipo_empleado_id, tipo_salario_id: @empleado.tipo_salario_id }
    assert_redirected_to empleado_path(assigns(:empleado))
  end

  test "should destroy empleado" do
    assert_difference('Empleado.count', -1) do
      delete :destroy, id: @empleado
    end

    assert_redirected_to empleados_path
  end
end
