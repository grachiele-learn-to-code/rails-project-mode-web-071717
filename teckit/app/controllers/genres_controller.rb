class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = Movie.all.where("genre_id = #{@genre.id}")
  end

end
