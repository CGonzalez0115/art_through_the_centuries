class ArtThroughoutTheYears::CLI
  
  def call
    puts ""
    puts "************* ~The History of Art~ *************"
    puts ""
    start
  end

  def print_artwork(artwork)
    puts ""
    puts "-------------- #{artwork.name} --------------"
    puts ""
    puts "Creator: #{artwork.artist}"
    puts ""
    puts artwork.description
    puts ""
  end

  def start
    input = nil
    while input != "exit"
      puts ""
      puts "What is the name of the piece of work would you like to learn more about?"
      puts ""
      input = gets.strip
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
  end
end