require 'test_helper'

class AudiobooksControllerTest < ActionDispatch::IntegrationTest
  test "should get listen" do
    get audiobooks_listen_url
    assert_response :success
  end

end
