class RemoveLikedCommentColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :liked_comment_id
  end
end
