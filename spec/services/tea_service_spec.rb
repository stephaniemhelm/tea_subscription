require 'rails_helper'

RSpec.describe 'Tea API Service' do
  it 'can get all teas' do
    response = TeaService.get_all_teas
    require "pry"; binding.pry

  end

end
