class Building
  attr_accessor :windcount, :wallcount, :storycount, :material, :color, :aircon
  def initialize (numwind, numwalls, numstories, materials, colors, hasaircon)
    @windcount = numwind
    @wallcount = numwalls
    @storycount = numstories
    @material = materials
    @color = colors
    @aircon = hasaircon
  end
end

class Hospital < Building
  attr_accessor :numpatients
  def initialize (patientcount)
    @numpatients = patientcount
  end
  def expand
    puts "We now have room for more patients"
  end
  def self.repaint
    puts "We're repainting the hospital light blue"
  end
end
