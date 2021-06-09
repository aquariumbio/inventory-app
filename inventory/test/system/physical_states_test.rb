require "application_system_test_case"

class PhysicalStatesTest < ApplicationSystemTestCase
  setup do
    @physical_state = physical_states(:one)
  end

  test "visiting the index" do
    visit physical_states_url
    assert_selector "h1", text: "Physical States"
  end

  test "creating a Physical state" do
    visit physical_states_url
    click_on "New Physical State"

    fill_in "Description", with: @physical_state.description
    fill_in "Name", with: @physical_state.name
    click_on "Create Physical state"

    assert_text "Physical state was successfully created"
    click_on "Back"
  end

  test "updating a Physical state" do
    visit physical_states_url
    click_on "Edit", match: :first

    fill_in "Description", with: @physical_state.description
    fill_in "Name", with: @physical_state.name
    click_on "Update Physical state"

    assert_text "Physical state was successfully updated"
    click_on "Back"
  end

  test "destroying a Physical state" do
    visit physical_states_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physical state was successfully destroyed"
  end
end
