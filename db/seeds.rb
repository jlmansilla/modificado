# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
 
User.create!(email: "admin@gmail.com", password: "291ABASD932", password_confirmation: "291ABASD932")
User.create!(email: "usuario1@gmail.com", password: "291ABASD934", password_confirmation: "291ABASD934")
User.create!(email: "usuario2@gmail.com", password: "281ABASD932", password_confirmation: "281ABASD932")

25.times do
    Lead.create([
      {
        email: Faker::Internet.email,
        name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        phone: Faker::PhoneNumber.cell_phone_in_e164,
        status: %w[prospecto interesado cliente][rand(3)],
        user: User.all[rand(User.count)]
      }
    ])