require 'helper'

class StarTest < Test::Unit::TestCase

  def test_that_star_is_drawn_as_a_polygon
    canvas = stub
    canvas.expects(:polygon).with(:points => '100,10 40,180 190,60 10,60 160,180 100,10')
    art = Sketch::Star.new.draw(canvas)
  end

end

