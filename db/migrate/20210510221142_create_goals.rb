class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :wheatgoal_id
      t.integer :calory_goal
      t.integer :digital_goal
      t.integer :communication_goal
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
