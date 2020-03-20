require "application_system_test_case"

class AeroplanesTest < ApplicationSystemTestCase
  setup do
    @aeroplane = aeroplanes(:one)
  end

  test "visiting the index" do
    visit aeroplanes_url
    assert_selector "h1", text: "Aeroplanes"
  end

  test "creating a Aeroplane" do
    visit aeroplanes_url
    click_on "New Aeroplane"

    fill_in "B col", with: @aeroplane.b_col
    fill_in "B fare", with: @aeroplane.b_fare
    fill_in "B row", with: @aeroplane.b_row
    fill_in "E col", with: @aeroplane.e_col
    fill_in "E fare", with: @aeroplane.e_fare
    fill_in "E row", with: @aeroplane.e_row
    fill_in "F col", with: @aeroplane.f_col
    fill_in "F fare", with: @aeroplane.f_fare
    fill_in "F row", with: @aeroplane.f_row
    fill_in "Model", with: @aeroplane.model
    fill_in "Name", with: @aeroplane.name
    click_on "Create Aeroplane"

    assert_text "Aeroplane was successfully created"
    click_on "Back"
  end

  test "updating a Aeroplane" do
    visit aeroplanes_url
    click_on "Edit", match: :first

    fill_in "B col", with: @aeroplane.b_col
    fill_in "B fare", with: @aeroplane.b_fare
    fill_in "B row", with: @aeroplane.b_row
    fill_in "E col", with: @aeroplane.e_col
    fill_in "E fare", with: @aeroplane.e_fare
    fill_in "E row", with: @aeroplane.e_row
    fill_in "F col", with: @aeroplane.f_col
    fill_in "F fare", with: @aeroplane.f_fare
    fill_in "F row", with: @aeroplane.f_row
    fill_in "Model", with: @aeroplane.model
    fill_in "Name", with: @aeroplane.name
    click_on "Update Aeroplane"

    assert_text "Aeroplane was successfully updated"
    click_on "Back"
  end

  test "destroying a Aeroplane" do
    visit aeroplanes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aeroplane was successfully destroyed"
  end
end
