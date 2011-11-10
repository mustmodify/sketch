class Sketch::Polygon < Sketch::Element

  has_collection :points
  has_value :fill
  has_value :stroke
  has_value :stroke_width
  has_value :fill_rule

  def svg_attributes
    out = super
    out['points'] = attributes[:points].map{|point| point.join(',')}.join(' ')
    out
  end

end

