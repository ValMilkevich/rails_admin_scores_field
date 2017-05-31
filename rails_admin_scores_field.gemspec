$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_scores_field/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_scores_field"
  s.version     = RailsAdminScoresField::VERSION
  s.authors     = ["Val Milkevich"]
  s.email       = ["milkevich@gmail.com"]
  s.homepage    = "http://whiteguide.com"
  s.summary     = "JSON scores field for WhiteGuide."
  s.description = "JSON scores field for WhiteGuide."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.3"
end
