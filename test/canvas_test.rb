#prerequisites
require 'rubygems'
require 'test/unit'
require 'nokogiri'
require 'valuable'

# require file being tested
$: << File.expand_path(File.dirname(__FILE__) + '/../lib/sketch')
require 'canvas.rb'

class CanvasTest < Test::Unit::TestCase

  def test_that_width_is_configurable
    art = Sketch::Canvas.new(:width => 350).builder.to_xml
    assert_equal 1, Nokogiri::XML(art).css('svg[width="350"]').size
  end

  def test_that_height_is_configurable
    art = Sketch::Canvas.new(:height => 450).builder.to_xml
    assert_equal 1, Nokogiri::XML(art).css('svg[height="450"]').size
  end

end

