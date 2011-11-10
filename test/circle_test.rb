require 'helper'

class CircleTest < Test::Unit::TestCase

  def test_that_point_is_broken_into_coordinates
    c = Sketch::Circle.new(:point => [10, 20])
    assert_equal 10, c.cx
    assert_equal 20, c.cy
  end

end

