require 'pry'
class Works_of_Art
  
  attr_accessor :name, :select_year, :title, :url, :description
  
  @@all = []
  def initialize
    @name = name
    @select_year = []
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def list_artists
    if input == "list"
      puts ""
      artists = artist.name.all
      artists.each_with_index(1) {|artist, index| puts "#{index}, #{artist.name}"}
    end
  end
  
  def list_artwork
    if input == "list"
      artwork = artwork.title.all
      artwork.each_with_index(1) {|artwork, index| puts "#{index}, #{artwork.name}"}
    end
  end
end