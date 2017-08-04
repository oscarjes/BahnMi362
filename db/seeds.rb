# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."

if Section.count == 0
  puts "There are no sections. Generating new ones:"
  ["Most Popular", "Traditional", "Vegetarian", "Combos"].each do |name|
    section = Section.create(name: name)
    if section.persisted?
      puts "Generated section #{section.name}"
    end
  end
else
  puts "You already have sections. No need to seed new ones."
end 

popular, traditional, veg, combo = Section.all

if FoodItem.count == 0
  puts "There are no food items. Generating new ones:"
  5.times {popular.food_items.create(name: "Bahn Mi 362 Special", price: 34_000, description: "Our bestseller with meat, egg, and lots of veggies!")}
  5.times {veg.food_items.create(name: "Bahn Mi with Egg", price: 28_000, description: "A customer favorite with two organic eggsand fresh vegetables!")}
  5.times {traditional.food_items.create(name: "Bahn Mi with Pork", price: 32_000, description: "Perfect for meat lovers: filled with delicious pork and fresh veggies!")}
  5.times {combo.food_items.create(name: "Bahn Mi 362 Special with Coke", price: 48_000, description: "For those looking to get the best deal: our bestseller Bahn Mi together with a refreshing Coke!")}
  puts "Generated Food Items"
else
  puts "You already have food items. No need to seed new ones."
end