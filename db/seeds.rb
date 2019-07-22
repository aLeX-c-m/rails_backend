# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Like.destroy_all

users = User.create!([{ name: 'Alex' }, { name: 'Trent' }, { name: 'John' }, { name: 'Sarah' }])   
comments = Comment.create!([{ body: 'ruby enviro issues..', user_id: 1 }, { body: 'ruby is amazing tho', user_id: 2 }, { body: 'rbenv !!', user_id: 3 }, { body: 'yikes', user_id: 4 }, { body: 'ya...', user_id: 1 }])   
likes = Like.create!([{ opinion: true, liked_user_id: nil, liked_comment_id: 1, liker_id: 2 }, { opinion: true, liked_user_id: 2, liked_comment_id: nil, liker_id: 3 }, { opinion: true, liked_user_id: nil, liked_comment_id: 1, liker_id: 3 }, { opinion: false, liked_user_id: nil, liked_comment_id: 1, liker_id: 2}, { opinion: true, liked_user_id: 3, liked_comment_id: nil, liker_id: 2 }])   
