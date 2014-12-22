$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "app_response_logger/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "app_response_logger"
  s.version     = AppResponseLogger::VERSION
  s.authors     = ["Dmitriy Partsyrniy"]
  s.email       = ["partsirniy@mail.ru"]
  s.homepage    = "https://github.com/virtax/app_response_logger"
  s.summary     = "Reponse logger for Rails"
  s.description = "Log reponse.body after every request with pretty json."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.0"
  s.add_dependency "colorize"
end
