class Smile < Sketch

#  def draw( canvas )
#    circle.new(:id => 'face', :cx => 200, :cy => 200, :r => 195, :fill => "yellow")
#    ellipse(:id => 'left-eye', :center => [120, 150], :radius => [p18, 33], :fill => 'black')
#    ellipse(:id => 'right-eye', :center => [280, 150], :radius => [18, 33], :fill => 'black')
#    path(:id => 'mount', :stoke_width => '10', :stroke => 'black', :stroke_linecap => 'round') do |instructions|
#      instructions.move_to 120, 280
#      instructions.q 200, 330 280,280
#    end
#  end

  def draw( canvas )
    Circle.new(:id => 'face', :cx => 200, :cy => 200, :r => 195, :fill => "yellow").draw(canvas)
    Sketch::Ellipse.new(:id => 'left-eye', :cx => 120, :cy => 150, :rx => 18, :ry => 33, :fill => 'black').draw(canvas)
    Sketch::Ellipse.new(:id => 'right-eye', :cx => 280, :cy => 150, :rx => 18, :ry => 33, :fill => 'black').draw(canvas)
    Sketch::Path.new(:id => 'mouth', :stroke_width => 10, :stroke => 'black', :fill => 'none', :stroke_linecap => 'round', :d => ['M120,280 Q200,330 280,280']).draw(canvas)
  end

end




