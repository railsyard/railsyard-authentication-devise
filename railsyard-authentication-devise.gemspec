$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "railsyard-authentication-devise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "railsyard-authentication-devise"
  s.version     = RailsyardAuthenticationDevise::VERSION
  s.authors     = ["Stefano Verna", "Francesco Disperati"]
  s.email       = ["stefano.verna@welaika.com", "nebirhos@aol.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsyardAuthenticationDevise."
  s.description = "TODO: Description of RailsyardAuthenticationDevise."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "devise"
  s.add_dependency "railsyard-backend"

  s.add_dependency "rails"
  s.add_dependency "jquery-rails"
  s.add_dependency "compass-rails"
  s.add_dependency "slim-rails"
  s.add_dependency "coffee-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "spork"
  s.add_development_dependency "capybara"
  s.add_development_dependency "capybara-webkit"
end
