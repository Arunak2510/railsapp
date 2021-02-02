require "test_helper"

class EmpolyeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empolyee = empolyees(:one)
  end

  test "should get index" do
    get empolyees_url
    assert_response :success
  end

  test "should get new" do
    get new_empolyee_url
    assert_response :success
  end

  test "should create empolyee" do
    assert_difference('Empolyee.count') do
      post empolyees_url, params: { empolyee: { Gender: @empolyee.Gender, age: @empolyee.age, designation: @empolyee.designation, first_name: @empolyee.first_name, last_name: @empolyee.last_name } }
    end

    assert_redirected_to empolyee_url(Empolyee.last)
  end

  test "should show empolyee" do
    get empolyee_url(@empolyee)
    assert_response :success
  end

  test "should get edit" do
    get edit_empolyee_url(@empolyee)
    assert_response :success
  end

  test "should update empolyee" do
    patch empolyee_url(@empolyee), params: { empolyee: { Gender: @empolyee.Gender, age: @empolyee.age, designation: @empolyee.designation, first_name: @empolyee.first_name, last_name: @empolyee.last_name } }
    assert_redirected_to empolyee_url(@empolyee)
  end

  test "should destroy empolyee" do
    assert_difference('Empolyee.count', -1) do
      delete empolyee_url(@empolyee)
    end

    assert_redirected_to empolyees_url
  end
end
