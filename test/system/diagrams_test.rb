require "application_system_test_case"

class DiagramsTest < ApplicationSystemTestCase
  setup do
    @diagram = diagrams(:one)
  end

  test "visiting the index" do
    visit diagrams_url
    assert_selector "h1", text: "Diagrams"
  end

  test "creating a Diagram" do
    visit diagrams_url
    click_on "New Diagram"

    fill_in "Description", with: @diagram.description
    fill_in "Name", with: @diagram.name
    fill_in "Source code", with: @diagram.source_code
    fill_in "Type", with: @diagram.type
    click_on "Create Diagram"

    assert_text "Diagram was successfully created"
    click_on "Back"
  end

  test "updating a Diagram" do
    visit diagrams_url
    click_on "Edit", match: :first

    fill_in "Description", with: @diagram.description
    fill_in "Name", with: @diagram.name
    fill_in "Source code", with: @diagram.source_code
    fill_in "Type", with: @diagram.type
    click_on "Update Diagram"

    assert_text "Diagram was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagram" do
    visit diagrams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagram was successfully destroyed"
  end
end
