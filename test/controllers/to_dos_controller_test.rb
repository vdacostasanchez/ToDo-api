require "test_helper"

class ToDosControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/to_dos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ToDo.count, data.length
  end

  test "create" do
    assert_difference "ToDo.count", 1 do
      post "/to_dos.json", params: { user_id: 1, title: "test", description: "this is a test", deadline: 20231212, completed: false }
      assert_response 200
    end
  end
end
