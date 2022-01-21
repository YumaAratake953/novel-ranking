require "test_helper"

class Api::NovelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_novel_index_url
    assert_response :success
  end
end
