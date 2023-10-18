require "test_helper"

class TeamCompsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get team_comps_index_url
    assert_response :success
  end

  test "should get show" do
    get team_comps_show_url
    assert_response :success
  end
end
