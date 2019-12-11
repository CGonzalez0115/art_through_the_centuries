class ArtThroughoutTheYears::Scraper
  
  def self.scrape_artwork(works_of_art)
    masterpieces = []
    doc = Nokogiri::HTML(open("https://www.metmuseum.org/toah/works/"))
    doc.css('.essay-object-overlay').each do |masterpiece|
      masterpiece_details = {}
      masterpiece_details[:description] = masterpiece.css("div.description-wrap.accordian.openDesktop.expanded.accordian-init").text
      masterpiece_details[:maker] = masterpiece.css("span.Maker").text
      masterpiece_details[:artist] = masterpiece.css("span.Artist").text
      masterpiece_details[:year] = masterpiece.css("span.Date:").text
      masterpiece_details[:title] = masterpiece.css("h1.page-title.work-title").text
      masterpiece_details[:url] = masterpiece.css("a").attribute("href").value
      masterpieces << masterpiece_details
    end
    masterpieces
  end
end