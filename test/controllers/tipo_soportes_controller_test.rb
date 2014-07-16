require 'test_helper'

class TipoSoportesControllerTest < ActionController::TestCase
  setup do
    @tipo_soporte = tipo_soportes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_soportes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_soporte" do
    assert_difference('TipoSoporte.count') do
      post :create, tipo_soporte: { descripcion: @tipo_soporte.descripcion, nombre: @tipo_soporte.nombre }
    end

    assert_redirected_to tipo_soporte_path(assigns(:tipo_soporte))
  end

  test "should show tipo_soporte" do
    get :show, id: @tipo_soporte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_soporte
    assert_response :success
  end

  test "should update tipo_soporte" do
    patch :update, id: @tipo_soporte, tipo_soporte: { descripcion: @tipo_soporte.descripcion, nombre: @tipo_soporte.nombre }
    assert_redirected_to tipo_soporte_path(assigns(:tipo_soporte))
  end

  test "should destroy tipo_soporte" do
    assert_difference('TipoSoporte.count', -1) do
      delete :destroy, id: @tipo_soporte
    end

    assert_redirected_to tipo_soportes_path
  end
end
