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
   input = gets.strip
   if input =="list"
     puts ""
     works = ArtThroughoutTheYears::WorksofArt.all.each.with_index(1) do |work, index|
       puts "#{index}) #{work.title}"
     end
   end
 end

 def print_artwork
   puts "Please enter the number of the listed work you would like to view, enter list, or exit."
   input = gets.strip
   if input.to_i > 0
     work = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
     puts ""
     puts "Work: --#{work.title}--"
     puts ""
     puts "Information: --#{work.description}--"
     puts ""
     puts "Would you like to view another masterpiece's information?"
    elsif input == "exit"
     puts "Thank you for visiting!"
    else 
     list_pieces
     print_artwork
    end
  end
end
