class CategoriesController < ApplicationController

  def index
    @categories = Category.all 
    render :index
  end

  def create
    @category = Category.create(
      name: params[:name]
    )
    if @category.valid?
      render :show
    else 
     render json: {errors: @categories.errors.full_messages}, status: 422
    end
  end


  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.update(
    name: params[:name] || @category.name 
    )
    if @category.valid?
      render :show
    else
      render json: {errors: @categories.errors.full_messages}, status: 422
    end

  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: {message: "Category successfully removed" }
  end




end
