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
    if @to_do.save
      render :show
    else
      render json: { error: @to_do.errors.full_messages }, status: 422
    end
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
    if @to_do.save
      render :show
    else
      render json: { error: errors.full_messages }, status: 422
    end
  end

  def destroy
    @to_do = ToDo.find_by(id: params[:id])
    @to_do.destroy
    render json: { message: "To Do was destroyed" }
  end
end
