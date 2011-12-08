class AddUserIdToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :user_id, :integer
    add_foreign_key :posts, :users
    Post.delete_all
  end

  def self.down
    remove_foreign_key :posts, :users
    remove_column :posts, :user_id
  end
end
