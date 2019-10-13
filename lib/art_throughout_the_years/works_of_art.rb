require 'pry'
class Works_of_Art
  
  attr_accessor :artist, :select_year, :title, :url, :description
  
  def list_artists
    binding.pry
    input = gets.strip
    if input == "list"
      puts ""
      artists = ArtThroughoutTheYears::Artist.all
    end
  end
    
end