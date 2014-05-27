class CreateSavedPosts < ActiveRecord::Migration
  def change
    create_table :saved_posts do |t|
      t.string :title
      t.string :url
      t.integer :user_id
      t.timestamps
    end
    add_index :saved_posts, :user_id
  end
end
