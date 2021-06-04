require "test_helper"

class CollectionItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collection_item = collection_items(:one)
  end

  test "should get index" do
    get collection_items_url
    assert_response :success
  end

  test "should get new" do
    get new_collection_item_url
    assert_response :success
  end

  test "should create collection_item" do
    assert_difference('CollectionItem.count') do
      post collection_items_url, params: { collection_item: { collection_id: @collection_item.collection_id, column: @collection_item.column, row: @collection_item.row, single_item_id: @collection_item.single_item_id } }
    end

    assert_redirected_to collection_item_url(CollectionItem.last)
  end

  test "should show collection_item" do
    get collection_item_url(@collection_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_collection_item_url(@collection_item)
    assert_response :success
  end

  test "should update collection_item" do
    patch collection_item_url(@collection_item), params: { collection_item: { collection_id: @collection_item.collection_id, column: @collection_item.column, row: @collection_item.row, single_item_id: @collection_item.single_item_id } }
    assert_redirected_to collection_item_url(@collection_item)
  end

  test "should destroy collection_item" do
    assert_difference('CollectionItem.count', -1) do
      delete collection_item_url(@collection_item)
    end

    assert_redirected_to collection_items_url
  end
end
