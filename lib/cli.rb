class ArtThroughoutTheYears::CLI
  
  def call
    ArtThroughoutTheYears::Scraper.scrape_artwork
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
    puts ""
    masterpiece = ArtThroughoutTheYears::WorksofArt.all
    print_artwork
    puts ""
    puts "Enter list to see the list of artwork again."
    puts "Enter exit to end the program, enter start to go back to search."
    puts ""
    input = gets.strip
    if input == "list"
      puts ""
      artwork = ArtThroughoutTheYears::WorksofArt.all
      artwork.each.with_index(1) {|artwork, index| puts "#{index}. #{artwork.title}"}
      print_artwork
    elsif input == "exit"
      puts ""
      puts "Goodbye! Thank you for visiting."
    else
      start
    end
  end
  
  def print_artwork
    puts ""
    puts "-------------- #{masterpiece.title} --------------"
    puts ""
    puts "Creator: #{masterpiece.artist}"
    puts ""
    puts "Year: #{masterpiece.year}"
    puts ""
    puts "Information: #{masterpiece.description}"
    puts 
  end
end