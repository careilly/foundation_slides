$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foundation_slides/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "foundation_slides"
  s.version     = FoundationSlides::VERSION
  s.authors     = ["Colman Reilly"]
  s.email       = ["careilly@mac.com"]
  s.homepage    = "http://github.com"
  s.summary     = "Summary of FoundationSlides."
  s.description = "Description of FoundationSlides."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_dependency "jquery-rails"
  s.add_dependency "haml-rails"
  s.add_dependency 'foundation-rails'

  s.add_development_dependency "sqlite3"
end
