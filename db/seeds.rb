# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  
 Rick.create(username: "Mario", password: "password1", age: 78, avatar: 0)
 Rick.create(username:"Liz", password: 'password2', age: 53, avatar: 12)


  Morty.create(morty: 0, rick_id: 1, food: 4, health: 50, level: 23)
  Morty.create(morty: 1, rick_id: 1, food: 4, health: 50, level: 23)
  Morty.create(morty: 2, rick_id: 1, food: 4, health: 50, level: 23)
  Morty.create(morty: 3, rick_id: 1, food: 4, health: 50, level: 23)

  Morty.create(morty: 0, rick_id: 2, food: 4, health: 50, level: 23) 
  Morty.create(morty: 1, rick_id: 2, food: 4, health: 50, level: 23)
  Morty.create(morty: 2, rick_id: 2, food: 4, health: 50, level: 23)
  Morty.create(morty: 3, rick_id: 2, food: 4, health: 50, level: 23)
  Morty.create(morty: 4, rick_id: 2, food: 4, health: 50, level: 23)

