class HomeController < ApplicationController
  def index 
  end
  def search
    require 'poke-api-v2'
    if params[:name]
      begin
        response = PokeApi.get(pokemon: params[:name].downcase).to_json
        @result = JSON.parse(response)
      rescue
        redirect_to main_path(notice: 'Sorry we encountered an error. Please check the name entered.')
      end
    end
  end
  def about
  end
  def connect
  end
end
