class ArtThroughoutTheYears::WorksofArt
  attr_accessor :index, :title_artist_year, :description
  
  @@all = []
  def initialize(index, title_artist_year, description)
    @index = index
    @title_artist_year = title_artist_year
    @description = description
    @@all << self
  end

  def self.all
    @@all.index
  end
  
  def self.find_by_index(index)
    @@all[index]
  end
end