require 'rails_helper'

RSpec.describe 'Tea API Service' do
  it 'can get all teas' do
    response = TeaService.get_all_teas
    
    expect(response).to be_an Array

    expect(response.first).to be_a Hash
    expect(response.first).to have_key :_id
    expect(response.first).to have_key :name
    expect(response.first).to have_key :description
    expect(response.first).to have_key :temperature
    expect(response.first).to have_key :brew_time
  end

  it 'can get one tea by name' do
    name = 'green'
    response = TeaService.get_one_tea(name)

    expect(response).to be_a Hash
    expect(response).to have_key :_id
    expect(response).to have_key :name
    expect(response).to have_key :description
    expect(response).to have_key :temperature
    expect(response).to have_key :brew_time
  end
end
