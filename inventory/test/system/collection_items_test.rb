require "application_system_test_case"

class CollectionItemsTest < ApplicationSystemTestCase
  setup do
    @collection_item = collection_items(:one)
  end

  test "visiting the index" do
    visit collection_items_url
    assert_selector "h1", text: "Collection Items"
  end

  test "creating a Collection item" do
    visit collection_items_url
    click_on "New Collection Item"

    fill_in "Collection", with: @collection_item.collection_id
    fill_in "Column", with: @collection_item.column
    fill_in "Row", with: @collection_item.row
    fill_in "Single item", with: @collection_item.single_item_id
    click_on "Create Collection item"

    assert_text "Collection item was successfully created"
    click_on "Back"
  end

  test "updating a Collection item" do
    visit collection_items_url
    click_on "Edit", match: :first

    fill_in "Collection", with: @collection_item.collection_id
    fill_in "Column", with: @collection_item.column
    fill_in "Row", with: @collection_item.row
    fill_in "Single item", with: @collection_item.single_item_id
    click_on "Update Collection item"

    assert_text "Collection item was successfully updated"
    click_on "Back"
  end

  test "destroying a Collection item" do
    visit collection_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collection item was successfully destroyed"
  end
end
