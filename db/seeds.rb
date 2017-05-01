# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do |n|
    email = Faker::Internet.email
    password = "password"
    User.create!(email: email,
        password: password,
        password_confirmation: password,
        )
end

100.times do |n|
    content = Faker::Beer.name
    title = "My favorite beer #{n}"
    userid = Faker::Number.between(2,101)
    Blog.create!(user_id: userid,
	title: title,
        content: content
        )
end
