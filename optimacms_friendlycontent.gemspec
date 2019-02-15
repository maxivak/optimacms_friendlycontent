$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "optimacms/friendlycontent/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "optimacms_friendlycontent"
  s.version     = Optimacms::Friendlycontent::VERSION
  s.authors     = ["Max Ivak"]
  s.email       = ["maxivak@gmail.com"]
  s.homepage    = "https://github.com/maxivak/optimacms_friendlycontent"
  s.summary     = "Content for OptimaCMS from FriendlyContent.io."
  s.description = "Use content for OptimaCMS from content api of FriendlyContent.io."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 5.1"

  s.add_dependency "optimacms"
  s.add_dependency "friendlycontent_api"


  #s.add_development_dependency "sqlite3"
end
