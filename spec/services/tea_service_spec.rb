require 'rails_helper'

RSpec.describe 'Tea API Service' do
  it 'can get all teas' do
    response = TeaService.get_all_teas

  end

  it 'can get one tea by name' do
    name = 'green'
    response = TeaService.get_one_tea(name)
    require "pry"; binding.pry
  end
end
