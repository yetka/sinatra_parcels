class Parcel
  def initialize (length, width, depth, weight)
    @length = length
    @width = width
    @depth = depth
    @weight = weight
  end

  def volume
    @length * @width * @depth
  end

  def cost_to_ship
    self.volume * @weight
  end
end
