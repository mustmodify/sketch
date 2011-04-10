module Sketch
  class Circle < Base

    has_value :cx
    has_value :cy
    has_value :r, :alias => :radius
    has_value :fill
    has_value :stroke 
    has_value :stroke_width
  
    def draw(canvas)
      canvas.circle(:cx => self.cx, :cy => self.cy, :r => self.radius, :fill => self.fill, :stroke => self.stroke, 'stroke_width' => self.stroke_width)
    end
  end
end

