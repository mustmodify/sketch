module Sketch
  class Ellipse < Base
  
    has_value :cx
    has_value :cy
    has_value :rx
    has_value :ry
    has_value :radius
    has_value :fill
    has_value :stroke 
    has_value :stroke_width
  
    def draw(canvas)
      canvas.ellipse( svg_attributes )
    end
  
  end
end

