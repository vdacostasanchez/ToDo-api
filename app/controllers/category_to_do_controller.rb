class CategoryToDoController < ApplicationController
  def index
    @category_to_dos = CategoryToDo.all
    render template: "category_to_dos/index"
  end

  def create
    @category_to_do = CategoryToDo.create(
      category_id: params[:category_id],
      to_do_id: params[:to_do_id],
    )
    render template: "category_to_dos/show"
  end

  def show
    @category_to_do = CategoryToDo.find_by(id: params[:id])
    render template: "category_to_dos/show"
  end

  def update
    @category_to_do = CategoryToDo.find_by(id: params[:id])
    @category_to_do.update(
      category_id: params[:category_id] || @category_to_do.category_id,
      to_do_id: params[:to_do_id] || @category_to_do.to_do_id,
    )
    render template: "category_to_dos/show"
  end
end