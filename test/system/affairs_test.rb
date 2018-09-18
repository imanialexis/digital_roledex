require "application_system_test_case"

class AffairsTest < ApplicationSystemTestCase
  setup do
    @affair = affairs(:one)
  end

  test "visiting the index" do
    visit affairs_url
    assert_selector "h1", text: "Affairs"
  end

  test "creating a Affair" do
    visit affairs_url
    click_on "New Affair"

    fill_in "Date", with: @affair.date
    fill_in "Description", with: @affair.description
    fill_in "Location", with: @affair.location
    fill_in "Name", with: @affair.name
    fill_in "Website", with: @affair.website
    click_on "Create Affair"

    assert_text "Affair was successfully created"
    click_on "Back"
  end

  test "updating a Affair" do
    visit affairs_url
    click_on "Edit", match: :first

    fill_in "Date", with: @affair.date
    fill_in "Description", with: @affair.description
    fill_in "Location", with: @affair.location
    fill_in "Name", with: @affair.name
    fill_in "Website", with: @affair.website
    click_on "Update Affair"

    assert_text "Affair was successfully updated"
    click_on "Back"
  end

  test "destroying a Affair" do
    visit affairs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Affair was successfully destroyed"
  end
end
