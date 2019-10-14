class ArtTimelineSearch
  ARTISTS = artist
  TITLE = title
  YEAR = []
  TIME_PERIOD = []
  
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
    puts "---------#{artist.name} - #{title.title}---------"
    puts "Artist Name:      #{artist.name}"
    puts "Title:            #{title.title}"
    puts "Time Period:      #{time_period.time_period}"
    puts ""
  end

end