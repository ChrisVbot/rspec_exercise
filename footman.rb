# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  def initialize
    super(60, 10)
  end

  def attack!(enemy)
    if enemy.is_a?(Barracks)
      power = attack_power / 2.0
      enemy.damage(power.ceil)
    else  
      super
    end
  end

end