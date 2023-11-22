class CategoryToDoController < ApplicationController
    def index
        @category_to_dos = CategoryToDo.all
        render template: "category_to_dos/index"
      end
end
