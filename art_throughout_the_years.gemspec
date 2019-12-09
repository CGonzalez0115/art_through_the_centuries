lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "art_throughout_the_years"
  spec.version       = ArtThroughoutTheYears::VERSION
  spec.authors       = ["'Christina Gonzalez'"]
  spec.email         = ["'cmgamway@gmail.com'"]

  spec.summary       = %q{A CLI to assist in research and education of the history and progress of art.}
  spec.homepage      = "https://github.com/CGonzalez0115/art_throughout_the_years.git"
  spec.license       = "MIT"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "spring"
end
