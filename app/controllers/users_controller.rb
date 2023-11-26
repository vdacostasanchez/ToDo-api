class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.create(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    if @user.valid?
      render json: {message: "User successfully created"}
    else
      render json: {errors: @users.errors.full_messages }, status: 422
    end 

  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      password: params[:password] || @user.password
    )
    if @user.valid?
      render :show
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end

  end



  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User destroyed successfully" }
  end
end
