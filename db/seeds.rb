# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kim = Destination.create(name: 'Kingdom Investment Ministries')
trinity = Destination.create(name: 'Trinity Chapel')
blueprint = Destination.create(name: 'Bluepring Church')

audrey = Rider.create(first_name: 'Audrey', last_name: 'Dortch')
gabe = Rider.create(first_name: 'Gabe', last_name: 'Murphy')
jameson = Rider.create(first_name: 'Jameson', last_name: 'Murphy')
chris = Rider.create(first_name: 'Chris', last_name: 'Brown')

tom = Driver.create(first_name: 'Tom', last_name: 'Davis')
sarah = Driver.create(first_name: 'Sarah', last_name: 'Johnson')

vehicle1 = Vehicle.create(color: 'blue', make: 'ford', model: 'escort')
vehicle1 = Vehicle.create(color: 'white', make: 'honda', model: 'accord')
vehicle1 = Vehicle.create(color: 'grey', make: 'ford', model: 'mustang')
