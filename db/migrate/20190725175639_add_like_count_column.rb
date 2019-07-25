class AddLikeCountColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :like_count, :integer
  end
end
