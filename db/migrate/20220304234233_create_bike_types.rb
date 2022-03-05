class CreateBikeTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :bike_types do |t|
      t.string :catagory
      t.integer :price
      t.belongs_to :bike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
