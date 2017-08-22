class MovieTheatresController < ApplicationController

  def index
    @movie_theatres = MovieTheatre.all
  end

  def show
    @movie_theatre = MovieTheatre.find(params[:id])
    @times = Showtime.all.select { |showtime| showtime.movie_theatre_id == @movie_theatre.id }
  end

end
