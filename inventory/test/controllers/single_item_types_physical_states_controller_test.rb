require "test_helper"

class SingleItemTypesPhysicalStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single_item_types_physical_state = single_item_types_physical_states(:one)
  end

  test "should get index" do
    get single_item_types_physical_states_url
    assert_response :success
  end

  test "should get new" do
    get new_single_item_types_physical_state_url
    assert_response :success
  end

  test "should create single_item_types_physical_state" do
    assert_difference('SingleItemTypesPhysicalState.count') do
      post single_item_types_physical_states_url, params: { single_item_types_physical_state: { physical_state_id: @single_item_types_physical_state.physical_state_id, single_item_type_id: @single_item_types_physical_state.single_item_type_id } }
    end

    assert_redirected_to single_item_types_physical_state_url(SingleItemTypesPhysicalState.last)
  end

  test "should show single_item_types_physical_state" do
    get single_item_types_physical_state_url(@single_item_types_physical_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_item_types_physical_state_url(@single_item_types_physical_state)
    assert_response :success
  end

  test "should update single_item_types_physical_state" do
    patch single_item_types_physical_state_url(@single_item_types_physical_state), params: { single_item_types_physical_state: { physical_state_id: @single_item_types_physical_state.physical_state_id, single_item_type_id: @single_item_types_physical_state.single_item_type_id } }
    assert_redirected_to single_item_types_physical_state_url(@single_item_types_physical_state)
  end

  test "should destroy single_item_types_physical_state" do
    assert_difference('SingleItemTypesPhysicalState.count', -1) do
      delete single_item_types_physical_state_url(@single_item_types_physical_state)
    end

    assert_redirected_to single_item_types_physical_states_url
  end
end
