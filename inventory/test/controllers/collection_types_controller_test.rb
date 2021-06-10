require "test_helper"

class CollectionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collection_type = collection_types(:one)
  end

  test "should get index" do
    get collection_types_url
    assert_response :success
  end

  test "should get new" do
    get new_collection_type_url
    assert_response :success
  end

  test "should create collection_type" do
    assert_difference('CollectionType.count') do
      post collection_types_url, params: { collection_type: { description: @collection_type.description, name: @collection_type.name, rows: @collection_type.rows, columns: @collection_type.columns } }
    end

    assert_redirected_to collection_type_url(CollectionType.last)
  end

  test "should show collection_type" do
    get collection_type_url(@collection_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_collection_type_url(@collection_type)
    assert_response :success
  end

  test "should update collection_type" do
    patch collection_type_url(@collection_type), params: { collection_type: { description: @collection_type.description, name: @collection_type.name, rows: @collection_type.rows, columns: @collection_type.columns } }
    assert_redirected_to collection_type_url(@collection_type)
  end

  test "should destroy collection_type" do
    assert_difference('CollectionType.count', -1) do
      delete collection_type_url(@collection_type)
    end

    assert_redirected_to collection_types_url
  end
end
