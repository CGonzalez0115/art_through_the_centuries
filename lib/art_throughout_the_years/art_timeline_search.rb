class ArtThroughoutTheYears :: ArtTimelineSearch
  ARTISTS = []
  TITLE =[]
  YEAR = []
  TIME_PERIOD =[]
  
  def call
    puts "WELCOME TO YOUR ART HISTORY TIMELINE SEARCH!".indigo.bold
    puts "---------"
  end
  
  def start
    puts ""
    puts "Please type an artist's name, title of work, year, or time period.".navy_blue.bold
    puts "(Please input your selection.)".navy_blue
    input.gets.strip
  end
  
  def print_timeline(artwork)
    puts ""
    puts "---------#{artwork.name} - #{artwork.title}---------"
    puts "Artist Name:      #{artwork.name}"
    puts "Title:            #{artwork.title}"
    puts "Time Period:      #{artwork.time_period}"
  end
end