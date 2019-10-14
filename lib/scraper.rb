class Scraper
  
  def self.scrape_artwork(works_of_art)
    masterpieces = []
    doc = Nokogiri::HTML(open("https://www.metmuseum.org/toah/works/"))
    doc.css('.essay-object-overlay').each do |masterpiece|
      masterpiece_details = {}
      masterpiece_details[:name] = masterpiece.css("span.ObjArtist").text
      masterpiece_details[:year] = masterpiece.css("span.ObjTitle").text
      masterpiece_details[:title] = masterpiece.css("span.ObjTitle").text
      masterpiece_details[:url] = masterpiece.css("a").attribute("href").value
      masterpieces << masterpiece_details
    end
    masterpieces
  end
end