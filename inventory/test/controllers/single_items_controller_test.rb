require "test_helper"

class SingleItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single_item = single_items(:one)
  end

  test "should get index" do
    get single_items_url
    assert_response :success
  end

  test "should get new" do
    get new_single_item_url
    assert_response :success
  end

  test "should create single_item" do
    assert_difference('SingleItem.count') do
      post single_items_url, params: { single_item: { sample_id: @single_item.sample_id } }
    end

    assert_redirected_to single_item_url(SingleItem.last)
  end

  test "should show single_item" do
    get single_item_url(@single_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_single_item_url(@single_item)
    assert_response :success
  end

  test "should update single_item" do
    patch single_item_url(@single_item), params: { single_item: { sample_id: @single_item.sample_id } }
    assert_redirected_to single_item_url(@single_item)
  end

  test "should destroy single_item" do
    assert_difference('SingleItem.count', -1) do
      delete single_item_url(@single_item)
    end

    assert_redirected_to single_items_url
  end
end
