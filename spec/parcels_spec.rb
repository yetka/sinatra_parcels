require('rspec')
require('parcels')
require('pry')

describe(Parcel) do
  describe("volume") do
    it("returns volume of parcel") do
      new_parcel = Parcel.new(2,2,8,0)
      expect(new_parcel.volume()).to(eq(32))
    end
  end

  describe("cost_to_ship") do
    it("returns shipping cost of parcel") do
      new_parcel = Parcel.new(2,2,8,5)
      expect(new_parcel.cost_to_ship()).to(eq(160))
    end
  end
end
