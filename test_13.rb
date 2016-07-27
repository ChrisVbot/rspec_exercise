require_relative 'spec_helper'


describe SiegeEngine do

  before :each do 
    @siege_engine = SiegeEngine.new
    @barracks = Barracks.new
    end

  it "expects barracks lumber to go down by 60 when creating new siege engine" do
    @barracks.train_siege_engine
    expect(@barracks.lumber).to eq(440)
  end  

  it "expects barracks gold to go down by 200 when creating new siege engine" do
    @barracks.train_siege_engine
    expect(@barracks.gold).to eq(800)
  end  

  it "expects barracks food to go down by 3 when creating new siege engine" do
    @barracks.train_siege_engine
    expect(@barracks.food).to eq(77)
  end  
  
  it "expects barracks to be unable to train siege engine if less than 60 lumber" do 
    @barracks.instance_variable_set(:@lumber, 59)
    expect(@barracks.can_train_siege_engine?).to eq(false)
  end

  it "expects to do double AP damage vs barracks(100 damage total)" do
    @siege_engine.attack!(@barracks)
    expect(@barracks.health_points).to eq(400)
  end

  it "expects siege engine to be unable to attack other non-siege engine units" do
    peasant = Peasant.new
    expect(@siege_engine.attack!(peasant)).to eq(false)
    
  end

  it "expects siege engine to be able to attack other siege engine units" do
    engine2 = SiegeEngine.new
    @siege_engine.attack!(engine2)
    expect(engine2.health_points).to eq(350)
  end

end
