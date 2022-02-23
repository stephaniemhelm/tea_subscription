require 'rails_helper'

RSpec.describe "Customer API" do
  it 'can show subscriptions' do
    customer = Customer.create(first_name: "Shelly", last_name: "Rio", email: "shelly@example.com", address: "Denver")
    green = Tea.create(title: "green", description: "Rich in antioxidants and reduces inflammation.", temperature: 80, brew_time: 2)
    black = Tea.create(title: "black", description: "Boosts heart health and lowers cholesterol.", temperature: 85, brew_time: 3)

    subscription_1 = Subscription.create(title: "Tea Lovers", price: 35, status: true, frequency: 15, customer_id: customer.id, tea_id: green.id)
    subscription_2 = Subscription.create(title: "Tea Drinkers", price: 35, status: true, frequency: 30, customer_id: customer.id, tea_id: black.id)

    get "/api/v1/customers/#{customer.id}/subscriptions"
    subscription_data = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
  end

  xit 'can create a subscription' do
    customer = Customer.create(first_name: "Shelly", last_name: "Rio", email: "shelly@example.com", address: "Denver")
    green = Tea.create(title: "green", description: "Rich in antioxidants and reduces inflammation.", temperature: 80, brew_time: 2)

    subscription_params = {
                  title: "Tea Lovers",
                  price: 35,
                  status: true,
                  frequency: 15,
                  customer_id: customer.id,
                  tea_id: green.id
                }
    post "/api/v1/customers/#{customer.id}/subscriptions"
    subscription_data = JSON.parse(response.body, symbolize_names: true)
    #require "pry"; binding.pry
    expect(response).to be_successful
  end

  it 'can update a subscription' do
    customer = Customer.create(first_name: "Shelly", last_name: "Rio", email: "shelly@example.com", address: "Denver")
    green = Tea.create(title: "green", description: "Rich in antioxidants and reduces inflammation.", temperature: 80, brew_time: 2)
    subscription_1 = Subscription.create(title: "Tea Lovers", price: 35, status: true, frequency: 15, customer_id: customer.id, tea_id: green.id)

    subscription_params = {
                  title: "Tea Lovers",
                  price: 35,
                  status: false,
                  frequency: 15,
                  customer_id: customer.id,
                  tea_id: green.id
                }
    new_subscription = Subscription.update(subscription_params)

    patch "/api/v1/customers/#{customer.id}/subscriptions/#{subscription_1.id}"

    subscription_data = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful
  end
end
