require_relative 'spec_helper'

# Checks if a barracks has health points and that Footman class does half its AP damage to a barracks.

describe Barracks do

  before :each do 
    @barracks = Barracks.new
    end

  it "has and knows its HP (health points)" do
    expect(@barracks.health_points).to eq(500)
  end  

  it "receives damage equal to half a Footman's AP(5)" do
    footman = Footman.new
    footman.attack!(@barracks)
    expect(@barracks.health_points).to eq(495)

  end
   

end
