class CreateRamen < ActiveRecord::Migration[6.1]
  def change
    create_table :ramen do |t|
      t.integer :customer_id
      t.string :restaurant_name
      t.integer :men_genre, default: 0
      t.integer :soup_genre, default: 0
      t.string :impression
      t.integer :ramen_point
      t.timestamps
    end
  end
end
