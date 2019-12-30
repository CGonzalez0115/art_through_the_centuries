class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://historylists.org/art/20-of-the-world%E2%80%99s-most-famous-art-pieces.html"))
    doc.css('div#main').each do |art|
      
      title = art.css("h2").text.strip
      description = art.css("p").text.strip
      ArtThroughoutTheYears::WorksofArt.new(title, description)
    end
  end
end