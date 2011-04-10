module Sketch
  class Path < Base

    has_value :fill, :default => 'none'
    has_value :stroke, :default => 'black'
    has_value :stroke_width, :default => 1
    has_value :stroke_linecap
    has_value :d, :alias => 'commands', :default => [] 

    def draw(canvas)
      canvas.path(svg_attributes)
    end
  
    def svg_attributes
      super.merge(:d => self.commands.join(' '))
    end
  
  end
end

