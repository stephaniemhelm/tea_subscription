# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

customer_1 = Customer.create(first_name: "Sage", last_name: "Liliane", email: "sage@example.com", address: "Buena Vista, CO")
customer_2 = Customer.create(first_name: "Cindy", last_name: "Lou", email: "cindy@example.com", address: "Buena Vista, CO")
customer_1 = Customer.create(first_name: "Seth", last_name: "Kfman", email: "seth@example.com", address: "Denver, CO")

green = Tea.create(title: "green", description: "Rich in antioxidants and reduces inflammation.", temperature: 80, brew_time: 2)
black = Tea.create(title: "black", description: "Boosts heart health and lowers cholesterol.", temperature: 85, brew_time: 3)

subscription_1 = Subscription.create(title: "Tea Lovers", price: 35, status: true, frequency: 15, customer_id: customer_1.id, tea_id: green.id)
subscription_1 = Subscription.create(title: "Tea Drinkers", price: 45, status: true, frequency: 30, customer_id: customer_2.id, tea_id: black.id)



# require 'factory_bot_rails'
#
# 10.times do
#   FactoryBot.create(:customer)
# end
#
# 10.times do
#   FactoryBot.create(:tea)
# end
#
# (1..10).each do |i|
#   FactoryBot.create(:subscription, customer_id: i, tea_id: i)
# end
