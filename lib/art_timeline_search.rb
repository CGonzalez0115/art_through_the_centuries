class ArtTimelineSearch
  ARTISTS = []
  TITLE =[]
  YEAR = []
  TIME_PERIOD =[]
  
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
    
    print_timeline(artwork)
  end
  
  def print_timeline(artwork)
    puts ""
    puts "---------#{artwork.name} - #{artwork.title}---------"
    puts "Artist Name:      #{artwork.name}"
    puts "Title:            #{artwork.title}"
    puts "Time Period:      #{artwork.time_period}"
  end
end