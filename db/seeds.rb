# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  rickOne = Rick.find_or_create_by(name:"Mario", age: 78, char: 0)
  ricktwo = Rick.find_or_create_by(name:"Liz", age: 53, char: 12 )


  Morty.find_or_create_by(morty: 0, rick_id: 1)
  Morty.find_or_create_by(morty: 1, rick_id: 1)
  Morty.find_or_create_by(morty: 2, rick_id: 1)
  Morty.find_or_create_by(morty: 3, rick_id: 1)

  Morty.find_or_create_by(morty: 0, rick_id: 2) 
  Morty.find_or_create_by(morty: 1, rick_id: 2)
  Morty.find_or_create_by(morty: 2, rick_id: 2)
  Morty.find_or_create_by(morty: 3, rick_id: 2)
  Morty.find_or_create_by(morty: 4, rick_id: 2)

