require "test_helper"

class PhysicalStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_state = physical_states(:one)
  end

  test "should get index" do
    get physical_states_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_state_url
    assert_response :success
  end

  test "should create physical_state" do
    assert_difference('PhysicalState.count') do
      post physical_states_url, params: { physical_state: { description: @physical_state.description, name: @physical_state.name, physical_state_type_id: @physical_state.physical_state_type_id } }
    end

    assert_redirected_to physical_state_url(PhysicalState.last)
  end

  test "should show physical_state" do
    get physical_state_url(@physical_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_state_url(@physical_state)
    assert_response :success
  end

  test "should update physical_state" do
    patch physical_state_url(@physical_state), params: { physical_state: { description: @physical_state.description, name: @physical_state.name, physical_state_type_id: @physical_state.physical_state_type_id } }
    assert_redirected_to physical_state_url(@physical_state)
  end

  test "should destroy physical_state" do
    assert_difference('PhysicalState.count', -1) do
      delete physical_state_url(@physical_state)
    end

    assert_redirected_to physical_states_url
  end
end
