class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 10}, uniqueness: {case_sensitive: false}

    has_many :comments,
    foreign_key: "user_id",
    class_name: "Comment"

    has_many :likes_given,
    foreign_key: "liker_id",
    class_name: "Like"

    has_many :likes_received,
    foreign_key: "liked_user_id",
    class_name: "Like"

end
