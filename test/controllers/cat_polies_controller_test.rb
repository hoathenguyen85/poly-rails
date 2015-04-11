require 'test_helper'

class CatPoliesControllerTest < ActionController::TestCase
  setup do
    @cat_poly = cat_polies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cat_polies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat_poly" do
    assert_difference('CatPoly.count') do
      post :create, cat_poly: { dog_poly: @cat_poly.dog_poly, fish_poly: @cat_poly.fish_poly }
    end

    assert_redirected_to cat_poly_path(assigns(:cat_poly))
  end

  test "should show cat_poly" do
    get :show, id: @cat_poly
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat_poly
    assert_response :success
  end

  test "should update cat_poly" do
    patch :update, id: @cat_poly, cat_poly: { dog_poly: @cat_poly.dog_poly, fish_poly: @cat_poly.fish_poly }
    assert_redirected_to cat_poly_path(assigns(:cat_poly))
  end

  test "should destroy cat_poly" do
    assert_difference('CatPoly.count', -1) do
      delete :destroy, id: @cat_poly
    end

    assert_redirected_to cat_polies_path
  end
end
