class ArtThroughoutTheYears::WorksofArt
  attr_accessor :artist, :title, :description
  
  @@all = []
  def initialize(artist=nil, title=nil, description=nil)
    @artist = artist
    @title = title
    @description = description
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.new_from_index_page(r)
    self.new(art.css("h3.card-title.xs-text-charcoal.FranklinGothic.xs-text-2.xs-line-height-2.xs-mb4").text)
  end
  
  def self.find(id)
    @@all[id-1]
  end
end