require 'rails_helper'

RSpec.describe "Tea API" do
  it 'can show a tea' do
    tea = Tea.create(title: "green", description: "Rich in antioxidants and reduces inflammation.", temperature: 80, brew_time: 2)

    get "/api/v1/teas/#{tea.id}"

    tea_data = JSON.parse(response.body, symbolize_names: true)
    #require "pry"; binding.pry
    expect(response).to be_successful

  end
end
