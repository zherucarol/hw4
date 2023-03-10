class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string "title"
      t.text "description"
      t.date "posted_on"
      t.integer "place_id"
      t.integer "user_id"
      t.string :image
      
      t.timestamps
    end
  end
end
