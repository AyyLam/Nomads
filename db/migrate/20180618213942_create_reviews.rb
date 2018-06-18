class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :truck_id
      t.integer :rating
      t.string :content
    end
  end
end
