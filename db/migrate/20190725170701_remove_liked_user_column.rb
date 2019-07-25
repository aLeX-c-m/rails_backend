class RemoveLikedUserColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :liked_user_id
  end
end
