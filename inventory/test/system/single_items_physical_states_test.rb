require "application_system_test_case"

class SingleItemsPhysicalStatesTest < ApplicationSystemTestCase
  setup do
    @single_items_physical_state = single_items_physical_states(:one)
  end

  test "visiting the index" do
    visit single_items_physical_states_url
    assert_selector "h1", text: "Single Items Physical States"
  end

  test "creating a Single items physical state" do
    visit single_items_physical_states_url
    click_on "New Single Items Physical State"

    fill_in "Item", with: @single_items_physical_state.item_id
    fill_in "Physical state", with: @single_items_physical_state.physical_state_id
    click_on "Create Single items physical state"

    assert_text "Single items physical state was successfully created"
    click_on "Back"
  end

  test "updating a Single items physical state" do
    visit single_items_physical_states_url
    click_on "Edit", match: :first

    fill_in "Item", with: @single_items_physical_state.item_id
    fill_in "Physical state", with: @single_items_physical_state.physical_state_id
    click_on "Update Single items physical state"

    assert_text "Single items physical state was successfully updated"
    click_on "Back"
  end

  test "destroying a Single items physical state" do
    visit single_items_physical_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Single items physical state was successfully destroyed"
  end
end
