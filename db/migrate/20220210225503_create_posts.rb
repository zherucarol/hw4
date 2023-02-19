class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string "title"
      t.text "description"
      t.date "posted_on"
      t.integer "place_id"
      
      t.timestamps
    end
  end
end
