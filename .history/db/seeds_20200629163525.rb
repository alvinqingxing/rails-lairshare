# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lex_luthor = Villain.create(
  title: 'Lex Luthor',
  email: 'lex@lexcorp.com',
  password: 'password',
  profile: "Metropolis may be my home base, but my business takes me around the world.
            If you're a regular customer of LexCorp, message me for special benefits."
)
dr_no = Villain.create(
  title: 'Dr. No',
  email: 'julius_no@spectre.com',
  password: 'password'
  profile: 'The unwanted child of a German missionary and a Chinese girl of a good family.
            Book my island and see what comforts $10,000,000 of Tong gold bullion can buy.'
)
raoul_silva = Villain.create(
  title: 'Raoul Silva',
  email: 'raoul_silva@lexcorp.com',
  password: 'password',
  profile: "I used to be based in Hong Kong and Asia, but I'm looking to return
            to England and Scotland in the coming months."
)
doc_ock = Villain.create(
  title: 'Doc Ock',
  email: 'doctoroctopus@hydra.com',
  password: 'password',
  profile: 'Nuclear physicist, atomic research consultant, inventor and lecturer.
            My home base is New York but I have contacts and contracts around the world.'
)
justin_hammer = Villain.create(
  title: 'Justin Hammer',
  email: 'the_hammer@hammerindustries.com'
  password: 'password'
  profile: "Whether you're looking for labs with the latest tech, floating hideouts in 
            international waters, or d-day bunkers, I've got it all."
)

Lair.create(
  
)