class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://www.timeout.com/newyork/art/top-famous-paintings-in-art-history-ranked"))
    
    work = self.new
    work.title_artist_year = doc.search("h3.card-title.xs-text-charcoal.FranklinGothic.xs-text-2.xs-line-height-2.xs-mb4").text.strip
    work.description = doc.search("div.xs-text-7.xs-line-height-6.xs-text-charcoal").text.strip
    work
  end
  
  def self.scrape_works
    works = []
    works << self.scrape_art
  end
end