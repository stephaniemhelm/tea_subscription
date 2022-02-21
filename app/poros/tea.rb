class Tea

  attr_reader :id,
              :title,
              :description,
              :temperature,
              :brew_time

  def initialize(data)
    @id = data[:_id]
    @title = data[:name]
    @description = data[:description]
    @temperature = data[:temperature]
    @brew_time = data[:brew_time]
  end
end
