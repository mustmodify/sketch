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

  class << self
    def central_point( x_param = :x, y_param = :y )
      define_method :point= do |coordinates|
        attributes[x_param], attributes[y_param] = *coordinates
      end
  
      define_method :point do
        [attributes[x_param], attributes[y_param]]
      end
    end
  end
end

