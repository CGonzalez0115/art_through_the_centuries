class ArtThroughoutTheYears::CLI
  
 def call
   ArtThroughoutTheYears::Scraper.scrape_art
   start
   list_pieces
   print_artwork
 end
 
 def start
   puts ""
   puts "-------- ~The Most Popular Paintings in History~ --------"
   puts ""
 end
 
 def list_pieces
   puts "To see a list of works of art type list."
 end
 
 def print_artwork
 end
end