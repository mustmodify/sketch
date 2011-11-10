class Sketch::Path < Sketch::Element
  
  has_value :fill, :default => 'none'
  has_value :stroke, :default => 'black'
  has_value :stroke_width, :default => 1
  has_value :stroke_linecap
  has_value :d, :alias => 'commands', :default => []

  def svg_attributes
    out = super
    out['d'] = out['d'].join(' ') if out.has_key('d')
  end
end

