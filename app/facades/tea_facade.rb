class TeaFacade
  def self.get_tea_data(name)
    data = TeaService.get_one_tea(name)

    tea = Tea.new(data)
    #require "pry"; binding.pry
  end
end
