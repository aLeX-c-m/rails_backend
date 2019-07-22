class Like < ApplicationRecord

    belongs_to: :user,
    foreign_key: "liker_id",
    class_name: "User"

    belongs_to: :user,
    foreign_key: "liked_user_id",
    class_name: "User",
    optional: true

    belongs_to: :comment,
    foreign_key: "liked_comment_id",
    class_name: "Comment",
    optional: true
end
