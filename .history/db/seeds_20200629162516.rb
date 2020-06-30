# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Villain.create(
  title: 'Lex Luthor',
  email: 'lex@lexcorp.com',
  password: 'password',
  profile: ''
)
Villain.create(
  title: 'Dr. No',
  email: 'julius_no@spectre.com',
  password: 'password'
)
Villain.create(
  title: 'Raoul Silva',
  email: 'raoul_silva@lexcorp.com',
  password: 'password',
  profile: 'I'm primarily '
)
Villain.create(
  title: 'Doc Ock',
  email: 'doctoroctopus@hydra.com',
  password: 'password',
  profile: 'Nuclear physicist, atomic research consultant, inventor and lecturer.
            My home base is New York but I have contacts and contracts around the world.'
)
Villain.create(
  title: 'Lex Luthor',
  email: 'lex@lexcorp.com'
  password: 'password'
)