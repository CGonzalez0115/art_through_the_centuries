class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://www.timeout.com/newyork/art/top-famous-paintings-in-art-history-ranked"))
    doc.css('div.main_content.md-col-7.md-offset-1.xs-relative.xs-pt4.md-pt0').each do |art|
    
      title_artist_year = art.css("h3.card-title.xs-text-charcoal.FranklinGothic.xs-text-2.xs-line-height-2.xs-mb4").text
      description = art.css("div.xs-text-7.xs-line-height-6.xs-text-charcoal").text
      ArtThroughoutTheYears::WorksofArt.new(title_artist_year, description)
    end
  end
end