class Movie < ApplicationRecord
  belongs_to :genre
  has_many :showtimes
  has_many :movie_theatres, through: :showtimes
end
