require 'test_helper'

class ParkinghousesControllerTest < ActionController::TestCase
  setup do
    @parkinghouse = parkinghouses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parkinghouses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parkinghouse" do
    assert_difference('Parkinghouse.count') do
      post :create, parkinghouse: { address: @parkinghouse.address, description: @parkinghouse.description, image: @parkinghouse.image, name: @parkinghouse.name }
    end

    assert_redirected_to parkinghouse_path(assigns(:parkinghouse))
  end

  test "should show parkinghouse" do
    get :show, id: @parkinghouse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parkinghouse
    assert_response :success
  end

  test "should update parkinghouse" do
    patch :update, id: @parkinghouse, parkinghouse: { address: @parkinghouse.address, description: @parkinghouse.description, image: @parkinghouse.image, name: @parkinghouse.name }
    assert_redirected_to parkinghouse_path(assigns(:parkinghouse))
  end

  test "should destroy parkinghouse" do
    assert_difference('Parkinghouse.count', -1) do
      delete :destroy, id: @parkinghouse
    end

    assert_redirected_to parkinghouses_path
  end
end
