class Sketch::Circle < Sketch::Element

  has_value :cx
  has_value :cy
  has_value :r, :alias => :radius
  has_value :fill
  has_value :fill_opacity
  has_value :stroke 
  has_value :stroke_width

  def point=(coordinates)
    self.cx, self.cy = *coordinates
  end

  def point
    [self.cx, self.cy]
  end

end

