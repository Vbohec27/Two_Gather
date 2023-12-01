# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Review.delete_all
puts "deleting reviews"
Post.delete_all
puts "deleting Posts"
User.delete_all
puts "creating Users"
user1 = User.create(email: "zlatko@admin.com", password: "123123", name: "Zlatko", zipcode: "1071 ET")
user2 = User.create(email: "anna@admin.com", password: "123123", name: "Anna", zipcode: "1021 GG")
user3 = User.create(email: "vincent@admin.com", password: "123123", name: "Vincent", zipcode: "1016 AA")
user4 = User.create(email: "user4@admin.com", password: "123123", name: "Robert", zipcode: "1015 GN")
user5 = User.create(email: "user5@admin.com", password: "123123", name: "Felipe", zipcode: "1017 RV")
user6 = User.create(email: "user6@admin.com", password: "123123", name: "Riru", zipcode: "1011 AK")
user7 = User.create(email: "user7@admin.com", password: "123123", name: "Rita", zipcode: "1016 DX")
user8 = User.create(email: "user8@admin.com", password: "123123", name: "Tom", zipcode: "1013 JW")
user9 = User.create(email: "user9@admin.com", password: "123123", name: "Sofia", zipcode: "1018 XA")
user10 = User.create(email: "user10@admin.com", password: "123123", name: "Tobias", zipcode: "1014 BV")
user11 = User.create(email: "user11@admin.com", password: "123123", name: "Nivea", zipcode: "1010 DK")
user12 = User.create(email: "user12@admin.com", password: "123123", name: "Elena", zipcode: "1016 HE")

puts "creating posts"
post1 =
Post.create!(
  title: "Need Quick Recipe Ideas",
  category: "cooking",
  description: "Running out of dinner inspiration after a long day. Any favorite easy recipes to share? Preferably something quick and delicious. Open to all cuisines!",
  user_id: user1.id,
  solved: false,
  asker: true
)
Post.create!(
  title: "Gardening Tips Needed",
  category: "gardening",
  description: "I'm a newbie gardener seeking advice on growing tomatoes in a small backyard. Any green thumbs out there willing to share tips on soil, watering, and sunlight?",
  user_id: user2.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Babysitter Cancellation",
  category: "other",
  description: "Urgently need a babysitter tonight! Last-minute cancellation, and we have plans. Our kids are well-behaved; just need someone trustworthy for a few hours. Compensation provided!",
  user_id: user3.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Bike Repair Help",
  category: "DIY",
  description: "Disaster struck on my commute! Flat tire on my bike, and I'm clueless about repairs. Anyone skilled in bike repairs willing to lend a hand or share tools?",
  user_id: user4.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Computer Glitch",
  category: "tech",
  description: "Tech trouble! My computer won't start, and I have work to finish. Any IT-savvy neighbors available for a quick troubleshooting session?",
  user_id: user5.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Artistic Advice Needed",
  category: "DIY",
  description: "Working on a DIY art project but feeling stuck. Any artists or creatives able to offer guidance on color schemes and techniques?",
  user_id: user6.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "DIY Plumbing Woes",
  category: "DIY",
  description: "Leaky faucet crisis! Anyone with plumbing skills able to lend a hand? A quick fix could save me a call to the plumber. Tools and expertise appreciated!",
  user_id: user7.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Moving Assistance",
  category: "household",
  description: "Help needed moving furniture to a new place. Will provide snacks, drinks, and good company! Just a few strong arms required.",
  user_id: user8.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Fitness Buddy Wanted",
  category: "fitness",
  description: "Looking for a workout partner for evening walks around the neighborhood. Let's motivate each other to stay fit and healthy!",
  user_id: user9.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Home Organization Tips",
  category: "cleaning",
  description: "Overwhelmed with clutter and seeking advice on effective organization. Share your best organization hacks, please! From closets to kitchen spaces.",
  user_id: user10.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Tech Recycling",
  category: "other",
  description: "Have old electronics to recycle. Anyone aware of nearby e-waste disposal options? Let's ensure our old gadgets are disposed of responsibly.",
  user_id: user11.id,
  solved: false,
  asker: true
)

Post.create!(
  title: "Painting Assistance",
  category: "DIY",
  description: "Painting a room but struggling with the edges. Any painting experts available to share tips or even lend a steady hand for a few hours?",
  user_id: user12.id,
  solved: false,
  asker: true
)
puts "creating posts"

Review.create!(user_id: user1.id, post_id: post1.id, asker_rating: 5, helper_rating: 5, asker_comment: "Great help!", helper_comment: "Great help!")
puts "Done creating"
