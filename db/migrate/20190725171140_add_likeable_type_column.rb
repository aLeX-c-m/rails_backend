class AddLikeableTypeColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :likeable_type, :string, polymorphic: true, index: true
  end
end
