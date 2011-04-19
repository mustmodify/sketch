$:.push File.expand_path("../lib", __FILE__)  
version = File.read(File.expand_path("../sketch.version",__FILE__)).strip

spec = Gem::Specification.new do |s|
  s.name = 'sketch'
  s.version = version 
  s.platform = 'Gem::Platform::Ruby'
  s.summary = "build SVG images"
  s.description = "build SVG images"
  s.license = 'MIT'

  s.require_path = 'lib'

  s.add_dependency('valuable', '> 0.8')
  s.add_dependency('nokogiri', '>= 1.4')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]


  s.authors = ["Johnathon Wright"]
  s.email = "jw@mustmodify.com"
  s.homepage = "http://sketch.mustmodify.com/"
end

