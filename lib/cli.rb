class ArtThroughoutTheYears::CLI
  
  def call
    ArtThroughoutTheYears::Scraper.scrape_artwork
    start
    list_pieces
    print_artwork
  end

  def start
    puts ""
    puts "************* ~The History of Art~ *************"
    puts ""
    puts "Please view the list of works below"
    puts ""
  end
  
  def list_pieces
    pieces = ArtThroughoutTheYears::WorksofArt.all
    pieces.each.with_index(1) {|piece, index| puts "#{index}. #{piece.title}"}
    list_pieces
  end
  
  def print_artwork
    puts ""
    puts "Please enter the number of the listed work you would like to view."
    puts ""
    input = gets.strip
    if input_to_i > 0
      artwork = ArtThroughoutTheYears::WorksofArt.find_by_index(input_to_i - 1)
      puts ""
      puts "-------------- #{artwork.title} --------------"
      puts ""
      puts "Creator: #{artwork.artist}, #{artwork.maker}"
      puts ""
      puts "Year: #{artwork.year}"
      puts ""
      puts "Information: #{artwork.description}"
      puts ""
      print_artwork
    else
      input == "Exit"
      puts ""
      puts "Thank you for visiting, have a good day!"
      puts ""
    end
  end
end