class CowsController < ApplicationController
  require "httparty"

  def index
    secret_key = ENV['COW_SAY_API_KEY']
    #random = rand(50).to_i
    #
    # @response = HTTParty.get("http://api.giphy.com/v1/gifs/search?q=dachshund&api_key=dc6zaTOxFJmzC&limit=50").parsed_response["data"][random]["images"]["original"]["url"]

    # These code snippets use an open-source library. http://unirest.io/ruby
    # These code snippets use an open-source library. http://unirest.io/ruby
    # @cow = Cow.new
    # binding.pry
    @response = HTTParty.get("https://thibaultcha-fortunecow-v1.p.mashape.com/random",
    headers:{
      "X-Mashape-Key" => ENV['cow_say_api_key'],
      "Accept" => "text/plain"
    })

  end

end
