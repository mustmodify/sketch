class Sketch::Star < Sketch::Element

  has_value :x
  has_value :y
  has_value :radius
  has_value :orientation, :default => 0

  central_point :x, :y

  def draw(canvas)
    top = [x, y - radius]
    mid_right = [x + radius, y-(.3*radius)] 
    lower_right = [x + (0.6 * radius), y + radius]
    lower_left = [x - (0.6 * radius), y + radius]
    mid_left = [x - radius, y-(0.3*radius)]
    points = [ top, lower_right, mid_left, mid_right, lower_left, top ]
    points.each{|point| point.join(',')}
    points = points.join(' ')
    canvas.polygon( :points => points)
  end
end
