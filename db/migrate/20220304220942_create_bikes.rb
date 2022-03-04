class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :make
      t.string :color

      t.timestamps
    end
  end
end
