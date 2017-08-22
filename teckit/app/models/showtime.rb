class Showtime < ApplicationRecord
  belongs_to :movie_theater
  belongs_to :movie
end
