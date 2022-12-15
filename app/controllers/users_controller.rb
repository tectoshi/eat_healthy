class UsersController < ApplicationController
  def show
    nutrient = Nutrient.find(1)
    
    @calorie = nutrient.calorie
    @protein = nutrient.protein
    @lipid = nutrient.lipid
    @carbohydrate = nutrient.carbohydrate
    @sugar = nutrient.sugar
    @fiber = nutrient.fiber
    @nutrient_sum = {name: @name, calorie: @calorie, protein: @protein, lipid: @lipid, carbohydrate: @carbohydrate, sugar: @sugar, fiber: @fiber, number: @num, user_id: @user_id}
  end
end
