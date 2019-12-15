class ArtThroughoutTheYears::CLI
  
  @@count = 0
  def call
    ArtThroughoutTheYears::Scraper.scrape_art
    start
    @@count += 1
    list_pieces
    print_artwork
  end

  def start
    puts ""
    puts "************* ~The Most Popular Paintings Throughout History~ *************"
    puts ""
    puts "Please enter 'list' to view the list of painting below"
    puts ""
  end

  def list_pieces
    input = gets.strip
    if input == "list"
      puts ""
      pieces = ArtThroughoutTheYears::WorksofArt.all
      pieces.each.with_index(1) {|piece, index| puts "#{index} #{piece.title_artist_year}"}
    else input == "exit"
      system "clear"
      exit
      list_pieces
    end
  end
  
  def print_artwork
    puts ""
    puts "Please enter the number of the listed work you would like to view."
    input = gets.strip
    if input = ""
      artwork = ArtThroughoutTheYears::WorksofArt.all
      puts ""
      puts "-------------- #{artwork.index} --------------"
      puts ""
      puts "-------------- #{artwork.title_artist_year} --------------"
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