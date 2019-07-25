class AddLikeableIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :likeable_id, :integer
  end
end
