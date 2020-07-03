# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Lair.destroy_all
User.destroy_all

puts "Creating Users & Lairs..."


lex_luthor = User.create(
  title: 'Lex Luthor',
  email: 'test@test.com',
  password: 'password',
  profile: "Metropolis may be my home base, but my business takes me around the world.
            If you're a regular customer of LexCorp, message me for special benefits."
)
dr_no = User.create(
  title: 'Dr. No',
  email: 'test1@test.com',
  password: 'password',
  profile: 'The unwanted child of a German missionary and a Chinese girl of a good family.
            Book my island and see what comforts $10,000,000 of Tong gold bullion can buy.'
)
raoul_silva = User.create(
  title: 'Raoul Silva',
  email: 'test2@test.com',
  password: 'password',
  profile: "I used to be based in Hong Kong and Asia, but I'm looking to return
            to England and Scotland in the coming months."
)
doc_ock = User.create(
  title: 'Doc Ock',
  email: 'test3@test.com',
  password: 'password',
  profile: 'Nuclear physicist, atomic research consultant, inventor and lecturer.
            My home base is New York but I have contacts and contracts around the world.'
)
justin_hammer = User.create(
  title: 'Justin Hammer',
  email: 'test4@test.com',
  password: 'password',
  profile: "Whether you're looking for labs with the latest tech, floating hideouts in 
            international waters, or d-day bunkers, I've got it all."
)


Lair.create(
  name: 'Abandoned Museum in the Heart of Town',
  description: "Shake hands with royalty to enter this hidden HQ. This extensively-renovated
                museum base comes fully equipped with wall-to-wall CCTV cameras, for all your
                superhero stalking and surveillance needs. Also houses a hero statue collection.",
  address: 'Entrance next to the Julius Caesar Statue, Metropolis',
  price_per_night: 4000.0,
  user: lex_luthor
)
Lair.create(
  name: 'Luxury Underground Station',
  description: 'Enjoy palatial comfort and old-time grandeur in this enviably luxurious,
                exclusive hideout in the heart of New York. Not many can enjoy a Park Avenue
                address like this one, but you could be among them.',
  address: '200 Feet Underground, Park Avenue, NY',
  price_per_night: 5000.0,
  user: lex_luthor
)
Lair.create(
  name: 'Cadmus Labs',
  description: 'This large facility is a dream-come-true for megalomanical scientists
                looking to play god. Cloning, bioengineering, drug development and testing --
                you name it, Cadmus has the facilities for it.',
  address: 'Just outside downtown Metropolis',
  price_per_night: 6000.0,
  user: lex_luthor
)
Lair.create(
  name: 'Secure and Private Island Hideaway',
  description: 'This beautiful island comes with a private apartment, a rocket launch site,
                a nuclear reactor, landing pads and docks, as well as a fully-trained,
                well-equipped group of staff. SPECTRE members, contact me directly for bookings.',
  address: 'Crab Key, Jamaica',
  price_per_night: 1500.0,
  user: dr_no
)
Lair.create(
  name: 'Hammer Industries HQ',
  description: "Ideal for prototyping, testing and developing superweapons. You won't find
                a better bargain this close to NYC, besides the Avengers HQ - and if you're
                on this site, they're not going to be letting you in.",
  address: 'Queens, NYC',
  price_per_night: 10_000.0,
  user: justin_hammer
)


4.times do 
  bookings = Booking.create!(
      user: User.all.sample,
      lair: Lair.all.sample,
      start_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
      end_date: Faker::Date.between(from: '2014-09-26', to: '2014-09-28'),
      status: ["rejected", "pending", "accepted"].sample,
      total_price: rand(10..100)
  )
  conversation = Conversation.create(
    booking: bookings
  )
  3.times do
    Message.create(
      user: bookings.user
      body: Faker::Quote.matz
    )
  end
  3.times do
    Message.create(
      user: bookings.user
      body: Faker::Quote.matz
    )
end


puts "Finished!"
