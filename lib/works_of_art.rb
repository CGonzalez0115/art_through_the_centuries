class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title, :description, :artist, :maker, :year
  
  @@all = []
  def initialize(title, description, artist, year, maker)
    @title = title
    @description = description
    @artist = artist
    @year = year
    @maker = maker
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.find_by_index(index)
    @@all[index]
  end

  def self.find(id)
    self.all[id-1]
  end
end