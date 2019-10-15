require "art_throughout_the_years/version"
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.metmuseum.org/toah/works/"))
puts page.class #=> Nokogiri::HTML::Document

require_relative "lib/cli"
require_relative "lib/works_of_art"

module ArtThroughoutTheYears
end