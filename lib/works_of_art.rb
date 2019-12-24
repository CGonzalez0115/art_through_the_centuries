class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title_artist_year, :description
  
  @@all = []
  def initialize(title_artist_year, description)
    @title_artist_year = title_artist_year
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