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
   input = get.strip
   if input =="list"
     puts ""
     works = ArtThroughoutTheYears::WorksofArt.all.each.with_index(1) do |work, index|
       puts "#{index}) #{work.title_artist_year}"
     end
   end
 end
 
 def print_artwork
   puts "Please enter the number of the listed work you would like to view, list, or exit."
   input = get.strip
   if input.to_i > 0
     works = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
     puts ""
     puts "Work: --#{work.title_artist_year}--"
     puts ""
     puts "Information: --#{work.description}--"
     puts ""
    elsif input == "exit"
     puts "Thank you for visiting!"
    else
      puts ""
      puts"Review this list below."
      list_pieces
      print_artwork
    end
  end
end