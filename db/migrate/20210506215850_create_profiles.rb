class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :age
      t.integer :height
      t.integer :weight
      t.integer :wheatgoal_id
      t.integer :calory_goal
      t.integer :digital_goal
      t.integer :communication_goal
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
