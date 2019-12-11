class ArtThroughoutTheYears::CLI
  
  def call
    start
  end

  def list
    puts ""
    puts "************* ~The History of Art~ *************"
    puts ""
    ArtThroughoutTheYears::WorksofArt.all.each.with_index(1) do |artwork, i|
      puts "#{i}. #{artwork.name}"
    end
    puts ""
  end

  def print_artwork(artwork)
    puts ""
    puts "-------------- #{artwork.name} --------------"

    puts ""
    puts artwork.summary
    puts ""

    puts "Creator: #{artwork.artist}"
    puts ""
  end

  def start
    list
    input = nil
    while input != "exit"
      puts ""
      puts "What is the name of the piece of work would you like to learn more about?"
      puts ""
      puts "Enter list to see the list of artwork again."
      puts "Enter exit to end the program."
      puts ""
      input = gets.strip
      if input == "list"
        list
      elsif input.to_i == 0
        if artwork = ArtThroughoutTheYears::WorksofArt.find_by_name(input)
          print_artwork(artwork)
        end
      elsif input.to_i > 0
        if artwork = ArtThroughoutTheYears::WorksofArt.find(input.to_i)
          print_artwork(artwork)
        end
      end
    end
    puts "Goodbye!!!"
  end
end