$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'workers_loader/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workers_loader"
  s.version     = WorkersLoader::VERSION
  s.authors     = ["Ricard Forniol"]
  s.email       = ["ricard.forniol@pushtech.com"]
  s.homepage    = "http://www.pushtech.com"
  s.summary     = "Resque loading system"
  s.description = "Resque workers loading strategy system"

  s.files = Dir['{app,config,db,lib}/**/*'] + %w(MIT-LICENSE Rakefile README)

  s.add_dependency 'rails', '~> 4.2'
  s.add_dependency 'resque'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'fuubar'

  s.test_files = Dir['spec/**/*']
end
