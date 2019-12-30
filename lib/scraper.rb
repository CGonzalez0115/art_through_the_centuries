class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("http://en.most-famous-paintings.com/MostFamousPaintings.nsf/ListOfTop100MostPopularPainting?OpenForm"))
    doc.css('div.MFP-Main-Content-Block').each do |art|
      
      artist = art.css("h4").text.strip
      title = art.css("h5").text.strip
      description = art.css("p").text.strip
      ArtThroughoutTheYears::WorksofArt.new(artist, title, description)
    end
  end
end