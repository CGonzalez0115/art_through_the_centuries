class ArtThroughoutTheYears::CLI

 def call
   ArtThroughoutTheYears::Scraper.scrape_art
   start
   list_pieces
   print_artwork
 end

 def start
   puts ""
   puts "-------- ~The Most Popular Paintings in History~ --------".green
   puts ""
 end

 def list_pieces
   puts "To see a list of works of art type list.".blue
   input = gets.strip
   if input =="list"
     puts ""
     works = ArtThroughoutTheYears::WorksofArt.all.each.with_index(1) do |work, index|
       puts "#{index}) #{work.title}".cyan
     end
   end
 end

 def print_artwork
   puts "Please enter the number of the listed work you would like to view, enter list, or exit.".blue
   input = gets.strip
   if input.to_i < 24
     work = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
     puts ""
     puts "Work: --#{work.title.cyan}--"
     puts ""
     puts "Information: --#{work.description}--"
     puts ""
     next_choice
    elsif input == "exit"
     puts "Thank you for visiting!".blue
    else 
     print_artwork
    end
  end
  
  def next_choice
    puts "Please enter another number of the listed work or enter exit to leave the program.".blue
    input = gets.strip
    if input.to_i < 24
      work = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
      puts ""
      puts "Work: --#{work.title.cyan}--"
      puts ""
      puts "Information: --#{work.description}--"
      puts ""
      next_choice
    else
      puts "Thank you for visiting, have a nice day!".blue
    end
  end
end
