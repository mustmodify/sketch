class Sketch::Canvas < Valuable
  include Sketch::Base

  has_value :version, :default => '1.1'
  has_value :height
  has_value :width
  has_value :doctype, :default => false
  
  def namespace_bindings
    {
      'xmlns' => 'http://www.w3.org/2000/svg',
      'xmlns:ev' => 'http://www.w3.org/2001/xml-events',
      'xmlns:xlink' => 'http://www.w3.org/1999/xlink'
    }
  end

  def builder
    Nokogiri::XML::Builder.new do |document|
      render_doctype( document ) 
      document.svg( svg_attributes ) {|svg| yield svg if block_given?}
    end
  end

  def default_doctype
    ['svg', "-//W3C//DTD SVG 1.0//EN", "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd"]
  end

  def render_doctype( document )
    self.doctype &&= self.default_doctype

    if( self.doctype )
      document.doc.create_internal_subset(*self.doctype)
    end
  end

  def svg_attributes
    atts = super
    atts.delete('doctype')
    atts.merge(namespace_bindings)
  end

end

