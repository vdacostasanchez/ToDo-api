require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/users.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal User.count, data.length
  end

  test "create" do
    assert_difference "User.count", 1 do
      post "/users.json", params: { name: "lake", email: "lake@test.com", password: "password" }
      assert_response 200
    end
  end

  test "update" do
    user = User.first
    patch "/users/#{user.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end


  test "show" do
    get "/users/#{User.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "email", "created_at", "updated_at"], data.keys
  end

  test "destroy" do
    assert_difference "User.count", -1 do
      delete "/users/#{User.first.id}.json"
      assert_response 200
    end
  end
end