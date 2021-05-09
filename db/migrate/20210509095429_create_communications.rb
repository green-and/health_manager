class CreateCommunications < ActiveRecord::Migration[6.0]
  def change
    create_table :communications do |t|
      t.integer :time
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
