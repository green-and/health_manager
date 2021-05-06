class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :age
      t.integer :height
      t.integer :weight
      t.timestamps
    end
  end
end
