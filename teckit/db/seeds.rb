# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres = %w(Comedy, Horror, Action, Romance, Drama, War, Children)

genres.each do |genre|
  Genre.create(name: genre)
end

require 'ffaker'
50.times do
  Movie.create(name: FFaker::Movie.title)
end
