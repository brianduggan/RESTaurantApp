class FoodsController < ApplicationController

  before_action :authenticate!

  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    Food.create( food_params )
    redirect_to foods_path
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    food = Food.find(params[:id])
    food.update( food_params )
    redirect_to foods_path
  end

  def destroy
    food = Food.find(params[:id])
    food.destroy
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :description, :price)
  end

end
