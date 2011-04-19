#prerequisites
require 'rubygems'
require 'test/unit'
require 'mocha'
require 'nokogiri'
require 'valuable'

$:.push File.expand_path("./../../lib", __FILE__)
$:.push File.expand_path("./../../lib/sketch", __FILE__)

require 'sketch'
require 'sketch/canvas'
require 'sketch/base'
require 'sketch/element'

