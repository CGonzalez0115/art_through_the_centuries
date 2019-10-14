class ArtThroughoutTheYears::Years
  
  attr_accessor :year
  
  @@all = []
  def initialize
    @year = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def list_years
    input = gets.strip
    if input == "list"
      puts ""
      years = years.name.all
      years.each_with_index(1) {|year, index| puts "#{index}, #{year.name}"}
    end
  end
  
end