class Player
  attr_accessor :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end
end