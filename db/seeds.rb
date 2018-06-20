# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Anthony", email: "anthony@nomads.com", password: "1234")
User.create(name: "Jee", email: "jee@nomads.com", password: "1234")
User.create(name: "Angelina", email: "angelina@nomads.com", password: "1234")
User.create(name: "Eric", email: "eric@nomads.com", password: "1234")
User.create(name: "Malorie", email: "malorie@nomads.com", password: "1234")

Neighborhood.create(name: "Dumbo")
Truck.create(name: "Halal Cart Dumbo", specialty: "Halal", neighborhood_id: 1)
Truck.create(name: "Ming's Wok", specialty: "Chinese", neighborhood_id: 1)
Truck.create(name: "Kimchi Winchi", specialty: "Korean", neighborhood_id: 1)
Truck.create(name: "Big Burg", specialty: "Burgers", neighborhood_id: 1)
Truck.create(name: "Rice King", specialty: "Chinese", neighborhood_id: 1)
Truck.create(name: "Curry Heights", specialty: "Indian", neighborhood_id: 1)
