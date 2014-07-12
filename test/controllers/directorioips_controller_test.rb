require 'test_helper'

class DirectorioipsControllerTest < ActionController::TestCase
  setup do
    @directorioip = directorioips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directorioips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create directorioip" do
    assert_difference('Directorioip.count') do
      post :create, directorioip: { admin_id: @directorioip.admin_id, empresa: @directorioip.empresa, grupo: @directorioip.grupo, hostname: @directorioip.hostname, ip: @directorioip.ip, mac: @directorioip.mac, observaciones: @directorioip.observaciones, ubicacion_actual: @directorioip.ubicacion_actual, username: @directorioip.username }
    end

    assert_redirected_to directorioip_path(assigns(:directorioip))
  end

  test "should show directorioip" do
    get :show, id: @directorioip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @directorioip
    assert_response :success
  end

  test "should update directorioip" do
    patch :update, id: @directorioip, directorioip: { admin_id: @directorioip.admin_id, empresa: @directorioip.empresa, grupo: @directorioip.grupo, hostname: @directorioip.hostname, ip: @directorioip.ip, mac: @directorioip.mac, observaciones: @directorioip.observaciones, ubicacion_actual: @directorioip.ubicacion_actual, username: @directorioip.username }
    assert_redirected_to directorioip_path(assigns(:directorioip))
  end

  test "should destroy directorioip" do
    assert_difference('Directorioip.count', -1) do
      delete :destroy, id: @directorioip
    end

    assert_redirected_to directorioips_path
  end
end
