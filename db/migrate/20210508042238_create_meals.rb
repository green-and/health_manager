class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :menu
      t.integer :wheat_id
      t.integer :calory
      t.timestamps
    end
  end
end
