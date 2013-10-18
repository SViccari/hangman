require 'pry'
#refactored ugly procedural code
#note to self: several methods need fewer responsibilities
# *****************

class Game
  attr_reader :word

  def initialize
    @word = Word.new.random_word
  end

  def introduction
    puts "Welcome to Hangman. Please guess a letter."
  end

  def set_initial_count
    @guess_max = 10
    @guess_count = 0
  end

  def play_game
    if @user_word != @word && @guess_count < @guess_max
      play_turn
    end
  end

  def play_turn
    puts print_lines
    player_guess
    validate_format
    check_guess(@guess)
    guesses_remaining
    lose?
    win?
  end

  def print_lines
    @user_word || @user_word = @word.tr(@word, "_")
  end

  def player_guess
    @guess = gets.chomp.downcase
  end

  def validate_format
    while !/[a-z]/.match(@guess)
      puts "Please guess a single letter (a-z) or the entire word."
      player_guess
    end
  end

  def check_guess(guess)
    @word.split(//).each_with_index do |char, index|
      if guess == char
        @user_word[index] = guess
        puts "Great! Keep going!"
      end
    end
  end

  def guesses_remaining
    if !@word.include?(@guess)
      @guess_count += 1
      puts "The letter #{@guess} is not in the word." + 
           "You have #{@guess_max - @guess_count} guesses remaining."
    end
  end

  def win?
     if @guess == @word
      puts "Wow. Great guess!"
      exit
    elsif @user_word == @word
      puts "Congratulations, you've guessed the word!"
      exit
    else
      play_turn
    end
  end

  def lose?
    if @guess_count == 10 
      puts loser_farewell
      exit
    end
  end

  def loser_farewell
    "I'm afraid you are out of guesses." +
    " The hidden word was '#{@word}'." + 
    " Want to play again?"
  end
end

# *****************
class Word
  attr_reader :word_bank
  def initialize
    @word_bank = [
      'refactor',
      'cappuccino',
      'agile',
      'stupendous',
      'jittery',
      'heroic']
  end

  def random_word
    @word = @word_bank.shuffle.sample
  end

  def length
    @word.length
  end
end

my_game = Game.new
my_game.introduction
my_game.set_initial_count
puts my_game.play_game


