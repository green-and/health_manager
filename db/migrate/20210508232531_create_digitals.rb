class CreateDigitals < ActiveRecord::Migration[6.0]
  def change
    create_table :digitals do |t|
      t.integer :time
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
