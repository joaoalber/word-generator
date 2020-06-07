class HomeController < ApplicationController

  def index
  end

  # TODO see turbolinks (get http verb)
  def generate_word
    english_word = Spicy::Proton.adjective.gsub(/[^A-Za-z]/, '')
    url = ENV["TRANSLATOR_API_ENDPOINT"]
    
    response = Faraday.post(url) do |req|
      req.headers['Content-Type'] = 'application/json'  
      req.headers['Ocp-Apim-Subscription-Key'] = ENV["TRANSLATOR_API_KEY"]
      req.body = "[{'Text': '#{english_word}'}]"
    end

    json = JSON.parse(response.body, symbolize_names: true)
    @translated_word = json.first[:translations].first[:text]

    render :index
  end
end