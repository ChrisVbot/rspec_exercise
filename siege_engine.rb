

class SiegeEngine < Unit
  
  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if 
      enemy.is_a?(Barracks)
      power = attack_power * 2.0
      enemy.damage(power.ceil)
    elsif
      enemy.is_a?(Peasant || 
        Footman)
      return false
    else
      super
    end
  end

end