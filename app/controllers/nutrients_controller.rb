class NutrientsController < ApplicationController

  def index
  end

  def new
    @nutrient = Nutrient.new
  end

  def create
    binding.pry
    @nutrient = First.find(food_id)
    Nutrient.create(@nutrient)
  end


  private

  def food_id
    food_id = params[:nutrient].require(:food)
  end

  def number
    food_id = params(:nutrient).require(:number)
  end
end
