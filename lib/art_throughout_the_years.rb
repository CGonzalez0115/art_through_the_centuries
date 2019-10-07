require "art_throughout_the_years/version"
require 'pry'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.metmuseum.org/toah/works/"))   
puts page.class   # => Nokogiri::HTML::Document

require_relative './art_throughout_the_years/lib/artist'
require_relative './art_throughout_the_years/years'
require_relative './art_throughout_the_years/works_of_art'
