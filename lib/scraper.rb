class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://www.timeout.com/newyork/art/top-famous-paintings-in-art-history-ranked"))
    doc.css('div.main_content.md-col-7.md-offset-1.xs-relative.xs-pt4.md-pt0').each do |art|
      
      number = art.css("div.FranklinGothic.number.xs-absolute.xs-text-center.xs-z1.xs-text-4.xs-line-height-2.xs-fill-charcoal.xs-text-white.squared.xs-px3").text
      title_artist_year = art.css("h3.card-title.xs-text-charcoal.FranklinGothic.xs-text-2.xs-line-height-2.xs-mb4").text
      description = art.css("div.xs-text-7.xs-line-height-6.xs-text-charcoal").text
      ArtThroughoutTheYears::WorksofArt.new(number, title_artist_year, description)
    end
  end
  
  def self.scrape_works
    works = []
    works << self.scrape_art
  end
end