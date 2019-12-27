class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title_artist_year, :description
  
  @@all = []
  def initialize(title_artist_year=nil, description=nil)
    @title_artist_year = title_artist_year
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