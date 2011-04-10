#prerequisites
require 'rubygems'
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

  def test_that_doctype_is_off_by_default
    assert_equal false, Sketch::Canvas.new.doctype
  end

  def test_that_it_does_not_include_doctype_by_default
    # https://jwatt.org/svg/authoring/#doctype-declaration
    artwork = Minimalist.new.to_svg
    assert_no_match(/doctype/i, artwork)
  end

  def test_that_it_includes_doctype_when_configured
    artwork = Minimalist.new.to_svg(:doctype => true)
    assert_match(/doctype/i, artwork)
  end

end

