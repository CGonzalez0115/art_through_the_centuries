class ArtThroughoutTheYears::Scraper
  
  def self.scrape_artwork
    doc = Nokogiri::HTML(open("https://www.metmuseum.org/toah/works/"))
    doc.css('div.work-inner').each do |art|
    
      title = art.css("h1.page-title.work-title").text
      artist = art.css("span.Artist").text
      maker = art.css("span.Maker").text
      year = art.css("span.Date:").text
      description = art.css("div.description-wrap.accordian.openDesktop.expanded.accordian-init").text
      
      ArtThroughoutTheYears::WorksofArt.new(title, maker, artist, year, description)
    end
  end
end