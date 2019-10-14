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
    
    works_of_art = ArtThroughoutTHeYears::WorksofArt.find(input.to_i)
    
    print_timeline(works_of_art)
  end
  
  def print_timeline(works_of_art)
    puts ""
    puts "---------#{works_of_art.name} - #{works_of_art.title}---------"
    puts "Artist Name:      #{works_of_art.name}"
    puts "Title:            #{works_of_art.title}"
    puts "Time Period:      #{works_of_art.time_period}"
    puts ""
    puts "---------Description--------"
    puts "#{works_of_art.description}"
    puts ""
  end
end