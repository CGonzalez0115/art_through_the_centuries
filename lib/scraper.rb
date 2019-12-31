class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://www.ucityguides.com/cities/top-10-must-see-famous-works-of-art.html"))
    doc.css('main').each do |art|
      
      title = art.css("h3").text.strip
      description = art.css("p").text.strip
      ArtThroughoutTheYears::WorksofArt.new(title, description)
    end
  end
end