require 'test_helper'

class Tutorial5ControllerTest < ActionDispatch::IntegrationTest
  test "should get file" do
    get tutorial5_file_url
    assert_response :success
  end

end
