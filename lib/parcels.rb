class Parcel
  def initialize (length, width, depth, weight)
    @length = length.to_i
    @width = width.to_i
    @depth = depth.to_i
    @weight = weight.to_i
  end

  def volume
    @length * @width * @depth
  end

  def cost_to_ship
    self.volume * @weight
  end
end
