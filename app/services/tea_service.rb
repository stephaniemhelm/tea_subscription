class TeaService
  def self.get_all_teas
    conn = Faraday.new("https://tea-api-vic-lo.herokuapp.com")
    response = conn.get("/tea")

  end
end
