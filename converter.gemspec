require File.expand_path("../lib/converter/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "converter"
  s.version     = Converter::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Riccitelli"]
  s.email       = ["david@interact.it"]
  s.homepage    = "http://www.interact.it"
  s.summary     = "Converts a source composite file (PDF) to many pages"
  s.description = "tbd"

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "converter"

  # If you have other dependencies, add them here
  # s.add_dependency "another", "~> 1.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["converter"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end
