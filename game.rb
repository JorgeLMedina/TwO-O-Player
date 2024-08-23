require_relative 'turn'

class MathGame
  attr_accessor :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = 0
  end

  def play_game
    while player1.is_alive? && player2.is_alive?
      Turn.new(current_player, waiting_player, @current_turn).take_turn
      @current_turn += 1
    end
    announce_winner
  end

  def current_player
    @current_turn.even? ? player1 : player2
  end

  def waiting_player
    @current_turn.even? ? player2 : player1
  end

  private

  def announce_winner
    winner = player1.is_alive? ? player1 : player2
    loser = winner == player1 ? player2 : player1
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end