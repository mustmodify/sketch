class Sketch < Valuable

  has_value :id
  has_value :klass
  has_value :height
  has_value :width
  has_value :baseProfile, :alias => :base_profile
  has_value :doctype
  has_value :data, :default => {}

  def draw(canvas)
    raise NotImplementedError
  end

  def to_svg( )
    svg_builder do |canvas|
      self.draw( canvas )
    end.to_xml
  end

  def to_html
    svg_builder do |canvas|
      self.draw( canvas )
    end.doc.root.to_s
  end

  def svg_attributes
    out = {}
    out[:height]  = self.height if self.height
    out[:width]   = self.width if self.width
    out[:doctype] = self.doctype if self.doctype
    out
  end

  def svg_builder
    Canvas.new( svg_attributes ).builder {|canvas| yield canvas}
  end

end

require 'sketch/base'
require 'sketch/element'
require 'sketch/canvas'

require 'sketch/circle'
require 'sketch/polygon'
require 'sketch/ellipse'
require 'sketch/rect'
require 'sketch/rectangle'
require 'sketch/path'

