class First < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '牛肉 (100g)', calorie: 273, protein: 17.4, lipid: 23.7, carbohydrate: 0.4, sugar: 0.1, fiber: 0},
    { id: 3, name: '鶏モモ (100g)', calorie:220, protein:26.3, lipid:13.9, carbohydrate:0, sugar:0, fiber:0},
    { id: 4, name: '鶏ムネ (100g)', calorie: 215, protein: 34.7, lipid: 9.1, carbohydrate:0.1 , sugar:0, fiber:0},

  ]
end