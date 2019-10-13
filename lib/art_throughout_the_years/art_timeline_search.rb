class ArtThroughoutTheYears :: ArtTimelineSearch
  ARTISTS = []
  TITLE =[]
  YEAR = []
  TIME_PERIOD =[]
  
  def call
    puts "\nWELCOME TO YOUR ART HISTORY TIMELINE SEARCH!".indigo
    puts "--------------------------------"
    start
  end
  
  def start
    puts ""
    puts "Please type an artist's name, title of work, year, or time period you would like to search. (Please enter your selection.)\n".navy_blue
    input.gets.strip
    
    print_timeline(artwork)
  end
  
  def print_timeline(artwork)
    puts ""
    puts "---------#{artwork.name} - #{artwork.title}---------"
    puts "Artist Name:    #{artwork.name}"
    puts "Title:          #{artwork.title}"
    puts "Time Period:    #{artwork.time_period}"
    puts "Please click on the object to view it's description."
  end
end