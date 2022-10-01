# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


dish1 = Dish.create(name: "Bubble Tea", image: "https://tinyurl.com/2sydr9zw", price: 5.25, category: "Drink")
dish2 = Dish.create(name: "Chocolate Milk", image: "https://tinyurl.com/2p8cfy78", price: 3.25, category: "Drink")

ingredient1 = Ingredient.create(name: "Tapioca Pearls", gluten_safe: true, vegan_safe: true)
ingredient2 = Ingredient.create(name: "Tea", gluten_safe: true, vegan_safe: true)
ingredient4 = Ingredient.create(name: "Chocolate Syrup", gluten_safe: true, vegan_safe: false)
ingredient3 = Ingredient.create(name: "Milk", gluten_safe: true, vegan_safe: false)

location1 = Location.create(address_1:"1234 Wee Sing Lane",address_2:"City, State 11111, USA")
location2 = Location.create(address_1:"5678 Wee Sing Lane",address_2:"City, State 22222, USA")

user1 = User.create(username:"HomerSimp123",password_digest: "",email:"Donuts123@email.com", location_id: location2.id)
user2 = User.create(username:"MargeSimp123",password_digest: "",email:"Marge123@email.com", location_id: location2.id)
user3 = User.create(username:"NedFlan123",password_digest: "",email:"Neighbor123@email.com", location_id: location1.id)

IngredientDish.create(dish_id: dish1.id, ingredient_id: ingredient1.id)
IngredientDish.create(dish_id: dish1.id, ingredient_id: ingredient2.id)
IngredientDish.create(dish_id: dish1.id, ingredient_id: ingredient3.id)

IngredientDish.create(dish_id: dish2.id, ingredient_id: ingredient3.id)
IngredientDish.create(dish_id: dish2.id, ingredient_id: ingredient4.id)