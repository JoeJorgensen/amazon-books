# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

JkRowling = Author.create(name:'Jk Rowling', age:41)
TimFerris = Author.create(name:'Tim Ferris', age:34)

JkRowling.books.create(name:"Harry Potter and the Sorcerer's stone", genre:'Fiction')
JkRowling.books.create(name:"Harry Potter and the Chamber of Secrets", genre:'Fiction')
TimFerris.books.create(name:'Tools of Titans', genre:'Non-Fiction')
TimFerris.books.create(name:'The 4-Hour Workweek', genre:'Non-Fiction')


Book.create(name:"Harry Potter and the Prisoner of Azkaban", genre:'Fiction', author_id:JkRowling.id)


Commencial = Bike.create(make:'Commencial', color:'silver')
YT = Bike.create(make:'YT', color:'blue')


YT.bike_types.create(catagory:'Mountain Bike', price: 2999)
Commencial.bike_types.create(catagory:'Enduro Bike', price: 3499)

# Bike_type.create(catagory'Enduro', price:3499, bike_id:Commencial.id)