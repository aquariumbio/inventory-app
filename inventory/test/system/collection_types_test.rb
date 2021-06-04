require "application_system_test_case"

class CollectionTypesTest < ApplicationSystemTestCase
  setup do
    @collection_type = collection_types(:one)
  end

  test "visiting the index" do
    visit collection_types_url
    assert_selector "h1", text: "Collection Types"
  end

  test "creating a Collection type" do
    visit collection_types_url
    click_on "New Collection Type"

    fill_in "Description", with: @collection_type.description
    fill_in "Name", with: @collection_type.name
    click_on "Create Collection type"

    assert_text "Collection type was successfully created"
    click_on "Back"
  end

  test "updating a Collection type" do
    visit collection_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @collection_type.description
    fill_in "Name", with: @collection_type.name
    click_on "Update Collection type"

    assert_text "Collection type was successfully updated"
    click_on "Back"
  end

  test "destroying a Collection type" do
    visit collection_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collection type was successfully destroyed"
  end
end
