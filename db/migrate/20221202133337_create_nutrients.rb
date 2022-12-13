class CreateNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrients do |t|
      t.string     :calorie,      null: false
      t.string     :protein,      null: false
      t.string     :lipid,        null: false
      t.integer    :carbohydrate, null: false
      t.integer    :sugar,        null: false
      t.integer    :fiber,        null: false
      t.integer    :number,       null: false
      t.references :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
