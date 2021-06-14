require "application_system_test_case"

class SingleItemTypesPhysicalStatesTest < ApplicationSystemTestCase
  setup do
    @single_item_types_physical_state = single_item_types_physical_states(:one)
  end

  test "visiting the index" do
    visit single_item_types_physical_states_url
    assert_selector "h1", text: "Single Item Types Physical States"
  end

  test "creating a Single item types physical state" do
    visit single_item_types_physical_states_url
    click_on "New Single Item Types Physical State"

    fill_in "Physical state", with: @single_item_types_physical_state.physical_state_id
    fill_in "Single item type", with: @single_item_types_physical_state.single_item_type_id
    click_on "Create Single item types physical state"

    assert_text "Single item types physical state was successfully created"
    click_on "Back"
  end

  test "updating a Single item types physical state" do
    visit single_item_types_physical_states_url
    click_on "Edit", match: :first

    fill_in "Physical state", with: @single_item_types_physical_state.physical_state_id
    fill_in "Single item type", with: @single_item_types_physical_state.single_item_type_id
    click_on "Update Single item types physical state"

    assert_text "Single item types physical state was successfully updated"
    click_on "Back"
  end

  test "destroying a Single item types physical state" do
    visit single_item_types_physical_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Single item types physical state was successfully destroyed"
  end
end
