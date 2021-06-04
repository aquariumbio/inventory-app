require "application_system_test_case"

class SampleCompositionsTest < ApplicationSystemTestCase
  setup do
    @sample_composition = sample_compositions(:one)
  end

  test "visiting the index" do
    visit sample_compositions_url
    assert_selector "h1", text: "Sample Compositions"
  end

  test "creating a Sample composition" do
    visit sample_compositions_url
    click_on "New Sample Composition"

    fill_in "Component sample", with: @sample_composition.component_sample_id
    fill_in "Composite sample", with: @sample_composition.composite_sample_id
    fill_in "Quantity", with: @sample_composition.quantity
    fill_in "Sample composition type", with: @sample_composition.sample_composition_type_id
    click_on "Create Sample composition"

    assert_text "Sample composition was successfully created"
    click_on "Back"
  end

  test "updating a Sample composition" do
    visit sample_compositions_url
    click_on "Edit", match: :first

    fill_in "Component sample", with: @sample_composition.component_sample_id
    fill_in "Composite sample", with: @sample_composition.composite_sample_id
    fill_in "Quantity", with: @sample_composition.quantity
    fill_in "Sample composition type", with: @sample_composition.sample_composition_type_id
    click_on "Update Sample composition"

    assert_text "Sample composition was successfully updated"
    click_on "Back"
  end

  test "destroying a Sample composition" do
    visit sample_compositions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sample composition was successfully destroyed"
  end
end
