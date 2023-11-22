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
end
