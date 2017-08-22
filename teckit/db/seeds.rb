# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = %w(Comedy Horror Action Romance Drama War Children)

genres.each do |genre|
  Genre.create(name: genre)
end

require 'ffaker'
50.times do
   Movie.create(name: FFaker::Movie.title, genre_id: Genre.all.sample.id)
end

50.times do
  City.create(name: FFaker::Address.city)
end

50.times do
  theatre_option = %w(Theatre Cinemas)
  MovieTheatre.create(name: FFaker::Company.name + " " + theatre_option.sample, city_id: City.all.sample.id)
end

50.times do
  start_time = "#{rand(1..24)}:#{rand(6)}#{rand(10)}"
  show_date = "#{rand(1..13)}/#{rand(28)}/#{rand(2017..2020)}"
  Showtime.create(start_time: start_time, movie_id: Movie.all.sample.id, movie_theatre_id: MovieTheatre.all.sample.id, show_date: show_date )
end
