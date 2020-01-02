class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title, :description
  
  @@all = []
  def initialize(title=nil, description=nil)
    @title = title
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