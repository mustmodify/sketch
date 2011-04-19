class Sketch::Path < Sketch::Element

  has_value :fill
  has_value :stroke
  has_value :stroke_width
  has_value :stroke_linecap
  has_value :d, :alias => 'commands', :default => [] 

  def draw(canvas)
    canvas.path(svg_attributes)
  end

  def svg_attributes
    super.merge(:d => self.commands.join(' '))
  end
end

