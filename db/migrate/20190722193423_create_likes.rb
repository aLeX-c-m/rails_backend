class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.boolean :opinion
      t.integer :liked_user_id
      t.integer :liked_comment_id
      t.integer :liker_id
      t.timestamps
    end
  end
end
