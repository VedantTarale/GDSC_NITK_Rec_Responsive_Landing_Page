class HomeController < ApplicationController
  def index 
  end
  def search
    require 'poke-api-v2'
    if params[:name]
      response = PokeApi.get(pokemon: params[:name]).to_json
      @result = JSON.parse(response)
    end
  end
  def about
  end
  def connect
  end
end
