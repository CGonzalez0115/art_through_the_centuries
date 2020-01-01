require_relative './lib/version'

Gem::Specification.new do |spec|
  spec.name          = "art_throughout_the_years"
  spec.version       = ArtThroughoutTheYears::VERSION
  spec.authors       = ["'Christina Gonzalez'"]
  spec.email         = ["'cmgamway@gmail.com'"]

  spec.summary       = "Art Throughout The Years"
  spec.description   = "CLI to assist in research and education of the history and progress of art."
  spec.homepage      = "https://github.com/CGonzalez0115/art_throughout_the_years.git"
  spec.license       = "MIT"
  spec.files         = ["lib/art_throughout_the_years.rb", "lib/cli.rb", "lib/scraper.rb", "lib/works_of_art.rb", "config/environment.rb"]
  
  spec.bindir        = "bin"
  spec.executables   = ["art_throughout_the_years"]
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "colorize"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "nokogiri", "~> 1.10"
end
