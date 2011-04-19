module Sketch::Base
  def svg_attributes
    out = {}

    #svg is heavy in dashes. Ruby symbols can't handle them.
    attributes.each do |name, value|
      out[name.to_s.gsub('_', '-')] = value
    end

    out[:class] = out.delete(:klass) if out.has_key?(:klass)

    out
  end
end

