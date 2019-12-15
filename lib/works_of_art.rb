class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title, :artist, :maker, :year, :description
  
  @@all = []
  def initialize(title, artist, maker, years, description)
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