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

building1 = Building.new(7, 4, 1, ["stone", "wood"], ["red", "blue"], true)
building2 = Building.new(20, 35, 3, ["plaster"], ["lightyellow"], false)
