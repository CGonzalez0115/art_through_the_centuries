class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title, :description, :artist, :year

  def initialize(name = nil, url = nil)
    @name = name
    @url = url
  end

  def self.all
    @@all ||= scrape_collection
  end

  def self.find(id)
    self.all[id-1]
  end

  def title
    @title ||= doc.search("div[itemprop='name'] span['ObjTitle']").collect{|e| e.text.strip}.join(",")
  end

  def description
    @description ||= item_description_doc.search("p.articleBody").text.strip
  end

  def artist
    @artist ||= doc.search("div[itemprop='name'] span['ObjArtist']").text.strip
  end
  
  def year
    @year ||= doc.search("span[Date:]").text.strip
  end
  
  def self.scrape_collection
    doc = Nokogiri::HTML(open('https://www.metmuseum.org/toah/works/'))
    names = doc.search("h1[itemprop='name'] a[itemprop='url']")
    names.collect{|e| new(e.text.strip, "https://www.metmuseum.org/toah/works/#{e.attr("href").split("?").first.strip}")}
  end

  def item_description_doc
    @item_description_doc ||= Nokogiri::HTML(open("#{self.url}articleBody"))
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

end