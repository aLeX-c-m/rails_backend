# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Like.destroy_all

users = User.create!([{ name: 'Alex', like_count: 0 }, { name: 'Trent', like_count: 1 }, { name: 'John', like_count: 1 }, { name: 'Sarah', like_count: 0 }])   
comments = Comment.create!([{ body: 'ruby enviro issues..', user_id: 1, like_count: 3 }, { body: 'ruby is amazing tho', user_id: 2, like_count: 0 }, { body: 'rbenv !!', user_id: 3, like_count: 0 }, { body: 'yikes', user_id: 4, like_count: 0}, { body: 'ya...', user_id: 1, like_count: 0 }])   
likes = Like.create!([{ opinion: true, likeable_id: 1, likeable_type: 'comment', liker_id: 2 }, { opinion: true, likeable_id: 2, likeable_type: 'user', liker_id: 3 }, { opinion: true, likeable_id: 1, likeable_type: 'comment', liker_id: 3 }, { opinion: false, likeable_id: 1, likeable_type: 'comment', liker_id: 2}, { opinion: true, likeable_id: 3, likeable_type: 'user', liker_id: 2 }])   
