require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get RSVP" do
    get pages_RSVP_url
    assert_response :success
  end

  test "should get Hochzeit" do
    get pages_Hochzeit_url
    assert_response :success
  end

  test "should get Wildland" do
    get pages_Wildland_url
    assert_response :success
  end

  test "should get Gruppenflittern" do
    get pages_Gruppenflittern_url
    assert_response :success
  end

  test "should get Geschenke" do
    get pages_Geschenke_url
    assert_response :success
  end

  test "should get Kontakt" do
    get pages_Kontakt_url
    assert_response :success
  end

end
