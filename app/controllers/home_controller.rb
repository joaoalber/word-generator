class HomeController < ApplicationController
  def index
    response  = Faraday.get('https://api.dicionario-aberto.net/random')
    @test = JSON.parse(response.body).deep_symbolize_keys
    @test = @test.fetch(:word)
  end
end