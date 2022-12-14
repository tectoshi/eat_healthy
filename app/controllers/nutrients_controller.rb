class NutrientsController < ApplicationController

  def index
  end

  def new
    @nutrient = Nutrient.new
  end

  def create
    @nutrient = Nutrient.new(input_sum)
    if @nutrient.save
      redirect_to nutrient_path(@nutrient) 
    else
      render :new
    end    
  end

  def show
    
  end


  private

  def input_sum
    food_input = params.require(:nutrient).permit(:food_id, :number_id).merge(user_id: current_user.id)
    user_id = food_input[:user_id]
    num = Number.find(food_input[:number_id]).name
    nutrient = First.find(food_input[:food_id])
    name = nutrient.name
    calorie = nutrient.calorie * num
    protein = nutrient.protein * num
    lipid = nutrient.lipid * num
    carbohydrate = nutrient.carbohydrate * num
    sugar = nutrient.sugar * num
    fiber = nutrient.fiber * num
    nutrient_sum = {name: name, calorie: calorie, protein: protein, lipid: lipid, carbohydrate: carbohydrate, sugar: sugar, fiber: fiber, number: num, user_id: user_id}
  end
  
end
