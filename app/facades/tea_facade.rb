class TeaFacade
  def self.get_all_tea_data
    teas = TeaService.get_all_teas

    teas.map do |data|
      Tea.new(data)
    end 
  end

  def self.get_tea_data(name)
    data = TeaService.get_one_tea(name)

    tea = Tea.new(data)
    #require "pry"; binding.pry
  end
end
