require "test_helper"

class ToDosControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/to_dos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ToDo.count, data.length
  end
end
