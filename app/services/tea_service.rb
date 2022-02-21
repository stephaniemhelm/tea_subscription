class TeaService
  def self.get_all_teas
    conn = Faraday.new("https://tea-api-vic-lo.herokuapp.com")
    response = conn.get("/tea")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_one_tea(name)
    conn = Faraday.new("https://tea-api-vic-lo.herokuapp.com")
    response = conn.get("/tea/#{name}")

    JSON.parse(response.body, symbolize_names: true)
  end
end
