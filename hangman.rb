#!/usr/bin/env ruby

#Purpose of Program
puts "Welcome to hangman!" 
puts "You have ten guesses. Please guess a letter a-z."

def set_up_game
  word_bank = ["stephanie", "timothy"]
  @word = word_bank.sample
  @word_count = @word.length
  @guess_count = 10
  @count = 0
end

def print_lines
   @user_word || @user_word= @word.tr(@word, "_")
end

def check_guess(guess)
  @word.split(//).each_with_index do |char, index|
   if guess.downcase == char
     @user_word[index] = guess.downcase
   end
  end
end

def get_guess
  @guess = gets.chomp
  while !/[a-zA-Z]/.match(@guess)
    puts "Please enter a valid letter."
    @guess = gets.chomp
  end
  @guess
end

def play_turn
  puts print_lines
  get_guess  
  check_guess(@guess)
  @count += 1
    if @guess == @word
      puts "You win!"
      exit
    else
  puts "You've used #{@count} guess."
  puts "Please enter a letter a-z."
end
end

def play_game
  while @user_word != @word && @count < @guess_count
   play_turn
end
end

# def play_game
#   while @user_word != @word && @count < @guess_count
#    play_turn
#   end
# end

set_up_game
play_game

puts "Thanks for playing!"

# # while guess_count > 0
#   puts "you have #{guess_count} guesses remaining."
#   guess = gets.chomp
#   check_guess
#   print print_lines