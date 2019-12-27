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
    puts "To see a list of works of art type list."
    input = gets.strip
    if input == "list"
      puts ""
      WORKS = ArtThroughoutTheYears::WorksofArt.all
      WORKS.each.with_index do |work, index| 
        puts "#{index}. #{work.title_artist_year}"
      end
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