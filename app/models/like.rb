class Like < ApplicationRecord

    belongs_to :user,
    foreign_key: "liker_id",
    class_name: "User"

    belongs_to :imageable,
    polymorphic: true
end
