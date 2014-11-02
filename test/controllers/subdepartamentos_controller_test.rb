require 'test_helper'

class SubdepartamentosControllerTest < ActionController::TestCase
  setup do
    @subdepartamento = subdepartamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subdepartamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subdepartamento" do
    assert_difference('Subdepartamento.count') do
      post :create, subdepartamento: { activo: @subdepartamento.activo, codigo: @subdepartamento.codigo, departamento_id: @subdepartamento.departamento_id, nombre: @subdepartamento.nombre }
    end

    assert_redirected_to subdepartamento_path(assigns(:subdepartamento))
  end

  test "should show subdepartamento" do
    get :show, id: @subdepartamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subdepartamento
    assert_response :success
  end

  test "should update subdepartamento" do
    patch :update, id: @subdepartamento, subdepartamento: { activo: @subdepartamento.activo, codigo: @subdepartamento.codigo, departamento_id: @subdepartamento.departamento_id, nombre: @subdepartamento.nombre }
    assert_redirected_to subdepartamento_path(assigns(:subdepartamento))
  end

  test "should destroy subdepartamento" do
    assert_difference('Subdepartamento.count', -1) do
      delete :destroy, id: @subdepartamento
    end

    assert_redirected_to subdepartamentos_path
  end
end
