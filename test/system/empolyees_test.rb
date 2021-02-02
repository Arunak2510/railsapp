require "application_system_test_case"

class EmpolyeesTest < ApplicationSystemTestCase
  setup do
    @empolyee = empolyees(:one)
  end

  test "visiting the index" do
    visit empolyees_url
    assert_selector "h1", text: "Empolyees"
  end

  test "creating a Empolyee" do
    visit empolyees_url
    click_on "New Empolyee"

    fill_in "Gender", with: @empolyee.Gender
    fill_in "Age", with: @empolyee.age
    fill_in "Designation", with: @empolyee.designation
    fill_in "First name", with: @empolyee.first_name
    fill_in "Last name", with: @empolyee.last_name
    click_on "Create Empolyee"

    assert_text "Empolyee was successfully created"
    click_on "Back"
  end

  test "updating a Empolyee" do
    visit empolyees_url
    click_on "Edit", match: :first

    fill_in "Gender", with: @empolyee.Gender
    fill_in "Age", with: @empolyee.age
    fill_in "Designation", with: @empolyee.designation
    fill_in "First name", with: @empolyee.first_name
    fill_in "Last name", with: @empolyee.last_name
    click_on "Update Empolyee"

    assert_text "Empolyee was successfully updated"
    click_on "Back"
  end

  test "destroying a Empolyee" do
    visit empolyees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empolyee was successfully destroyed"
  end
end
