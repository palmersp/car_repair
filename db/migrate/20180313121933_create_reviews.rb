class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :appointments, index: true, unique: true, foreign_key: true
      t.integer :rating, null: false
      t.timestamps
    end
  end
end
