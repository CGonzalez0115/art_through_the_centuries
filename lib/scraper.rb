class ArtThroughoutTheYears::Scraper
  
  def self.scrape_art
    doc = Nokogiri::HTML(open("https://www.timeout.com/newyork/art/top-famous-paintings-in-art-history-ranked"))
    doc.css('#content > article > div > div > div.main_content.md-col-7.md-offset-1.xs-relative.xs-pt4.md-pt0').each do |art|
      
      title = art.css("#content > article > div > div > div.main_content.md-col-7.md-offset-1.xs-relative.xs-pt4.md-pt0 > div.clearfix.xs-text-left.zone.xs-pb4.large_list.v5-zone.has-mobile-cta > div > article:nth-child(25) > div.card-content.xs-col-12 > header > h3 > span").text.strip
      description = art.css("#content > article > div > div > div.main_content.md-col-7.md-offset-1.xs-relative.xs-pt4.md-pt0 > div.clearfix.xs-text-left.zone.xs-pb4.large_list.v5-zone.has-mobile-cta > div > article:nth-child(25) > div.card-content.xs-col-12 > div.info-wrapper.xs-mb2.xs-mt2 > div > p").text.strip
      ArtThroughoutTheYears::WorksofArt.new(title, description)
    end
  end
end