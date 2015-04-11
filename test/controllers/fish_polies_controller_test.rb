require 'test_helper'

class FishPoliesControllerTest < ActionController::TestCase
  setup do
    @fish_poly = fish_polies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fish_polies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fish_poly" do
    assert_difference('FishPoly.count') do
      post :create, fish_poly: {  }
    end

    assert_redirected_to fish_poly_path(assigns(:fish_poly))
  end

  test "should show fish_poly" do
    get :show, id: @fish_poly
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fish_poly
    assert_response :success
  end

  test "should update fish_poly" do
    patch :update, id: @fish_poly, fish_poly: {  }
    assert_redirected_to fish_poly_path(assigns(:fish_poly))
  end

  test "should destroy fish_poly" do
    assert_difference('FishPoly.count', -1) do
      delete :destroy, id: @fish_poly
    end

    assert_redirected_to fish_polies_path
  end
end
