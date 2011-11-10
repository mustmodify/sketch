class Sketch::Triangle < Sketch::Element

  has_value :point
  has_value :height
  has_value :direction
  has_value :stroke
  has_value :stroke_width
  has_value :fill

  def draw(canvas)
    case direction
    when :up
      point1 = "M#{point.join(',')}"
      point2 = "l-#{0.5*height},#{height*0.5}"
      point3 = "l#{height},0"
      point4 = "l-#{height*0.5},-#{height*0.5}"
    when :down
      point1 = "M#{point.join(',')}"
      point2 = "l-#{0.5*height},-#{height*0.5}"
      point3 = "l#{height},0"
      point4 = "l-#{height*0.5},#{height*0.5}"
    end

    Sketch::Path.new(:stroke_width => self.stroke_width, :fill => self.fill, :stroke => self.stroke, :commands => [point1, point2, point3, point4]).draw(canvas)
  end
end

