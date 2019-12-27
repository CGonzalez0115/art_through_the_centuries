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
    @works = ArtThroughoutTheYears::WorksofArt.all
    @works.each.with_index do |work, index| 
      puts "#{index}. #{work.title_artist_year}"
    end
  end
  
  def print_artwork
    puts ""
    puts "Please enter the number of the listed work you would like to view, list, or Exit."
    input = gets.strip
    if input.to_i > 0
      work = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
      puts ""
      puts "Work:-------------- #{work.number},#{work.title_artist_year} --------------"
      puts ""
      puts "Information: #{work.description}"
      puts ""
    elsif input == "Exit"
      puts ""
      puts "Thank you for visiting, have a good day!"
      puts ""
    else
      puts ""
      puts "Review the list below"
      list_pieces
      print_artwork
    end
  end
end