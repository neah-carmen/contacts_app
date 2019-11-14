# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact = ContactList.new(
  first_name: "Bilbo",
  middle_name: "Took",
  last_name: "Baggins",
  bio: "Respectable hobbit from the Shire",
  email: "bilbo@shire.org",
  phone_number: "111-111-1111",
)
contact.save
contact = ContactList.new(
  first_name: "James",
  middle_name: "Tiberius",
  last_name: "Kirk",
  bio: "Captain of the Federation Starship Enterprise",
  email: "jtkirk@federation.org",
  phone_number: "211-919-1701",
)
contact.save
contact = ContactList.new(
  first_name: "Jon",
  middle_name: "Rhaegar",
  last_name: "Snow",
  bio: "Lord Commander of the Night's Watch",
  email: "lordcommander@nightswatch.org",
  phone_number: "998-300-8800",
)
contact.save
