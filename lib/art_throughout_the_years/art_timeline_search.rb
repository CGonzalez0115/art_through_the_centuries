class ArtTimelineSearch
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
    puts "Please type and artist, title, year, or time period you would like to search? (Please enter a selection)\n".navy_blue
  end
end