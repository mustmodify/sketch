class Sketch::Element < Valuable
  include Sketch::Base

  has_value :id
  has_value :klass
  has_value :style
  has_value :data, :default => {}

  def draw(canvas)
    canvas.send( self.svg_node, svg_attributes )
  end

  def svg_node
    self.class.name.split('::').last.downcase
  end
end

