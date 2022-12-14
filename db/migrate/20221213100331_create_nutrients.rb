class CreateNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrients do |t|
      t.string     :calorie,      null: false
      t.string     :protein,      null: false
      t.string     :lipid,        null: false
      t.string     :carbohydrate, null: false
      t.string     :sugar,        null: false
      t.string     :fiber,        null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
