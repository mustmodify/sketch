require 'helper'

class ElementTest < Test::Unit::TestCase

  def test_that_point_is_broken_into_coordinates
    c = Sketch::Circle.new(:point => [10, 20])
    assert_equal 10, c.cx
    assert_equal 20, c.cy
  end

  def test_that_coordinates_are_available_as_point
    r = Sketch::Rectangle.new(:x => 33, :y => 55)
    assert_equal [33, 55], r.point
  end
end

