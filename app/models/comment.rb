class Comment < ApplicationRecord

        belongs_to :user,
        foreign_key: "user_id",
        class_name: "User"
    
        has_many :likes_received,
        as: :imageable

end
