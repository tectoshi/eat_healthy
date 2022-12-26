class CalendarsController < ApplicationController
  def index
    @nutrients = Nutrient.where(user_id: current_user)
  end
end
