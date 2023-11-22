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

end
