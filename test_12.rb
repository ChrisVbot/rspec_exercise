require_relative 'spec_helper'

# Checks if a barracks has health points and that Footman class does half its AP damage to a barracks.

describe Unit do

  it "dies if health_points = 0 or lower" do
    unit = Unit.new(0, 0)
    expect(unit.dead?).to eq(true)
  end  

  it "cannot attack another dead unit" do
    unit2 = Unit.new(20, 20)
    other_unit = Unit.new(0, 0)
    expect(unit2.attack!(other_unit)).to eq(false)

  end
end
