module Sketch
  class Canvas < Valuable

    has_value :doctype, :default => false  
    has_value :inline, :default => false
    has_value :svg_version, :default => '1.1'
    has_value :namespace_bindings, :default => [:svg, :xlink, :events]
 
    has_value :width, :default => 500
    has_value :height, :default => 300
  
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
      {
        'width' => width,
        'height' => height,
        'version' => svg_version,
        'xmlns' => 'http://www.w3.org/2000/svg',
        'xmlns:ev' => 'http://www.w3.org/2001/xml-events',
        'xmlns:xlink' => 'http://www.w3.org/1999/xlink',
      }
    end
  
  end
end
