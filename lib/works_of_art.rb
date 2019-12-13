class ArtThroughoutTheYears::WorksofArt
  attr_accessor :title, :description, :artist, :maker, :year
  
  @@ALL = []
  def initialize(title = nil)
    @title = title
    @description = description
    @artist = artist
    @year = year
    @@all << self
  end

  def self.all
    @@all ||= scrape_collection
  end

  def self.find(id)
    self.all[id-1]
  end

  def description
    @description ||= doc.search("div.description-wrap.accordian.openDesktop.expanded.accordian-init").text.strip
  end

  def artist
    @artist ||= doc.search("span.Artist").text.strip
  end
  
  def maker
    @maker ||= doc.search("span.Maker").text.strip
  end
  
  def year
    @year ||= doc.search("span.Date:").text.strip
  end
  
  def title
    @title ||= doc.search("h1.page-title.work-title").text.strip
  end
  
  def self.scrape_collection
    doc = Nokogiri::HTML(open('https://www.metmuseum.org/toah/works/'))
    names = doc.search("h1[itemprop='name'] a[itemprop='url']")
    names.collect{|e| new(e.text.strip, "https://www.metmuseum.org/toah/works/#{e.attr("href").split("?").first.strip}")}
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

end