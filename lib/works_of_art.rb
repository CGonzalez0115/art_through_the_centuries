class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title, :description, :artist, :maker, :year
  
  @@all = []
  def initialize(title, description, artist, year, maker)
    @title = title
    @artist = artist
    @maker = maker
    @year = year
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.find_by_index(index)
    @@all[index]
  end
end