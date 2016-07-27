
require_relative 'unit.rb'


class Barracks
  
  attr_reader :gold, :food, :health_points, :lumber
  
  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500

  end
  
  def can_train_footman?
    true if food >= 2 && gold >= 135
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
    true if food >= 5 && gold >= 90
  end

  def damage(power)
    @health_points -= power
  end

  def train_siege_engine
    unless !can_train_siege_engine?
      @lumber -= 60
      @gold -= 200
      @food -= 3
    end
  end

  def can_train_siege_engine?
    if gold >= 200 && lumber >= 60 && food >= 3
      true
    else
      false
    end
  end

end

