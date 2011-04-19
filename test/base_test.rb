require 'test/helper.rb'

class Squigly < Sketch::Element
  has_value :reflective_coating
end

class SketchTest < Test::Unit::TestCase

  def test_that_node_is_based_on_name
    canvas = stub
    canvas.expects(:squigly)
    Squigly.new.draw(canvas)
  end

end

