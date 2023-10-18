require "test_helper"

class MaintenancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maintenance = maintenances(:one)
  end

  test "should get index" do
    get maintenances_url
    assert_response :success
  end

  test "should get new" do
    get new_maintenance_url
    assert_response :success
  end

  test "should create maintenance" do
    assert_difference("Maintenance.count") do
      post maintenances_url, params: { maintenance: { city_id: @maintenance.city_id, datedoit: @maintenance.datedoit, dateman: @maintenance.dateman, emailtech: @maintenance.emailtech, engine_id: @maintenance.engine_id, maintenancetype_id: @maintenance.maintenancetype_id, typeequipment_id: @maintenance.typeequipment_id, usedmaterial_id: @maintenance.usedmaterial_id } }
    end

    assert_redirected_to maintenance_url(Maintenance.last)
  end

  test "should show maintenance" do
    get maintenance_url(@maintenance)
    assert_response :success
  end

  test "should get edit" do
    get edit_maintenance_url(@maintenance)
    assert_response :success
  end

  test "should update maintenance" do
    patch maintenance_url(@maintenance), params: { maintenance: { city_id: @maintenance.city_id, datedoit: @maintenance.datedoit, dateman: @maintenance.dateman, emailtech: @maintenance.emailtech, engine_id: @maintenance.engine_id, maintenancetype_id: @maintenance.maintenancetype_id, typeequipment_id: @maintenance.typeequipment_id, usedmaterial_id: @maintenance.usedmaterial_id } }
    assert_redirected_to maintenance_url(@maintenance)
  end

  test "should destroy maintenance" do
    assert_difference("Maintenance.count", -1) do
      delete maintenance_url(@maintenance)
    end

    assert_redirected_to maintenances_url
  end
end
