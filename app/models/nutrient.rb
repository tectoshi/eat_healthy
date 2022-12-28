class Nutrient < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :calorie
    validates :protein
    validates :lipid
    validates :carbohydrate
    validates :sugar
    validates :fiber
    validates :number
    validates :start_time
  end

  belongs_to :user
end
