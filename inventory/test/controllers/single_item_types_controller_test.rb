require "test_helper"

class SingleItemTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single_item_type = single_item_types(:one)
  end

  test "should get index" do
    get single_item_types_url
    assert_response :success
  end

  test "should get new" do
    get new_single_item_type_url
    assert_response :success
  end

  test "should create single_item_type" do
    assert_difference('SingleItemType.count') do
      post single_item_types_url, params: { single_item_type: { sample_type_id: @single_item_type.sample_type_id } }
    end

    assert_redirected_to single_item_type_url(SingleItemType.last)
  end

  test "should show single_item_type" do
    get single_item_type_url(@single_item_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_item_type_url(@single_item_type)
    assert_response :success
  end

  test "should update single_item_type" do
    patch single_item_type_url(@single_item_type), params: { single_item_type: { sample_type_id: @single_item_type.sample_type_id } }
    assert_redirected_to single_item_type_url(@single_item_type)
  end

  test "should destroy single_item_type" do
    assert_difference('SingleItemType.count', -1) do
      delete single_item_type_url(@single_item_type)
    end

    assert_redirected_to single_item_types_url
  end
end
