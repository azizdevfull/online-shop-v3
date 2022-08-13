require "application_system_test_case"

class IzusTest < ApplicationSystemTestCase
  setup do
    @izu = izus(:one)
  end

  test "visiting the index" do
    visit izus_url
    assert_selector "h1", text: "Izus"
  end

  test "should create izu" do
    visit izus_url
    click_on "New izu"

    fill_in "Description", with: @izu.description
    fill_in "Name", with: @izu.name
    click_on "Create Izu"

    assert_text "Izu was successfully created"
    click_on "Back"
  end

  test "should update Izu" do
    visit izu_url(@izu)
    click_on "Edit this izu", match: :first

    fill_in "Description", with: @izu.description
    fill_in "Name", with: @izu.name
    click_on "Update Izu"

    assert_text "Izu was successfully updated"
    click_on "Back"
  end

  test "should destroy Izu" do
    visit izu_url(@izu)
    click_on "Destroy this izu", match: :first

    assert_text "Izu was successfully destroyed"
  end
end
