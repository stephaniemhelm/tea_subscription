require 'rails_helper'

RSpec.describe TeaFacade do
  it 'can get tea data' do
    name = 'green'
    result = TeaFacade.get_tea_data(name)

    expect(result.id).to eq("5fa3fd48d5ba620017ec1c09")
    expect(result.title).to eq("green")
    expect(result.description).to eq("Rich in antioxidants and reduces inflammation.")
    expect(result.temperature).to eq(80)
    expect(result.brew_time).to eq(2)
  end

  it 'can get data for all teas' do
    result = TeaFacade.get_all_tea_data

    green = result.first
    black = result.second

    expect(green.id).to eq("5fa3fd48d5ba620017ec1c09")
    expect(green.title).to eq("green")
    expect(green.description).to eq("Rich in antioxidants and reduces inflammation.")
    expect(green.temperature).to eq(80)
    expect(green.brew_time).to eq(2)

    expect(black.id).to eq("5fa3fdb0d5ba620017ec1c0a")
    expect(black.title).to eq("black")
    expect(black.description).to eq("Boosts heart health and lowers cholesterol.")
    expect(black.temperature).to eq(85)
    expect(black.brew_time).to eq(3)
  end
end
