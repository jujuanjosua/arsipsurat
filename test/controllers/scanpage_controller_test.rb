require 'test_helper'

class ScanpageControllerTest < ActionDispatch::IntegrationTest
  test "should get scan" do
    get scanpage_scan_url
    assert_response :success
  end

end
