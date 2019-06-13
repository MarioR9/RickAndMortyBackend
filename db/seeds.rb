# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  rickOne = Rick.find_or_create_by(name:"Mario", age: 78)

  mortyOne = Morty.find_or_create_by(name: "Happy Morty", rick_id: 1)
  mortyTwo = Morty.find_or_create_by(name: "Sad Morty", rick_id: 1)
  mortyThree = Morty.find_or_create_by(name: "New Morty", rick_id: 1)
  mortyFour = Morty.find_or_create_by(name: "Evil Morty", rick_id: 1)
