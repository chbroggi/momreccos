require 'test_helper'

class CarSharingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_sharing = car_sharings(:one)
  end

  test "should get index" do
    get car_sharings_url
    assert_response :success
  end

  test "should get new" do
    get new_car_sharing_url
    assert_response :success
  end

  test "should create car_sharing" do
    assert_difference('CarSharing.count') do
      post car_sharings_url, params: { car_sharing: { description: @car_sharing.description, event_id: @car_sharing.event_id, name: @car_sharing.name, nb_seats: @car_sharing.nb_seats, player_id: @car_sharing.player_id } }
    end

    assert_redirected_to car_sharing_url(CarSharing.last)
  end

  test "should show car_sharing" do
    get car_sharing_url(@car_sharing)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_sharing_url(@car_sharing)
    assert_response :success
  end

  test "should update car_sharing" do
    patch car_sharing_url(@car_sharing), params: { car_sharing: { description: @car_sharing.description, event_id: @car_sharing.event_id, name: @car_sharing.name, nb_seats: @car_sharing.nb_seats, player_id: @car_sharing.player_id } }
    assert_redirected_to car_sharing_url(@car_sharing)
  end

  test "should destroy car_sharing" do
    assert_difference('CarSharing.count', -1) do
      delete car_sharing_url(@car_sharing)
    end

    assert_redirected_to car_sharings_url
  end
end
