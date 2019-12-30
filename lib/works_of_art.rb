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
    self.new(art.css("div.MFP-Home-Content-Artwork-Text").text)
  end
  
  def self.find(id)
    @@all[id-1]
  end
end