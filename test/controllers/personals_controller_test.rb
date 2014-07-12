require 'test_helper'

class PersonalsControllerTest < ActionController::TestCase
  setup do
    @personal = personals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal" do
    assert_difference('Personal.count') do
      post :create, personal: { apellido: @personal.apellido, area_id: @personal.area_id, cargo_id: @personal.cargo_id, dni: @personal.dni, email: @personal.email, empresa_id: @personal.empresa_id, estado_civil: @personal.estado_civil, fecha_nacimiento: @personal.fecha_nacimiento, movil_1: @personal.movil_1, movil_2: @personal.movil_2, nacionalidad: @personal.nacionalidad, nombre: @personal.nombre, observaciones: @personal.observaciones, telefono_fijo: @personal.telefono_fijo }
    end

    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should show personal" do
    get :show, id: @personal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal
    assert_response :success
  end

  test "should update personal" do
    patch :update, id: @personal, personal: { apellido: @personal.apellido, area_id: @personal.area_id, cargo_id: @personal.cargo_id, dni: @personal.dni, email: @personal.email, empresa_id: @personal.empresa_id, estado_civil: @personal.estado_civil, fecha_nacimiento: @personal.fecha_nacimiento, movil_1: @personal.movil_1, movil_2: @personal.movil_2, nacionalidad: @personal.nacionalidad, nombre: @personal.nombre, observaciones: @personal.observaciones, telefono_fijo: @personal.telefono_fijo }
    assert_redirected_to personal_path(assigns(:personal))
  end

  test "should destroy personal" do
    assert_difference('Personal.count', -1) do
      delete :destroy, id: @personal
    end

    assert_redirected_to personals_path
  end
end
