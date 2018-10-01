# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
User.destroy_all

user1 = User.create(name: "Barack", bio: "a retired statesman")
user2 = User.create(name: "Ace Ventura", bio: "pet detective")

pet1 = Pet.create( name: "Rex", species: "Cat", description: "a cool cat", user_id: user1.id)
pet2 = Pet.create( name: "Snoopy", species: "Dog", description: "A sleepy dog", user_id: user1.id)
pet3 = Pet.create( name: "Scooby Doo", species: "Dog", description: "a chill dog", user_id: user2.id)
