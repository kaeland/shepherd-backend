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

tom = Driver.create(first_name: 'Tom', last_name: 'Davis', destination_id: 1)
sarah = Driver.create(first_name: 'Sarah', last_name: 'Johnson', destination_id: 2)

audrey = Rider.create(first_name: 'Audrey', last_name: 'Dortch', driver_id: 1)
gabe = Rider.create(first_name: 'Gabe', last_name: 'Murphy', driver_id: 1)
jameson = Rider.create(first_name: 'Jameson', last_name: 'Murphy', driver_id: 2)
chris = Rider.create(first_name: 'Chris', last_name: 'Brown', driver_id: 2)

vehicle1 = Vehicle.create(color: 'blue', make: 'ford', model: 'escort', driver_id: 1)
vehicle2 = Vehicle.create(color: 'white', make: 'honda', model: 'accord', driver_id: 1)
