class NutrientsController < ApplicationController

  def index
  end

  def new
    @nutrient = Nutrient.new
  end

end
