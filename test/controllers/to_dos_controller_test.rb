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
  
  test "show" do
    get "/to_dos/#{ToDo.first.id}.json"
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "title", "description", "deadline", "completed"], data.keys
  end
  
  test "update" do
    to_do = ToDo.first
    patch "/to_dos/#{to_do.id}.json", params: { title: "Updated title" }
    assert_response 200
    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end
 
  test "destroy" do
    assert_difference "ToDo.count", -1 do
      delete "/to_dos/#{ToDo.first.id}.json"
      assert_response 200
    end
  end
  
end









