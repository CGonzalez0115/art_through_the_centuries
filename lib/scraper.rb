class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://www.ucityguides.com/cities/top-10-must-see-famous-works-of-art.html"))
    doc.css('main').each do |art|
      
      title = art.css("document.querySelector("#content > ol > h3:nth-child(3) > li")").text.strip
      description = art.css("document.querySelector("#content > ol > p:nth-child(4)")").text.strip
      ArtThroughoutTheYears::WorksofArt.new(title, description)
    end
  end
end