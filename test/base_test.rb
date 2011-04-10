#prerequisites
require 'rubygems'
require 'test/unit'
require 'nokogiri'
require 'valuable'

# require file being tested
$: << File.expand_path(File.dirname(__FILE__) + '/../lib/sketch')
require 'base.rb'
require 'canvas.rb'

class EmptySquare < Sketch::Base
  def draw(canvas)
    canvas.rect('x' => 50, 'y' => 20, 'width' => 10, 'height' => 20)
  end
end

class BaseTest < Test::Unit::TestCase

  def test_that_nodes_are_added_to_the_canvas
    assert_equal 1, Nokogiri::XML(EmptySquare.new.to_svg).css('rect[x="50"][y="20"][width="10"][height="20"]').size
  end

end

