class ArtTimelineSearch

  attr_accessor :name, :year, :title
  ARTISTS = artist
  TITLE = title
  YEAR = []
  TIME_PERIOD = []
  
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
  
  def call
    puts "WELCOME TO YOUR ART HISTORY TIMELINE SEARCH!"
    puts "---------"
    start
  end
  
  def start
    puts ""
    puts "Please type an artist's name, title of work, year, or time period."
    puts "(Please input your selection.)"
    input = gets.strip
    
    print_timeline(name, title, year, time_period)
  end
  
  def print_timeline(name, title, year, time_period)
    puts ""
    puts "---------#{artist.name} - #{artwork.title}---------"
    puts "Artist Name:      #{artist.name}"
    puts "Title:            #{artwork.title}"
    puts "Year:             #{artwork.year} - #{artist.year}"
    puts "Time Period:      #{artwork.time_period} - #{artist.time_period}"
    puts ""
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