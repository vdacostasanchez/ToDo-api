class ToDosController < ApplicationController
  def index
    @to_dos = ToDo.all
    render :index
  end
end
