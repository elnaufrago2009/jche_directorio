require 'test_helper'

class TikedNivelesControllerTest < ActionController::TestCase
  setup do
    @tiked_nivele = tiked_niveles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiked_niveles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiked_nivele" do
    assert_difference('TikedNivele.count') do
      post :create, tiked_nivele: { descripcion: @tiked_nivele.descripcion, nombre: @tiked_nivele.nombre }
    end

    assert_redirected_to tiked_nivele_path(assigns(:tiked_nivele))
  end

  test "should show tiked_nivele" do
    get :show, id: @tiked_nivele
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiked_nivele
    assert_response :success
  end

  test "should update tiked_nivele" do
    patch :update, id: @tiked_nivele, tiked_nivele: { descripcion: @tiked_nivele.descripcion, nombre: @tiked_nivele.nombre }
    assert_redirected_to tiked_nivele_path(assigns(:tiked_nivele))
  end

  test "should destroy tiked_nivele" do
    assert_difference('TikedNivele.count', -1) do
      delete :destroy, id: @tiked_nivele
    end

    assert_redirected_to tiked_niveles_path
  end
end
