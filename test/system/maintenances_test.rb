require "application_system_test_case"

class MaintenancesTest < ApplicationSystemTestCase
  setup do
    @maintenance = maintenances(:one)
  end

  test "visiting the index" do
    visit maintenances_url
    assert_selector "h1", text: "Maintenances"
  end

  test "should create maintenance" do
    visit maintenances_url
    click_on "New maintenance"

    fill_in "City", with: @maintenance.city_id
    fill_in "Datedoit", with: @maintenance.datedoit
    fill_in "Dateman", with: @maintenance.dateman
    fill_in "Emailtech", with: @maintenance.emailtech
    fill_in "Engine", with: @maintenance.engine_id
    fill_in "Maintenancetype", with: @maintenance.maintenancetype_id
    fill_in "Typeequipment", with: @maintenance.typeequipment_id
    fill_in "Usedmaterial", with: @maintenance.usedmaterial_id
    click_on "Create Maintenance"

    assert_text "Maintenance was successfully created"
    click_on "Back"
  end

  test "should update Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Edit this maintenance", match: :first

    fill_in "City", with: @maintenance.city_id
    fill_in "Datedoit", with: @maintenance.datedoit
    fill_in "Dateman", with: @maintenance.dateman
    fill_in "Emailtech", with: @maintenance.emailtech
    fill_in "Engine", with: @maintenance.engine_id
    fill_in "Maintenancetype", with: @maintenance.maintenancetype_id
    fill_in "Typeequipment", with: @maintenance.typeequipment_id
    fill_in "Usedmaterial", with: @maintenance.usedmaterial_id
    click_on "Update Maintenance"

    assert_text "Maintenance was successfully updated"
    click_on "Back"
  end

  test "should destroy Maintenance" do
    visit maintenance_url(@maintenance)
    click_on "Destroy this maintenance", match: :first

    assert_text "Maintenance was successfully destroyed"
  end
end
