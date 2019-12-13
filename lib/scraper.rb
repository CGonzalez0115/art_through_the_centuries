class ArtThroughoutTheYears::Scraper
  
  def self.scrape_artwork
    doc = Nokogiri::HTML(open("https://www.metmuseum.org/toah/works/"))
    doc.css('.essay-object-overlay').each do |artwork|
    
      description = artwork.css("div.description-wrap.accordian.openDesktop.expanded.accordian-init").text
      maker = artwork.css("span.Maker").text
      artist = artwork.css("span.Artist").text
      year = artwork.css("span.Date:").text
      title = artwork.css("h1.page-title.work-title").text
      work_url = artwork.css("a").attribute("href").value
      ArtThroughoutTheYears::WorksofArt.new(maker, artist, year, title, work_url)
    end
  end
end