require 'pry'
class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://www.timeout.com/newyork/art/top-famous-paintings-in-art-history-ranked"))
    doc.css('article .listCard').each do |art_node|
      
      title = art_node.css('h3').text.strip
      description = art_node.css("p").text.strip
      ArtThroughoutTheYears::WorksofArt.new(title, description)
    end
  end
end

