require "application_system_test_case"

class PovsTest < ApplicationSystemTestCase
  setup do
    @pov = povs(:one)
  end

  test "visiting the index" do
    visit povs_url
    assert_selector "h1", text: "Povs"
  end

  test "creating a Pov" do
    visit povs_url
    click_on "New Pov"

    fill_in "Author", with: @pov.author
    fill_in "Publication year", with: @pov.publication_year
    fill_in "Title", with: @pov.title
    click_on "Create Pov"

    assert_text "Pov was successfully created"
    click_on "Back"
  end

  test "updating a Pov" do
    visit povs_url
    click_on "Edit", match: :first

    fill_in "Author", with: @pov.author
    fill_in "Publication year", with: @pov.publication_year
    fill_in "Title", with: @pov.title
    click_on "Update Pov"

    assert_text "Pov was successfully updated"
    click_on "Back"
  end

  test "destroying a Pov" do
    visit povs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pov was successfully destroyed"
  end
end
