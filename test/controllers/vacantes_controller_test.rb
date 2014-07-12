require 'test_helper'

class VacantesControllerTest < ActionController::TestCase
  setup do
    @vacante = vacantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacante" do
    assert_difference('Vacante.count') do
      post :create, vacante: { activo: @vacante.activo, area_profesional_id: @vacante.area_profesional_id, cargo_id: @vacante.cargo_id, fecha_inicio: @vacante.fecha_inicio, fecha_vencimiento: @vacante.fecha_vencimiento }
    end

    assert_redirected_to vacante_path(assigns(:vacante))
  end

  test "should show vacante" do
    get :show, id: @vacante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacante
    assert_response :success
  end

  test "should update vacante" do
    patch :update, id: @vacante, vacante: { activo: @vacante.activo, area_profesional_id: @vacante.area_profesional_id, cargo_id: @vacante.cargo_id, fecha_inicio: @vacante.fecha_inicio, fecha_vencimiento: @vacante.fecha_vencimiento }
    assert_redirected_to vacante_path(assigns(:vacante))
  end

  test "should destroy vacante" do
    assert_difference('Vacante.count', -1) do
      delete :destroy, id: @vacante
    end

    assert_redirected_to vacantes_path
  end
end
