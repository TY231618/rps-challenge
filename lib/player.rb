class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = weapon
  end

  def player_weapon(weapon)
    @weapon = weapon.to_sym
  end

end
