#prerequisites
require 'nokogiri'
require 'valuable'

# require file being tested
$: << File.expand_path(File.dirname(__FILE__) + '/../lib/sketch')
require 'canvas.rb'
require 'base.rb'

class Minimalist < Sketch::Base
  def draw( canvas )
  end
end

class DoctypeTest < Test::Unit::TestCase

  def test_that_it_adds_namespace_binds_by_default
    # https://jwatt.org/svg/authoring/#doctype-declaration
    artwork = Minimalist.new.to_svg
    svgns = %r(xmlns="http://www.w3.org/2000/svg")
    xmlns = %r(xmlns:xlink="http://www.w3.org/1999/xlink")
    xlinkns = %r(xmlns:ev="http://www.w3.org/2001/xml-events")

    assert_match svgns, artwork
    assert_match xmlns, artwork
    assert_match xlinkns, artwork
  end

end

