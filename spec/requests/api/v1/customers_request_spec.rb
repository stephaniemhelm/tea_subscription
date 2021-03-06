require 'rails_helper'

RSpec.describe "Customer API" do
  it 'can show a customer' do
    customer = Customer.create(first_name: "Shelly", last_name: "Rio", email: "shelly@example.com", address: "Denver")
  
    get "/api/v1/customers/#{customer.id}"

    customer_data = JSON.parse(response.body, symbolize_names: true)
    expect(response).to be_successful

  end
end
