require "test_helper"

class CategoryToDoControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/category_to_dos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal CategoryToDo.count, data.length
  end

end
