require_relative 'question'

class Turn
  attr_accessor :current_player, :question

  def initialize(current_player, waiting_player, current_turn)
    @current_player = current_player
    @waiting_player = waiting_player
    @question = Question.new
    @current_turn = current_turn
  end

  def take_turn
    puts "#{current_player.name}: What does #{question.number1} plus #{question.number2} equal?"
    answer = gets.chomp.to_i
    if question.correct_answer?(answer)
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.lose_life
    end
    show_scores
  end

  private

  def show_scores
    if @current_turn.even?
      puts "#{current_player.name}: #{current_player.lives}/3 vs #{@waiting_player.name}: #{@waiting_player.lives}/3"
      puts "----- NEW TURN -----"
    else
      puts "#{@waiting_player.name}: #{@waiting_player.lives}/3 vs #{current_player.name}: #{current_player.lives}/3"
      puts "----- NEW TURN -----"
    end
  end
end