class Sketch::Circle < Sketch::Element

  has_value :cx
  has_value :cy
  has_value :r, :alias => :radius
  has_value :fill
  has_value :fill_opacity
  has_value :stroke 
  has_value :stroke_width

  central_point :cx, :cy

end

