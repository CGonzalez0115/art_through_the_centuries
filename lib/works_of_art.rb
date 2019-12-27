class ArtThroughoutTheYears::WorksofArt
  attr_accessor :number, :title_artist_year, :description
  
  @@all = []
  def initialize(number=nil, title_artist_year=nil, description=nil)
    @number = number
    @title_artist_year = title_artist_year
    @description = description
    @@all << self
  end

  def self.all
    @@all << ArtThroughoutTheYears::Scraper.scrape_works
  end
  
  def self.new_from_index_page(r)
    self.new(art.css("h3.card-title.xs-text-charcoal.FranklinGothic.xs-text-2.xs-line-height-2.xs-mb4").text)
  end
  
  def self.find(id)
    @@all[id-1]
  end
end