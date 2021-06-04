require "application_system_test_case"

class SampleCompositionTypesTest < ApplicationSystemTestCase
  setup do
    @sample_composition_type = sample_composition_types(:one)
  end

  test "visiting the index" do
    visit sample_composition_types_url
    assert_selector "h1", text: "Sample Composition Types"
  end

  test "creating a Sample composition type" do
    visit sample_composition_types_url
    click_on "New Sample Composition Type"

    fill_in "Description", with: @sample_composition_type.description
    fill_in "Name", with: @sample_composition_type.name
    fill_in "Recipe", with: @sample_composition_type.recipe
    click_on "Create Sample composition type"

    assert_text "Sample composition type was successfully created"
    click_on "Back"
  end

  test "updating a Sample composition type" do
    visit sample_composition_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sample_composition_type.description
    fill_in "Name", with: @sample_composition_type.name
    fill_in "Recipe", with: @sample_composition_type.recipe
    click_on "Update Sample composition type"

    assert_text "Sample composition type was successfully updated"
    click_on "Back"
  end

  test "destroying a Sample composition type" do
    visit sample_composition_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sample composition type was successfully destroyed"
  end
end
