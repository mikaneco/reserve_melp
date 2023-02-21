require "test_helper"

class Management::ClinicsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get management_clinics_show_url
    assert_response :success
  end

  test "should get edit" do
    get management_clinics_edit_url
    assert_response :success
  end
end
