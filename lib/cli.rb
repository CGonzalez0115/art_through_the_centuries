class ArtThroughoutTheYears::CLI
  
  def call
    ArtThroughoutTheYears::Scraper.new.scrape_artwork
    puts ""
    puts "************* ~The History of Art~ *************"
    puts ""
    start
  end

  def start
    puts ""
    puts "What is the name of the piece of work would you like to learn more about?"
    puts ""
    input = gets.strip
    artwork = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
    print_artwork(artwork)
      
    puts "Enter list to see the list of artwork again."
    puts "Enter exit to end the program, enter start to go back to search."
    puts ""
    input = gets.strip
    if input == "list"
      puts ArtThroughoutTheYears::WorksofArt.all.collect(input.to_i)
      print_artwork(artwork)
    elsif input == "exit"
      puts ""
      puts "Goodbye! Thank you for visiting."
    else
      start
    end
  end
  
  def print_artwork(artwork)
    puts ""
    puts "-------------- #{artwork.title} --------------"
    puts ""
    puts "Creator: #{artwork.artist}"
    puts ""
    puts "Year: #{artwork.year}"
    puts ""
    puts "Information: #{artwork.description}"
    puts ""
  end
end