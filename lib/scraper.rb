class ArtThroughoutTheYears::Scraper
  
  def self.scrape_artwork
    doc = Nokogiri::HTML(open("https://www.metmuseum.org/toah/works/"))
    doc.css('.essay-object-overlay').each do |masterpiece|
    
      description = masterpiece.css("div.description-wrap.accordian.openDesktop.expanded.accordian-init").text
      maker = masterpiece.css("span.Maker").text
      artist = masterpiece.css("span.Artist").text
      year = masterpiece.css("span.Date:").text
      title = masterpiece.css("h1.page-title.work-title").text
      work_url = masterpiece.css("a").attribute("href").value
      ArtThroughoutTheYears::WorksofArt.new(maker, artist, year, title, work_url)
    end
  end
end