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
    user_input = number_to_index(gets.chomp)
    
   @artwork = define_artwork(user_input)
    
    print_timeline(artwork)
  end
  
  def print_timeline(artwork)
    puts ""
    puts "---------#{@artwork.name} - #{@artwork.title}---------"
    puts "Artist Name:      #{@artwork.name}"
    puts "Title:            #{@artwork.title}"
    puts "Time Period:      #{@artwork.time_period}"
    puts ""
    puts "---------Description--------"
    puts "#{@artwork.description}"
    puts ""
  end
  
  def number_to_index(user_input)
    user_input.to_i -1
  end
  
  def define_artwork(user_input)
    Object.const_get("#{ARTISTS[user_input]}")
    Object.const_get("#{TITLE[user_input]}")
    Object.const_get("#{YEAR[user_input]}")
    Object.const_get("#{TIME_PERIOD[user_input]}")
  end
end