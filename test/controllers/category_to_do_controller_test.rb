require "test_helper"

class CategoryToDoControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/category_to_dos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal CategoryToDo.count, data.length
  end

  test "create" do
    assert_difference "CategoryToDo.count", 1 do
      post "/category_to_dos.json", params: { category_id: 1, to_do_id: 1 }
      assert_response 200
    end
  end

  test "show" do
    get "/category_to_dos/#{CategoryToDo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["category_id", "to_do_id"], data.keys
  end

  test "update" do
    category_to_do = CategoryToDo.first
    patch "/category_to_dos/#{category_to_do.id}.json", params: { to_do_id: 1 }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal 1, data["to_do_id"]
  end

  test "destroy" do
    assert_difference "CategoryToDo.count", -1 do
      delete "/category_to_dos/#{CategoryToDo.first.id}.json"
      assert_response 200
    end
  end
end
