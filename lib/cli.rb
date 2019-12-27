class ArtThroughoutTheYears::CLI
  
  def call
    ArtThroughoutTheYears::Scraper.scrape_art
    start
    list_pieces
    print_artwork
  end

  def start
    puts ""
    puts "************* ~The Most Popular Paintings Throughout History~ *************"
    puts ""
  end

  def list_pieces
    puts ""
    puts "Please view the list of paintings below"
    puts ""
    artwork= ArtThroughoutTheYears::WorksofArt.all
    artwork.each.with_index(1) {|artwork, index| puts "#{index}. #{artwork.title_artist_year}"}
  end
  
  def print_artwork
    puts ""
    puts "Please enter the number of the listed work you would like to view."
    input = gets.strip
    if input.to_i > 0
      artwork = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
      puts ""
      puts "Work:-------------- #{artwork.title_artist_year}, #{artwork.number} --------------"
      puts ""
      puts "Information: #{artwork.description}"
      puts ""
      print_artwork
    elsif input == "Exit"
      puts ""
      puts "Thank you for visiting, have a good day!"
      puts ""
    else 
      puts ""
      puts "Review the list below"
      list_pieces
    end
  end
end