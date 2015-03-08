# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  user = User.create!(full_name: Faker::Name.name,
                    profile_name: Faker::Internet.user_name,
                    avatar: Faker::Avatar.image,
                    bio: Faker::Lorem.paragraph,
                    email: Faker::Internet.email,
                    password: Faker::Internet.password(8))
  10.times do
    user.posts.create(caption: Faker::Lorem.sentence,
                      picture: Faker::Avatar.image)
  end
end
