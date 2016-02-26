# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)Tweet.destroy.

if User.destroy_all && Agency.destroy_all
  User.create({name: "Dan", email: "dan@gmail.com", password: "1234"})
  Agency.create({name: "Vitamin Talent", website: "http://vitamintalent.com", headquarters: "Boston,MA", focus: "Creative Staffing",  logo: "1-logo.png", about:"Vitamin T connects amazing digital creative talent with awesome mid-sized companies and ad agencies - and we guarantee our matches 110%."})
  Agency.first.reviews.create({rating: 5, title: "This is a review", body: "The body for the review!", user: User.first})
end
