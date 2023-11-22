class ToDosController < ApplicationController
  def index
    @to_dos = ToDo.all
    render :index
  end

  def create
    @to_do = ToDo.create(
      user_id: params[:user_id],
      title: params[:title],
      description: params[:description],
      deadline: params[:deadline],
      completed: params[:completed],
    )
    render :show
  end

  def show
    @to_do = ToDo.find_by(id: params[:id])
    render :show
  end

  def update
    @to_do = ToDo.find_by(id: params[:id])
    @to_do.update(
      user_id: params[:user_id] || @to_do.user_id,
      title: params[:title] || @to_do.title,
      description: params[:description] || @to_do.description,
      deadline: params[:deadline] || @to_do.deadline,
      completed: params[:completed] || @to_do.completed,
    )
    render :show
  end
end
