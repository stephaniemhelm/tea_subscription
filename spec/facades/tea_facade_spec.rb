require 'rails_helper'

RSpec.describe TeaFacade do
  it 'can get tea data' do
    name = 'green'
    result = TeaFacade.get_tea_data(name)

    #require "pry"; binding.pry
  end
end
