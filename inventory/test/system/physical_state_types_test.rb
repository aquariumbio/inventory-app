require "application_system_test_case"

class PhysicalStateTypesTest < ApplicationSystemTestCase
  setup do
    @physical_state_type = physical_state_types(:one)
  end

  test "visiting the index" do
    visit physical_state_types_url
    assert_selector "h1", text: "Physical State Types"
  end

  test "creating a Physical state type" do
    visit physical_state_types_url
    click_on "New Physical State Type"

    fill_in "Name", with: @physical_state_type.name
    click_on "Create Physical state type"

    assert_text "Physical state type was successfully created"
    click_on "Back"
  end

  test "updating a Physical state type" do
    visit physical_state_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @physical_state_type.name
    click_on "Update Physical state type"

    assert_text "Physical state type was successfully updated"
    click_on "Back"
  end

  test "destroying a Physical state type" do
    visit physical_state_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physical state type was successfully destroyed"
  end
end
