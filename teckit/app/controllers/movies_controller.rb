class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @showtimes = Showtime.all.where("movie_id = #{@movie.id}")
  end

end
