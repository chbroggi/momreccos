require 'test_helper'

class ParentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parent = parents(:one)
  end

  test "should get index" do
    get parents_url
    assert_response :success
  end

  test "should get new" do
    get new_parent_url
    assert_response :success
  end

  test "should create parent" do
    assert_difference('Parent.count') do
      post parents_url, params: { parent: { city: @parent.city, country: @parent.country, father_email: @parent.father_email, father_name: @parent.father_name, father_phone: @parent.father_phone, last_name: @parent.last_name, mother_email: @parent.mother_email, mother_name: @parent.mother_name, mother_phone: @parent.mother_phone, street: @parent.street, zip_code: @parent.zip_code } }
    end

    assert_redirected_to parent_url(Parent.last)
  end

  test "should show parent" do
    get parent_url(@parent)
    assert_response :success
  end

  test "should get edit" do
    get edit_parent_url(@parent)
    assert_response :success
  end

  test "should update parent" do
    patch parent_url(@parent), params: { parent: { city: @parent.city, country: @parent.country, father_email: @parent.father_email, father_name: @parent.father_name, father_phone: @parent.father_phone, last_name: @parent.last_name, mother_email: @parent.mother_email, mother_name: @parent.mother_name, mother_phone: @parent.mother_phone, street: @parent.street, zip_code: @parent.zip_code } }
    assert_redirected_to parent_url(@parent)
  end

  test "should destroy parent" do
    assert_difference('Parent.count', -1) do
      delete parent_url(@parent)
    end

    assert_redirected_to parents_url
  end
end
