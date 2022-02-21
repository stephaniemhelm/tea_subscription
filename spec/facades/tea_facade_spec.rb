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
end
