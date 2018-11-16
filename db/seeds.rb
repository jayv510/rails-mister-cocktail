# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

user['drinks'].each do |drink|
  Ingredient.create!(name: drink['strIngredient1'])
end

Ingredient.create(name: "Real Heart")
Ingredient.create(name: "Kwarm Sai Jai")
Ingredient.create(name: "Ngor Geng")
Ingredient.create(name: "Ruk Diew Jai Diew")
Ingredient.create(name: "Noomnim")
Ingredient.create(name: "Chocolate")
Ingredient.create(name: "Juiguay")
Ingredient.create(name: "Bubble Tea")
Ingredient.create(name: "Jayguay")
Ingredient.create(name: "Durian")
Ingredient.create(name: "Garnlataesa")
Ingredient.create(name: "Ruk Buppakaree")
Ingredient.create(name: "Mai Lhong Tua Eng")
