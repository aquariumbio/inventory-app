require "application_system_test_case"

class SingleItemTypesTest < ApplicationSystemTestCase
  setup do
    @single_item_type = single_item_types(:one)
  end

  test "visiting the index" do
    visit single_item_types_url
    assert_selector "h1", text: "Single Item Types"
  end

  test "creating a Single item type" do
    visit single_item_types_url
    click_on "New Single Item Type"

    fill_in "Physical state type", with: @single_item_type.physical_state_type_id
    fill_in "Sample type", with: @single_item_type.sample_type_id
    click_on "Create Single item type"

    assert_text "Single item type was successfully created"
    click_on "Back"
  end

  test "updating a Single item type" do
    visit single_item_types_url
    click_on "Edit", match: :first

    fill_in "Physical state type", with: @single_item_type.physical_state_type_id
    fill_in "Sample type", with: @single_item_type.sample_type_id
    click_on "Update Single item type"

    assert_text "Single item type was successfully updated"
    click_on "Back"
  end

  test "destroying a Single item type" do
    visit single_item_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Single item type was successfully destroyed"
  end
end
