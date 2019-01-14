require 'test_helper'

class MarksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marks_index_url
    assert_response :success
  end

  test "should get new" do
    get marks_new_url
    assert_response :success
  end

end
