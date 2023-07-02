require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

require_relative "./models/movie_search.rb"
require_relative "./models/movie.rb"
puts "which movie you want to search for"
input = gets.strip
search = MovieSearch.new(input)
movies = search.movies.map{|movie_hash| Movie.new(movie_hash)}
movies.each do |movie| 
movie.print_summary

end 

