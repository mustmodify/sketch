class Star < Sketch

  def draw(canvas)
    Sketch::Star.new(:radius => self.width.to_f / 2.1, :x => self.width.to_f / 2, :y => self.width.to_f / 2, :fill => 'yellow', :stroke => 'black', :stroke_width => 1, :orientation => 45).draw(canvas)
  end
end

