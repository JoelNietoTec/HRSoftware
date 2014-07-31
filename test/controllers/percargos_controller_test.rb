require 'test_helper'

class PercargosControllerTest < ActionController::TestCase
  setup do
    @percargo = percargos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:percargos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create percargo" do
    assert_difference('Percargo.count') do
      post :create, percargo: { cargo_id: @percargo.cargo_id, comenta: @percargo.comenta, edadmax: @percargo.edadmax, edadmin: @percargo.edadmin, especesc: @percargo.especesc, estcivil: @percargo.estcivil, habilidad: @percargo.habilidad, nivelesc: @percargo.nivelesc, sexopref: @percargo.sexopref, tipoliccond: @percargo.tipoliccond, vehicprop: @percargo.vehicprop }
    end

    assert_redirected_to percargo_path(assigns(:percargo))
  end

  test "should show percargo" do
    get :show, id: @percargo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @percargo
    assert_response :success
  end

  test "should update percargo" do
    patch :update, id: @percargo, percargo: { cargo_id: @percargo.cargo_id, comenta: @percargo.comenta, edadmax: @percargo.edadmax, edadmin: @percargo.edadmin, especesc: @percargo.especesc, estcivil: @percargo.estcivil, habilidad: @percargo.habilidad, nivelesc: @percargo.nivelesc, sexopref: @percargo.sexopref, tipoliccond: @percargo.tipoliccond, vehicprop: @percargo.vehicprop }
    assert_redirected_to percargo_path(assigns(:percargo))
  end

  test "should destroy percargo" do
    assert_difference('Percargo.count', -1) do
      delete :destroy, id: @percargo
    end

    assert_redirected_to percargos_path
  end
end
