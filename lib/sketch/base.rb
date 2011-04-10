module Sketch
  class Base < Valuable

    has_value :id
    has_value :klass

    def to_svg( doc_atts = {} )
      svg_builder(doc_atts) do |canvas|
        self.draw( canvas )
      end.to_xml
    end
  
    def to_html( doc_atts = {} )
      svg_builder(doc_atts) do |canvas|
        self.draw( canvas )
      end.doc.root
    end

    def svg_attributes
      out = {}

      #svg is heavy in dashes. Ruby symbols can't handle them.
      attributes.each do |name, value|
        out[name.to_s.gsub('_', '-')] = value
      end

      out[:class] = out.delete(:klass) if out.has_key?(:klass)

      out
    end

    private

    def svg_builder(atts)
      Canvas.new( atts ).builder {|canvas| yield canvas}
    end
  end
end

