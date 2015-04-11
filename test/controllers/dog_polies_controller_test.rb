require 'test_helper'

class DogPoliesControllerTest < ActionController::TestCase
  setup do
    @dog_poly = dog_polies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dog_polies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dog_poly" do
    assert_difference('DogPoly.count') do
      post :create, dog_poly: {  }
    end

    assert_redirected_to dog_poly_path(assigns(:dog_poly))
  end

  test "should show dog_poly" do
    get :show, id: @dog_poly
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dog_poly
    assert_response :success
  end

  test "should update dog_poly" do
    patch :update, id: @dog_poly, dog_poly: {  }
    assert_redirected_to dog_poly_path(assigns(:dog_poly))
  end

  test "should destroy dog_poly" do
    assert_difference('DogPoly.count', -1) do
      delete :destroy, id: @dog_poly
    end

    assert_redirected_to dog_polies_path
  end
end
