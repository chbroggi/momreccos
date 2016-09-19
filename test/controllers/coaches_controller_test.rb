require 'test_helper'

class CoachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coach = coaches(:one)
  end

  test "should get index" do
    get coaches_url
    assert_response :success
  end

  test "should get new" do
    get new_coach_url
    assert_response :success
  end

  test "should create coach" do
    assert_difference('Coach.count') do
      post coaches_url, params: { coach: { city: @coach.city, county: @coach.county, email: @coach.email, first_name: @coach.first_name, last_name: @coach.last_name, phone: @coach.phone, street: @coach.street, team_id: @coach.team_id, zip_code: @coach.zip_code } }
    end

    assert_redirected_to coach_url(Coach.last)
  end

  test "should show coach" do
    get coach_url(@coach)
    assert_response :success
  end

  test "should get edit" do
    get edit_coach_url(@coach)
    assert_response :success
  end

  test "should update coach" do
    patch coach_url(@coach), params: { coach: { city: @coach.city, county: @coach.county, email: @coach.email, first_name: @coach.first_name, last_name: @coach.last_name, phone: @coach.phone, street: @coach.street, team_id: @coach.team_id, zip_code: @coach.zip_code } }
    assert_redirected_to coach_url(@coach)
  end

  test "should destroy coach" do
    assert_difference('Coach.count', -1) do
      delete coach_url(@coach)
    end

    assert_redirected_to coaches_url
  end
end
