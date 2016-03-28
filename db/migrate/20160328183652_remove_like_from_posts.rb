class RemoveLikeFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :like, :string
  end
end
