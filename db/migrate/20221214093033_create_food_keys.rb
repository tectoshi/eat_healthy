class CreateFoodKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :food_keys do |t|
      t.integer :food_id  , null: false
      t.integer :number_id, null: false
      t.timestamps
    end
  end
end
