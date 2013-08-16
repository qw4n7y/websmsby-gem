$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "websmsby/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "websmsby"
  s.version     = Websmsby::VERSION
  s.authors     = ["qw4n7y"]
  s.email       = ["qw4n7y@gmail.com"]
  s.homepage    = "https://github.com/qw4n7y/websmsby-gem"
  s.summary     = "Websms.by API"
  s.description = "Websms.by API"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.1"
  # s.add_dependency "rails", "~> 4.0.0"
  # s.add_development_dependency "sqlite3"
end
