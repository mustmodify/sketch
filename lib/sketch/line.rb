class Sketch::Line < Sketch::Element
  
  has_value :x1
  has_value :x2
  has_value :y1
  has_value :y2
  has_value :stroke, :default => 'black'
  has_value :stroke_width, :default => 1
  has_value :stroke_linecap
  has_value :stroke_opacity

end

