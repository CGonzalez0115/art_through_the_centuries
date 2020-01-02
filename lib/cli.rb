class ArtThroughoutTheYears::CLI

  def call
    ArtThroughoutTheYears::Scraper.scrape_art
    start
    list_pieces
    print_artwork
  end

  def start
    puts ""
    puts "-------- ~The Most Popular Paintings in History~ --------".bold.underline.green
    puts ""
  end

  def list_pieces
    puts "To see a list of works of art type list.".bold.italic.blue
    input = gets.strip
    if input == "list"
      puts ""
      works = ArtThroughoutTheYears::WorksofArt.all.each.with_index(1) do |work, index|
        puts "#{index}) #{work.title}".cyan
      end
    end
  end

  def print_artwork
    puts "Please enter the number of the listed work you would like to view or exit.".bold.italic.blue
    input = gets.strip
    if input.to_i.between?(1,24)
      work = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
      puts ""
      puts "Work: --#{work.title.bold.cyan}--"
      puts ""
      puts "Information: --#{work.description}--"
      puts ""
      list_pieces
      print_artwork
    elsif  input == "exit"
      puts "Have a nice day!"
    else
      puts "Please enter a valid choice."
      print_artwork
    end
  end
end
