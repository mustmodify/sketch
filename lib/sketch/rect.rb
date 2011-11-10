class Sketch::Rect < Sketch::Element

  has_value :x
  has_value :y
  has_value :width
  has_value :height
  has_value :rx
  has_value :ry
  has_value :fill
  has_value :stroke
  has_value :stroke_width

  central_point :x, :y

end

