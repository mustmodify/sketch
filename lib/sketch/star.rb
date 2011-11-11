class Sketch::Star < Sketch::Element

  has_value :x
  has_value :y
  has_value :radius
  has_value :orientation, :default => 0

  has_value :number_of_points, :default => 5

  has_value :fill
  has_value :stroke 
  has_value :stroke_width

  central_point :x, :y

  def degrees_to_radians( degrees )
    degrees * Math::PI / 180
  end

  def angle_between_points
    360 / number_of_points
  end

  def drawing_order_indexes
    self.number_of_points.times.map do |n|
      (n*2) % self.number_of_points
    end
  end

  def points_in_drawing_order
    drawing_order_indexes.map do |index|
      points[index]
    end
  end

  def points
    @points ||= list = number_of_points.times.map do |point_number|
      current_angle = orientation + ( angle_between_points * point_number )
      [ x + (radius * Math.sin( degrees_to_radians( current_angle ))), y - (radius * Math.cos( degrees_to_radians( current_angle ))) ]
    end
  end

  def draw(canvas)
    if x && y && radius
      atts = {}
      atts['points'] = points_in_drawing_order.each{|point| point.join(',')}.join(' ')
      atts['fill'] = attributes[:fill] if attributes.has_key?(:fill)
      atts['stroke'] = attributes[:stroke] if attributes.has_key?(:stroke)
      atts['stroke-width'] = attributes[:stroke_width] if attributes.has_key?(:stroke_width)

      canvas.polygon( atts )
    end
  end
end
