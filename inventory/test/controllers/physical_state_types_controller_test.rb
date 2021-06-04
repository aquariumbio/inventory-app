require "test_helper"

class PhysicalStateTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_state_type = physical_state_types(:one)
  end

  test "should get index" do
    get physical_state_types_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_state_type_url
    assert_response :success
  end

  test "should create physical_state_type" do
    assert_difference('PhysicalStateType.count') do
      post physical_state_types_url, params: { physical_state_type: { name: @physical_state_type.name } }
    end

    assert_redirected_to physical_state_type_url(PhysicalStateType.last)
  end

  test "should show physical_state_type" do
    get physical_state_type_url(@physical_state_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_state_type_url(@physical_state_type)
    assert_response :success
  end

  test "should update physical_state_type" do
    patch physical_state_type_url(@physical_state_type), params: { physical_state_type: { name: @physical_state_type.name } }
    assert_redirected_to physical_state_type_url(@physical_state_type)
  end

  test "should destroy physical_state_type" do
    assert_difference('PhysicalStateType.count', -1) do
      delete physical_state_type_url(@physical_state_type)
    end

    assert_redirected_to physical_state_types_url
  end
end
