require 'test_helper'

class ArtclesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get artcles_new_url
    assert_response :success
  end

end
