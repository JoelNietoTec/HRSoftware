require 'test_helper'

class ReqcargosControllerTest < ActionController::TestCase
  setup do
    @reqcargo = reqcargos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reqcargos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reqcargo" do
    assert_difference('Reqcargo.count') do
      post :create, reqcargo: { cargo_id: @reqcargo.cargo_id, lactivo: @reqcargo.lactivo, nomrequis: @reqcargo.nomrequis }
    end

    assert_redirected_to reqcargo_path(assigns(:reqcargo))
  end

  test "should show reqcargo" do
    get :show, id: @reqcargo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reqcargo
    assert_response :success
  end

  test "should update reqcargo" do
    patch :update, id: @reqcargo, reqcargo: { cargo_id: @reqcargo.cargo_id, lactivo: @reqcargo.lactivo, nomrequis: @reqcargo.nomrequis }
    assert_redirected_to reqcargo_path(assigns(:reqcargo))
  end

  test "should destroy reqcargo" do
    assert_difference('Reqcargo.count', -1) do
      delete :destroy, id: @reqcargo
    end

    assert_redirected_to reqcargos_path
  end
end
