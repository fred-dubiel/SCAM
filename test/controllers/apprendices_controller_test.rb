require 'test_helper'

class ApprendicesControllerTest < ActionController::TestCase
  setup do
    @apprendice = apprendices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apprendices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apprendice" do
    assert_difference('Apprendice.count') do
      post :create, apprendice: { allergy: @apprendice.allergy, medicines: @apprendice.medicines, name: @apprendice.name, obsevation: @apprendice.obsevation, photo: @apprendice.photo, warname: @apprendice.warname }
    end

    assert_redirected_to apprendice_path(assigns(:apprendice))
  end

  test "should show apprendice" do
    get :show, id: @apprendice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apprendice
    assert_response :success
  end

  test "should update apprendice" do
    patch :update, id: @apprendice, apprendice: { allergy: @apprendice.allergy, medicines: @apprendice.medicines, name: @apprendice.name, obsevation: @apprendice.obsevation, photo: @apprendice.photo, warname: @apprendice.warname }
    assert_redirected_to apprendice_path(assigns(:apprendice))
  end

  test "should destroy apprendice" do
    assert_difference('Apprendice.count', -1) do
      delete :destroy, id: @apprendice
    end

    assert_redirected_to apprendices_path
  end
end
