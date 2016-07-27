
require_relative 'unit.rb'


class Barracks
  
  attr_accessor :gold, :food
  
  def initialize
    @gold = 1000
    @food = 80
  end
  
  def can_train_footman?
    true if food > 2 && gold > 135
  end

  def train_footman
  unless !can_train_footman?
    @gold -= 135
    @food -= 2
    Footman.new
    end
  end

  def train_peasant
    unless !can_train_peasant?
    @gold -= 90
    @food -= 5
    Peasant.new
    end
  end

  def can_train_peasant?
    true if food > 5 && gold > 90
  end
end

