version = File.read(File.expand_path("../SKETCH_VERSION",__FILE__)).strip
require 'rubygems'

require 'rake'

spec = Gem::Specification.new do |s|
  s.name = 'sketch'
  s.version = version 
  s.platform = 'Gem::Platform::Ruby'
  s.summary = "build SVG images"
  s.description = "build SVG images"
  s.require_path = 'lib'
  s.files = FileList['lib/**/*.rb', '[A-Z]*', 'examples/**/*', 'test/**/*'].to_a
  s.add_dependency('valuable')

  s.license = 'MIT'

  s.author = "Johnathon Wright0"
  s.email = "jw@mustmodify.com"
  s.homepage = "http://sketch.mustmodify.com/"
end

