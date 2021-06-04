require "application_system_test_case"

class SingleItemsTest < ApplicationSystemTestCase
  setup do
    @single_item = single_items(:one)
  end

  test "visiting the index" do
    visit single_items_url
    assert_selector "h1", text: "Single Items"
  end

  test "creating a Single item" do
    visit single_items_url
    click_on "New Single Item"

    fill_in "Sample", with: @single_item.sample_id
    click_on "Create Single item"

    assert_text "Single item was successfully created"
    click_on "Back"
  end

  test "updating a Single item" do
    visit single_items_url
    click_on "Edit", match: :first

    fill_in "Sample", with: @single_item.sample_id
    click_on "Update Single item"

    assert_text "Single item was successfully updated"
    click_on "Back"
  end

  test "destroying a Single item" do
    visit single_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Single item was successfully destroyed"
  end
end
