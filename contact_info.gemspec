$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "contact_info/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "contact_info"
  s.version     = ContactInfo::VERSION
  s.authors     = ["Yuri V"]
  s.email       = ["yuri.valigursky@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of ContactInfo."
  s.description = ": Description of ContactInfo."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
