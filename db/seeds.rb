
Restaurant.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
puts "deleted data"


User.create!(email: "test@gmail.com", password: "123123")

10.times do
  User.create!(email: Faker::Internet.email, password: "123123")
end
puts "added #{User.count} users"

User.all.each do |user|
  rand(1..3).times do
    Restaurant.create!(name: Faker::Hipster.word, user: user)
  end
end

puts "added #{Restaurant.count} restaurants"
