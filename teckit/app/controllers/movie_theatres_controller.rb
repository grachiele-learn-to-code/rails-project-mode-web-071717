class MovieTheatresController < ApplicationController

  def index
    @movie_theatres = MovieTheatre.all
  end

  def show
    @movie_theatre = MovieTheatre.find(params[:id])
  end

end
