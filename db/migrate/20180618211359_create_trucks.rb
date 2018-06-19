class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :specialty
      t.integer :neighborhood_id

      t.timestamps null: false
    end
  end
end
