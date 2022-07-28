class CreateLevelSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :level_settings do |t|
      t.integer :level
      t.integer :thresold

      t.timestamps
    end
  end
end
