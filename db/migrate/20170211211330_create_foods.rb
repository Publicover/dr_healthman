class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calorie_count
      t.references :entry, foreign_key: true

      t.timestamps
    end
  end
end
