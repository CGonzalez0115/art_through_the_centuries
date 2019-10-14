class WorksofArt
  
  attr_accessor :name, :year, :title
  
  @@all = []
  def initialize(name)
    @name = name
    @title = title
    @year = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def list_artists
    input = gets.strip
    if input == "list"
      puts ""
      artists = artist.name.all
      artists.each_with_index(1) {|artist, index| puts "#{index}, #{artist.name}"}
    end
  end
  
  def list_artwork
    input = gets.strip
    if input == "list"
      artwork = artwork.title.all
      artwork.each_with_index(1) {|artwork, index| puts "#{index}, #{artwork.name}"}
    end
  end
  
  def list_years
    input = gets.strip
    if input == "list"
      puts ""
      years = years.name.all
      years.each_with_index(1) {|year, index| puts "#{index}, #{year.name}"}
    end
  end
end