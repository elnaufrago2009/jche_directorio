require 'test_helper'

class TikedsControllerTest < ActionController::TestCase
  setup do
    @tiked = tikeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tikeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiked" do
    assert_difference('Tiked.count') do
      post :create, tiked: { admin_id: @tiked.admin_id, fecha_hora_atencion: @tiked.fecha_hora_atencion, observaciones: @tiked.observaciones, reclamo_id: @tiked.reclamo_id, tiempo_soporte_id: @tiked.tiempo_soporte_id, tiked_nivele_id: @tiked.tiked_nivele_id, tipo_soporte_id: @tiked.tipo_soporte_id, user_id: @tiked.user_id }
    end

    assert_redirected_to tiked_path(assigns(:tiked))
  end

  test "should show tiked" do
    get :show, id: @tiked
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiked
    assert_response :success
  end

  test "should update tiked" do
    patch :update, id: @tiked, tiked: { admin_id: @tiked.admin_id, fecha_hora_atencion: @tiked.fecha_hora_atencion, observaciones: @tiked.observaciones, reclamo_id: @tiked.reclamo_id, tiempo_soporte_id: @tiked.tiempo_soporte_id, tiked_nivele_id: @tiked.tiked_nivele_id, tipo_soporte_id: @tiked.tipo_soporte_id, user_id: @tiked.user_id }
    assert_redirected_to tiked_path(assigns(:tiked))
  end

  test "should destroy tiked" do
    assert_difference('Tiked.count', -1) do
      delete :destroy, id: @tiked
    end

    assert_redirected_to tikeds_path
  end
end
