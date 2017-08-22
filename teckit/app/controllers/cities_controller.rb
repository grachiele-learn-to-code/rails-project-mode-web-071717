class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @theatres = MovieTheatre.select { |theatre| theatre.city_id == @city.id }
  end

end
