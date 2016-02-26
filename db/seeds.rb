# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)Tweet.destroy.

if User.destroy_all && Agency.destroy_all
  User.create({name: "Dan", email: "dan@gmail.net", password: "1234"})
  User.create({name: "Lisa", email: "lisa@gmail.net", password: "5678"})



  Agency.create({name: "Vitamin Talent", website: "http://vitamintalent.com", headquarters: "Boston,MA", focus: "Creative Staffing",  logo: "1-logo.png", about:"Vitamin T connects amazing digital creative talent with awesome mid-sized companies and ad agencies - and we guarantee our matches 110%."})
  Agency.create({name: "Creative Circle", website: "https://www.creativecircle.com/", headquarters: "Atlanta, Georgia", focus: "Creative Staffing", logo: "2-logo.png", about:"Creative Circle is a specialized staffing agency that connects innovative advertising, marketing, creative, digital, and interactive professionals with companies seeking talent on a full-time or freelance basis."})


  @agency1 = Agency.first
  @agency2 = Agency.second


  @agency1.reviews.create({rating: 5, title: "Janet is great!", body: "I got several job offers.  Janet prepped me so well for the interviews", user: @user1})
  @agency1.reviews.create({rating: 4, title: "Great for devs", body: "This is the agency for devs - at least in LA"})
  @agency1.reviews.create({rating: 3, title: "OK", body: "I had some interviews bu nothing reall happened"})

  @agency2.reviews.create({rating: 4, title: "Awesome", body: "The team at the downtown office is the best!"})
  @agency2.reviews.create({rating: 3, title: "Good, not great", body: "I went on many interviews, but not relevant companies"})
  @agency2.reviews.create({rating: 1, title: "Avoid!", body: "This agency didn't help me at all.  I only got a job through my own network.", user: @user1})
end
