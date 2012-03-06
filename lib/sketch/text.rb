class Sketch::Text < Sketch::Element
  has_value :x
  has_value :y
  has_value :color

  has_value :dx
  has_value :dy
  has_value :rotate
  has_value :text_length
  has_value :fill_stroke
  has_value :font_specification
  has_value :text_content_elements

end
