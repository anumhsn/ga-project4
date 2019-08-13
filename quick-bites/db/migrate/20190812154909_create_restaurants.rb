class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :rest_img
      t.string :food_img
      t.string :description
      t.string :rating
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
