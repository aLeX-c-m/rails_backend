class Comment < ApplicationRecord

        belongs_to :user,
        foreign_key: "user_id",
        class_name: "User"
    
        has_many :likes_received,
        foreign_key: "liked_comment_id",
        class_name: "Like"

end
