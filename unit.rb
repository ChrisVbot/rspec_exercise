require_relative 'barracks.rb'

class Unit 

attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(power)
    @health_points -= power
  end

  def attack!(enemy)
    if enemy.dead?
      return false
    else
      enemy.damage(@attack_power) 
    end
  end

  def dead?
    health_points <= 0 
  end

end
