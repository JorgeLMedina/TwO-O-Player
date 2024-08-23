require_relative 'game'
require_relative 'player'

bob = Player.new('Bob')
kelly = Player.new('Kelly')

game01 = MathGame.new(kelly, bob)

game01.play_game