require 'test_helper'

class TiempoSoportesControllerTest < ActionController::TestCase
  setup do
    @tiempo_soporte = tiempo_soportes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiempo_soportes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiempo_soporte" do
    assert_difference('TiempoSoporte.count') do
      post :create, tiempo_soporte: { descripcion: @tiempo_soporte.descripcion, nombre: @tiempo_soporte.nombre }
    end

    assert_redirected_to tiempo_soporte_path(assigns(:tiempo_soporte))
  end

  test "should show tiempo_soporte" do
    get :show, id: @tiempo_soporte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiempo_soporte
    assert_response :success
  end

  test "should update tiempo_soporte" do
    patch :update, id: @tiempo_soporte, tiempo_soporte: { descripcion: @tiempo_soporte.descripcion, nombre: @tiempo_soporte.nombre }
    assert_redirected_to tiempo_soporte_path(assigns(:tiempo_soporte))
  end

  test "should destroy tiempo_soporte" do
    assert_difference('TiempoSoporte.count', -1) do
      delete :destroy, id: @tiempo_soporte
    end

    assert_redirected_to tiempo_soportes_path
  end
end
