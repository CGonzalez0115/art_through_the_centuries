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
    
    print_timeline(timeline)
  end
  
  def print_timeline(timeline)
    puts ""
    puts "---------#{timeline.name} - #{timeline.title}---------"
    puts "Artist Name:      #{timeline.name}"
    puts "Title:            #{timeline.title}"
    puts "Time Period:      #{timeline.time_period}"
    puts ""
    puts "---------Description--------"
    puts "#{timeline.description}"
    puts ""
  end
end