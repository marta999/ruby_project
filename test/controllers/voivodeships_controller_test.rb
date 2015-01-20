require 'test_helper'

class VoivodeshipsControllerTest < ActionController::TestCase
  setup do
    @voivodeship = voivodeships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voivodeships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voivodeship" do
    assert_difference('Voivodeship.count') do
      post :create, voivodeship: { name: @voivodeship.name, number_of_seats: @voivodeship.number_of_seats }
    end

    assert_redirected_to voivodeship_path(assigns(:voivodeship))
  end

  test "should show voivodeship" do
    get :show, id: @voivodeship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voivodeship
    assert_response :success
  end

  test "should update voivodeship" do
    patch :update, id: @voivodeship, voivodeship: { name: @voivodeship.name, number_of_seats: @voivodeship.number_of_seats }
    assert_redirected_to voivodeship_path(assigns(:voivodeship))
  end

  test "should destroy voivodeship" do
    assert_difference('Voivodeship.count', -1) do
      delete :destroy, id: @voivodeship
    end

    assert_redirected_to voivodeships_path
  end
end
