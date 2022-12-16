class UsersController < ApplicationController
  def show
    week_nutrients
    @nutrient_sum = {calorie: @calorie, protein: @protein, lipid: @lipid, carbohydrate: @carbohydrate, sugar: @sugar, fiber: @fiber}
  end

  private
  def week_nutrients
    nutrients = Nutrient.where(created_at: this_week).where(user_id: current_user.id)
    @calorie = 0
    @protein = 0
    @lipid = 0
    @carbohydrate = 0
    @sugar = 0
    @fiber = 0
    nutrients.each do |nutrient|
      @calorie += nutrient.calorie
      @protein += nutrient.protein
      @lipid += nutrient.lipid
      @carbohydrate += nutrient.carbohydrate
      @sugar += nutrient.sugar
      @fiber += nutrient.fiber
    end
  end

  def this_week
    today = Date.today
    day_of_the_week = today.wday
    # 曜日毎に月曜と日曜の日付を取得
    case day_of_the_week
      # 日曜日
      when 0 then
        from = (today - 6.day).at_beginning_of_day
        to = today.at_end_of_day
      # 月曜日
      when 1 then
        from = today.at_beginning_of_day
        to = (today + 6.day).at_end_of_day
      # 火曜日
      when 2 then
        from = (today - 1.day).at_beginning_of_day
        to = (today + 5.day).at_end_of_day
      # 水曜日
      when 3 then
        from = (today - 2.day).at_beginning_of_day
        to = (today + 4.day).at_end_of_day
      # 木曜日
      when 4 then
        from = (today - 3.day).at_beginning_of_day
        to = (today + 3.day).at_end_of_day
      # 金曜日
      when 5 then
        from = (today - 4.day).at_beginning_of_day
        to = (today + 2.day).at_end_of_day
      # 土曜日
      when 6 then
        from = (today - 5.day).at_beginning_of_day
        to = (today + 1.day).at_end_of_day
    end
    # 返り値をfrom..toの形に
    from..to
  end
  
end
