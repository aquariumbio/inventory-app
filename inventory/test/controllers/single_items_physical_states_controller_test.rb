require "test_helper"

class SingleItemsPhysicalStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single_items_physical_state = single_items_physical_states(:one)
  end

  test "should get index" do
    get single_items_physical_states_url
    assert_response :success
  end

  test "should get new" do
    get new_single_items_physical_state_url
    assert_response :success
  end

  test "should create single_items_physical_state" do
    assert_difference('SingleItemsPhysicalState.count') do
      post single_items_physical_states_url, params: { single_items_physical_state: { item_id: @single_items_physical_state.item_id, physical_state_id: @single_items_physical_state.physical_state_id } }
    end

    assert_redirected_to single_items_physical_state_url(SingleItemsPhysicalState.last)
  end

  test "should show single_items_physical_state" do
    get single_items_physical_state_url(@single_items_physical_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_items_physical_state_url(@single_items_physical_state)
    assert_response :success
  end

  test "should update single_items_physical_state" do
    patch single_items_physical_state_url(@single_items_physical_state), params: { single_items_physical_state: { item_id: @single_items_physical_state.item_id, physical_state_id: @single_items_physical_state.physical_state_id } }
    assert_redirected_to single_items_physical_state_url(@single_items_physical_state)
  end

  test "should destroy single_items_physical_state" do
    assert_difference('SingleItemsPhysicalState.count', -1) do
      delete single_items_physical_state_url(@single_items_physical_state)
    end

    assert_redirected_to single_items_physical_states_url
  end
end
