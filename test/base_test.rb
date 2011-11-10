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

  def test_that_underscores_become_dashes
    canvas = stub
    canvas.expects(:squigly).with(has_entry('reflective-coating', 'dark'))
    Squigly.new(:reflective_coating => 'dark').draw(canvas)
  end

  def test_that_data_is_added_in_html5_format
    canvas = stub
    canvas.expects(:squigly).with('data-visit-id' => 21)
    Squigly.new(:data => {:visit_id => 21}).draw(canvas)
  end
end

