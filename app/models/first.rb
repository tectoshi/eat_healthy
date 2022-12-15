class First < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '牛肉', calorie: 273, protein: 17.4, lipid: 23.7, carbohydrate: 0.4, sugar: 0.1, fiber: 0},
    #{ id: 3, name: '', calorie:, protein:, lipid:, carbohydrate:, sugar:, fiber:}
  ]
end